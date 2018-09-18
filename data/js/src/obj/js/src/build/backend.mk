# THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.

DEFINES += -DNDEBUG=1 -DTRIMMED=1
DIST_INSTALL := 1
COMPUTED_LDFLAGS += -lpthread -Wl,-z,noexecstack -Wl,-z,text -Wl,-z,relro -Wl,--build-id -Wl,-version-script,symverscript -Wl,-rpath-link,/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/bin -Wl,-rpath-link,/usr/local/lib
LIBRARY_NAME := js
FORCE_SHARED_LIB := 1
IMPORT_LIBRARY := libmozjs-60.so
SHARED_LIBRARY := libmozjs-60.so
DSO_SONAME := libmozjs-60.so
STATIC_LIBS += $(DEPTH)/js/src/libjs_src.a
STATIC_LIBS += $(DEPTH)/modules/fdlibm/src/libmodules_fdlibm_src.a
STATIC_LIBS += $(DEPTH)/config/external/icu/libicu.a
STATIC_LIBS += $(DEPTH)/config/external/nspr/libnspr.a
STATIC_LIBS += $(DEPTH)/config/external/zlib/libzlib.a
OS_LIBS += -lm
OS_LIBS += -ldl
FORCE_STATIC_LIB := 1
REAL_LIBRARY := libjs_static.a
NO_EXPAND_LIBS := 1
DEFINES += -DMOZ_HAS_MOZGLUE
COMPUTED_CXXFLAGS += -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/system_wrappers -include /home/hf/Desktop/nnnnn/test/data/config/gcc_hidden.h -DNDEBUG=1 -DTRIMMED=1 -DMOZ_HAS_MOZGLUE -I/home/hf/Desktop/nnnnn/test/data/js/src/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -DMOZILLA_CLIENT -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_CXX_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_C_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_CFLAGS += -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/system_wrappers -include /home/hf/Desktop/nnnnn/test/data/config/gcc_hidden.h -DNDEBUG=1 -DTRIMMED=1 -DMOZ_HAS_MOZGLUE -I/home/hf/Desktop/nnnnn/test/data/js/src/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -DMOZILLA_CLIENT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
