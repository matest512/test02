#define MOZ_UNIFIED_BUILD
#include "/home/hf/Desktop/nnnnn/test/data/js/src/wasm/WasmValidate.cpp"
#ifdef PL_ARENA_CONST_ALIGN_MASK
#error "/home/hf/Desktop/nnnnn/test/data/js/src/wasm/WasmValidate.cpp uses PL_ARENA_CONST_ALIGN_MASK, so it cannot be built in unified mode."
#undef PL_ARENA_CONST_ALIGN_MASK
#endif
#ifdef INITGUID
#error "/home/hf/Desktop/nnnnn/test/data/js/src/wasm/WasmValidate.cpp defines INITGUID, so it cannot be built in unified mode."
#undef INITGUID
#endif