# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.22
cmake_policy(SET CMP0009 NEW)

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/config/*.template")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/definition_macro_helper_oneAPI.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/doxygen_file.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/doxygen_function.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/extension.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/extension_helper.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/header_file.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/license.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/primitive_declaration.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/primitive_declaration_temp.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/primitive_definition.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/core/source_file.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/cmake.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/cmake_lib.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/primitive_benchmark.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/primitive_table.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/readme_md_primitive_data_files.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/summary_html.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/expansions/unit_test.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/rust/extension.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/rust/header_file.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/rust/module.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/rust/primitive_declaration.template"
  "/home/dertuchi/TSL/generator/config/generator/tsl_templates/rust/primitive_definition.template"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/config/*.yaml")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/config/default_conf.yaml"
  "/home/dertuchi/TSL/generator/config/default_conf_rust.yaml"
  "/home/dertuchi/TSL/generator/config/generator/tsl_generator_schema.yaml"
  "/home/dertuchi/TSL/generator/config/log_conf.yaml"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/core/*.py")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/core/__init__.py"
  "/home/dertuchi/TSL/generator/core/ctrl/__init__.py"
  "/home/dertuchi/TSL/generator/core/ctrl/tsl_dependencies.py"
  "/home/dertuchi/TSL/generator/core/ctrl/tsl_lib.py"
  "/home/dertuchi/TSL/generator/core/ctrl/tsl_libfile_generator.py"
  "/home/dertuchi/TSL/generator/core/ctrl/tsl_slicer.py"
  "/home/dertuchi/TSL/generator/core/model/__init__.py"
  "/home/dertuchi/TSL/generator/core/model/tsl_extension.py"
  "/home/dertuchi/TSL/generator/core/model/tsl_file.py"
  "/home/dertuchi/TSL/generator/core/model/tsl_primitive.py"
  "/home/dertuchi/TSL/generator/core/tsl_config.py"
  "/home/dertuchi/TSL/generator/core/tsl_generator.py"
  "/home/dertuchi/TSL/generator/core/utils/__init__.py"
  "/home/dertuchi/TSL/generator/core/utils/tsl_misc.py"
  "/home/dertuchi/TSL/generator/core/utils/tsl_type_mappings.py"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/expansions/*.py")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/expansions/__init__.py"
  "/home/dertuchi/TSL/generator/expansions/tsl_cmake.py"
  "/home/dertuchi/TSL/generator/expansions/tsl_readme_md.py"
  "/home/dertuchi/TSL/generator/expansions/tsl_translation_unit.py"
  "/home/dertuchi/TSL/generator/expansions/tsl_unit_test.py"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/static_files/*.yaml")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/static_files/core/simd/simd_primitive_concepts.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/simd/simd_type.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/simd/simd_type_concepts.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/tsl_static.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/tslintrin.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/utils/functional.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/utils/preprocessor.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/utils/runtime.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/utils/type_concepts.yaml"
  "/home/dertuchi/TSL/generator/static_files/core/utils/type_helper.yaml"
  "/home/dertuchi/TSL/generator/static_files/expansions/tests/test_functions.yaml"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/generator/utils/*.py")
set(OLD_GLOB
  "/home/dertuchi/TSL/generator/utils/__init__.py"
  "/home/dertuchi/TSL/generator/utils/dict_utils.py"
  "/home/dertuchi/TSL/generator/utils/file_template.py"
  "/home/dertuchi/TSL/generator/utils/file_utils.py"
  "/home/dertuchi/TSL/generator/utils/git_utils.py"
  "/home/dertuchi/TSL/generator/utils/log_utils.py"
  "/home/dertuchi/TSL/generator/utils/requirement.py"
  "/home/dertuchi/TSL/generator/utils/yaml_schema.py"
  "/home/dertuchi/TSL/generator/utils/yaml_utils.py"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/primitive_data/extensions/*.yaml")
set(OLD_GLOB
  "/home/dertuchi/TSL/primitive_data/extensions/scalar.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/arm/neon.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/intel/avx2.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/intel/avx512.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/intel/fpga_generic.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/intel/fpga_native.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simd/intel/sse.yaml"
  "/home/dertuchi/TSL/primitive_data/extensions/simt/cuda.yaml"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()

# TSL_GENERATOR_SOURCES at tsl.cmake:77 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/home/dertuchi/TSL/primitive_data/primitives/*.yaml")
set(OLD_GLOB
  "/home/dertuchi/TSL/primitive_data/primitives/binary.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/calc.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/compare.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/complex.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/convert.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/io.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/ls.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/mask.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/mask_ls.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/memory.yaml"
  "/home/dertuchi/TSL/primitive_data/primitives/misc.yaml"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/home/dertuchi/TSL/generated_tsl/CMakeFiles/cmake.verify_globs")
endif()