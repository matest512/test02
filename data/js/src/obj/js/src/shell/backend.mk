# THIS FILE WAS AUTOMATICALLY GENERATED. DO NOT EDIT.

DEFINES += -DNDEBUG=1 -DTRIMMED=1 -DMOZ_HAS_MOZGLUE -DEXPORT_JS_API -DENABLE_SHARED_ARRAY_BUFFER -Dtopsrcdir=/home/hf/Desktop/nnnnn/test/data/js/src
export:: shellmoduleloader.out.h
GARBAGE += shellmoduleloader.out.h
shellmoduleloader.js: shellmoduleloader.out.h ;
GARBAGE += shellmoduleloader.js
EXTRA_MDDEPEND_FILES += shellmoduleloader.out.h.pp
shellmoduleloader.out.h: /home/hf/Desktop/nnnnn/test/data/js/src/builtin/embedjs.py $(topsrcdir)/js/src/js.msg $(srcdir)/ModuleLoader.js
	$(REPORT_BUILD)
	$(call py_action,file_generate,/home/hf/Desktop/nnnnn/test/data/js/src/builtin/embedjs.py generate_shellmoduleloader shellmoduleloader.out.h $(MDDEPDIR)/shellmoduleloader.out.h.pp $(topsrcdir)/js/src/js.msg $(srcdir)/ModuleLoader.js)

LOCAL_INCLUDES += -I$(topobjdir)/js/src
LOCAL_INCLUDES += -I$(topsrcdir)/js/src

# We build files in 'unified' mode by including several files
# together into a single source file.  This cuts down on
# compilation times and debug information size.
UNIFIED_CPPSRCS := Unified_cpp_js_src_shell0.cpp
CPPSRCS += $(UNIFIED_CPPSRCS)
DIST_FILES_0 += $(srcdir)/js-gdb.py.in
DIST_FILES_0_PATH := $(DEPTH)/dist/bin/
DIST_FILES_0_TARGET := misc
PP_TARGETS += DIST_FILES_0
OBJDIR_0_FILES += js
OBJDIR_0_DEST := $(topobjdir)/js/src
OBJDIR_0_TARGET := misc
INSTALL_TARGETS += OBJDIR_0
OBJDIR_1_FILES += $(DEPTH)/dist/bin/js-gdb.py
OBJDIR_1_DEST := $(topobjdir)/js/src/shell
OBJDIR_1_TARGET := misc
INSTALL_TARGETS += OBJDIR_1
COMPUTED_LDFLAGS += -lpthread -Wl,-z,noexecstack -Wl,-z,text -Wl,-z,relro -Wl,--build-id -rdynamic -Wl,-rpath-link,/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/bin -Wl,-rpath-link,/usr/local/lib
COMPUTED_CXXFLAGS += -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/system_wrappers -include /home/hf/Desktop/nnnnn/test/data/config/gcc_hidden.h -DNDEBUG=1 -DTRIMMED=1 -DMOZ_HAS_MOZGLUE -DEXPORT_JS_API -DENABLE_SHARED_ARRAY_BUFFER -Dtopsrcdir=/home/hf/Desktop/nnnnn/test/data/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src/shell -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/shell -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -DMOZILLA_CLIENT -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer -Wno-shadow -Werror=format
COMPUTED_CXX_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Woverloaded-virtual -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wwrite-strings -Wno-invalid-offsetof -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -fno-sized-deallocation -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -fno-rtti -ffunction-sections -fdata-sections -fno-exceptions -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_C_LDFLAGS += -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
COMPUTED_CFLAGS += -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/system_wrappers -include /home/hf/Desktop/nnnnn/test/data/config/gcc_hidden.h -DNDEBUG=1 -DTRIMMED=1 -DMOZ_HAS_MOZGLUE -DEXPORT_JS_API -DENABLE_SHARED_ARRAY_BUFFER -Dtopsrcdir=/home/hf/Desktop/nnnnn/test/data/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src/shell -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/shell -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src -I/home/hf/Desktop/nnnnn/test/data/js/src/obj/dist/include -fPIC -include /home/hf/Desktop/nnnnn/test/data/js/src/obj/js/src/js-confdefs.h -DMOZILLA_CLIENT -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -Wall -Wempty-body -Wignored-qualifiers -Wpointer-arith -Wsign-compare -Wtype-limits -Wunreachable-code -Wno-error=maybe-uninitialized -Wno-error=deprecated-declarations -Wno-error=array-bounds -Wno-error=free-nonheap-object -Wformat -Wformat-security -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=2 -ffunction-sections -fdata-sections -fno-math-errno -pthread -pipe -g -freorder-blocks -O3 -fomit-frame-pointer
PROGRAM = js
STATIC_LIBS += $(DEPTH)/mozglue/build/libmozglue.a
STATIC_LIBS += $(DEPTH)/js/src/editline/libeditline.a
STATIC_LIBS += $(DEPTH)/js/src/build/libjs_static.a
OS_LIBS += -lm
OS_LIBS += -ldl
