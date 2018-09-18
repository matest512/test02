# THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.

DEFINES += -DNDEBUG=1 -DTRIMMED=1 -D_GNU_SOURCE -DIMPL_MFBT
LOCAL_INCLUDES += -I$(topobjdir)/xpcom
LOCAL_INCLUDES += -I$(topsrcdir)/memory/build
CPPSRCS += mozalloc_abort.cpp

# We build files in 'unified' mode by including several files
# together into a single source file.  This cuts down on
# compilation times and debug information size.
UNIFIED_CPPSRCS := Unified_cpp_memory_mozalloc0.cpp
CPPSRCS += $(UNIFIED_CPPSRCS)
DIST_INSTALL := 1
COMPUTED_LDFLAGS += -lpthread -Wl,-z,noexecstack -Wl,-z,text -Wl,-z,relro -Wl,--build-id -Wl,-rpath-link,/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/bin -Wl,-rpath-link,/usr/local/lib
LIBRARY_NAME := memory_mozalloc
FORCE_STATIC_LIB := 1
REAL_LIBRARY := libmemory_mozalloc.a
DEFINES += -DMOZ_HAS_MOZGLUE
COMPUTED_CXXFLAGS += -DNDEBUG=1 -DTRIMMED=1 -D_GNU_SOURCE -DIMPL_MFBT -DMOZ_HAS_MOZGLUE -I/home/hf/Desktop/nnnnn/test/data/memory/mozalloc -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/memory/mozalloc -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/xpcom -I/home/hf/Desktop/nnnnn/test/data/memory/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -DMOZILLA_CLIENT -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_CXX_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_C_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_CFLAGS += -DNDEBUG=1 -DTRIMMED=1 -D_GNU_SOURCE -DIMPL_MFBT -DMOZ_HAS_MOZGLUE -I/home/hf/Desktop/nnnnn/test/data/memory/mozalloc -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/memory/mozalloc -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/xpcom -I/home/hf/Desktop/nnnnn/test/data/memory/build -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -DMOZILLA_CLIENT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
