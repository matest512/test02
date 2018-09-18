js/src/shell/export: js/src/export
js/src/jsapi-tests/export: js/src/export
js/src/build/export: js/src/export
js/src/tests/export: js/src/export
recurse_export: config/export js/src/export js/src/shell/export js/src/jsapi-tests/export js/src/tests/export js/src/build/export memory/build/export mozglue/build/export
js/src/shell/libs: js/src/libs
mozglue/build/libs: memory/build/libs
js/src/jsapi-tests/libs: js/src/shell/libs
js/src/build/libs: js/src/tests/libs
memory/build/libs: js/src/build/libs
js/src/tests/libs: js/src/jsapi-tests/libs
js/src/libs: config/libs
recurse_libs: mozglue/build/libs
recurse_misc: js/src/shell/misc js/src/jsapi-tests/misc js/src/gdb/misc
recurse_tools:
js/src/check:
config/check:
js/src/build/check: js/src/check
recurse_check: config/check js/src/check js/src/build/check
recurse_compile: mfbt/target js/src/target js/src/editline/target modules/fdlibm/src/target config/external/nspr/target modules/zlib/target memory/build/target memory/mozalloc/target mozglue/misc/target config/external/icu/common/target config/external/icu/data/target config/external/icu/i18n/target config/host mfbt/tests/target js/src/shell/target js/src/jsapi-tests/target js/src/gdb/target
config/external/icu/target: config/external/icu/data/target config/external/icu/common/target config/external/icu/i18n/target
config/external/zlib/target: modules/zlib/target
js/src/build/target: modules/fdlibm/src/target config/external/nspr/target config/external/icu/target config/external/zlib/target js/src/target
js/src/gdb/target: js/src/build/target mozglue/build/target
js/src/jsapi-tests/target: js/src/build/target mozglue/build/target
js/src/shell/target: js/src/build/target js/src/editline/target mozglue/build/target
mfbt/tests/target: mfbt/target
mozglue/build/target: memory/mozalloc/target mozglue/misc/target mfbt/target memory/build/target
