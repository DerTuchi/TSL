import re

def ctype_filter_to_rust(value):
   # Dictionary mapping C data types to Rust data types
   if 'const' in value:
       value = value.replace('const ', '')
   type_mapping = {
        'uint8_t': 'u8',
        'int8_t': 'i8',
        'uint16_t': 'u16',
        'int16_t': 'i16',
        'unsigned int': 'u32',
        'uint32_t': 'u32',
        'int32_t': 'i32',
        'int': 'i32',
        'unsigned long': 'u64',
        'long': 'i64',
        'signed long': 'i64',
        'unsigned long long': 'u64',
        'long long': 'i64',
        'signed long long': 'i64',
        'uint64_t': 'u64',
        'int64_t': 'i64',
        'float': 'f32',
        'double': 'f64',
        'long double': 'f64',  # Note: Rust doesn't have a direct equivalent to C++'s long double
        'size_t': 'usize',
        'std::size_t': 'usize',
        'char': 'i8',  # Assuming signed char in C++
        'unsigned char': 'u8',
        'short': 'i16',
        'unsigned short': 'u16',
        'bool': 'bool',
        'std::string': 'String',  # Note: Requires handling conversion between C++ strings and Rust strings
        # Add more mappings as needed
    }
   return type_mapping.get(value)

def return_filter(return_type, ctype, element_count):
    if "Vec::base_type" in return_type:
        return ctype
    elif "Vec::register_type":
        return f"[{ctype};{element_count}]"
    else:
        return return_type

def reg_filter_to_rust(value):
    if "Vec::base_type" in value[1]:
        return value[0][0]
    elif "Vec::register_type" in value[1]:
        result = '__m'
        type_mapping = {
            'scalar': value[0][0],
            'sse': 128,
            'avx2': 256,
            'avx512': 512
        }
        if type_mapping.get(value[0][1]) == value[0][0]:
            return value[0][0]
        else:
            result += (str)(type_mapping.get(value[0][1]))
            if value[0][0][0] == 'i' or value[0][0][0] == 'u':
                result += 'i'
            if 'f64' in value[0][0]:
                result += 'd'
        return result
    else:
        return ctype_filter_to_rust(value[1])
    
def filter_element_count(value) -> int:
    match = re.search(r'\d+', value[0])
    if match:
        number = int(match.group())
        dict = {
            'scalar': number,
            'sse': 128,
            'avx2': 256,
            'avx512': 512
        }
        return (int)(dict.get(value[1]) / number)
    else:
        raise ValueError("Smth went wrong")

def filter_implementation(value):
    text = value[0]
    replace_message = value[1]

    pattern = r'return (.*);'

    replacement = f'auto return_rs = \\1;\n\treturn {replace_message}(&return_rs);'
    return re.sub(pattern, replacement, text)


