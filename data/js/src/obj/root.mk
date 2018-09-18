export_dirs := config js/src js/src/shell js/src/jsapi-tests js/src/tests js/src/build memory/build mozglue/build
libs_dirs := config js/src js/src/shell js/src/jsapi-tests js/src/tests js/src/build memory/build mozglue/build
misc_dirs := js/src/shell js/src/jsapi-tests js/src/gdb
tools_dirs := 
check_dirs :=  config js/src js/src/build
compile_targets := config/external/icu/common/target config/external/icu/data/target config/external/icu/i18n/target config/external/icu/target config/external/nspr/target config/external/zlib/target config/host js/src/build/target js/src/editline/target js/src/gdb/target js/src/jsapi-tests/target js/src/shell/target js/src/target memory/build/target memory/mozalloc/target mfbt/target mfbt/tests/target modules/fdlibm/src/target modules/zlib/target mozglue/build/target mozglue/misc/target
syms_targets := js/src/build/syms js/src/gdb/syms js/src/jsapi-tests/syms js/src/shell/syms mfbt/tests/syms
include root-deps.mk
