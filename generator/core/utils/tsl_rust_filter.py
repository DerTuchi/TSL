import re
import math

def filter_ctype_rust(ctype):
   # Dictionary mapping C data types to Rust data types
   if 'const' in ctype:
       ctype = ctype.replace('const ', '')
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
    }
   return type_mapping.get(ctype, ctype)

def filter_reg_rust(return_type, ctype, element_count):
    if "Vec::base_type" in return_type:
        return ctype
    elif "Vec::register_type":
        return f"[{ctype};{element_count}]"
    else:
        return return_type

def filter_reg_cpp(ctype, size_in_bits, register_type):
    if  size_in_bits != 1 and "register_type" in register_type:
        result = f'__m{size_in_bits}'
        if "int" in ctype:
            result += 'i'
        elif 'double' == ctype:
            result += 'd'
        return result
    else:
        return ctype
    
def filter_element_count(ctype, size_in_bits) -> int:
    match = re.search(r'\d+', ctype)
    if match:
        number = int(match.group())
        return (int)(math.ceil(size_in_bits / number))
    else:
        return 0

def filter_implementation(text, replace_message):
    pattern = r'return (.*);'

    replacement = f'auto return_rs = \\1;\n\treturn {replace_message}(&return_rs);'
    changed_text = re.sub(pattern, replacement, text)
    return changed_text