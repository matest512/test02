{
const ArrayPrototypeJoin = Array.prototype.join;
const MapPrototypeGet = Map.prototype.get;
const MapPrototypeHas = Map.prototype.has;
const MapPrototypeSet = Map.prototype.set;
const ObjectDefineProperty = Object.defineProperty;
const ReflectApply = Reflect.apply;
const StringPrototypeIndexOf = String.prototype.indexOf;
const StringPrototypeLastIndexOf = String.prototype.lastIndexOf;
const StringPrototypeStartsWith = String.prototype.startsWith;
const StringPrototypeSubstring = String.prototype.substring;
const ReflectLoader = new class {
    constructor() {
        this.registry = new Map();
        this.modulePaths = new Map();
        this.loadPath = getModuleLoadPath();
    }
    resolve(name, module) {
        if (os.path.isAbsolute(name))
            return name;
        let loadPath = this.loadPath;
        if (module) {
            let isRelative = ReflectApply(StringPrototypeStartsWith, name, ["./"])
                          || ReflectApply(StringPrototypeStartsWith, name, ["../"])
                             ;
            if (isRelative && ReflectApply(MapPrototypeHas, this.modulePaths, [module])) {
                let modulePath = ReflectApply(MapPrototypeGet, this.modulePaths, [module]);
                let sepIndex = ReflectApply(StringPrototypeLastIndexOf, modulePath, ["/"]);
                if (sepIndex >= 0)
                    loadPath = ReflectApply(StringPrototypeSubstring, modulePath, [0, sepIndex]);
            }
        }
        return os.path.join(loadPath, name);
    }
    normalize(path) {
        const pathsep =
        "/";
        let n = 0;
        let components = [];
        let lastSep = 0;
        while (lastSep < path.length) {
            let i = ReflectApply(StringPrototypeIndexOf, path, [pathsep, lastSep]);
            if (i < 0)
                i = path.length;
            let part = ReflectApply(StringPrototypeSubstring, path, [lastSep, i]);
            lastSep = i + 1;
            if (part === "." && n > 0)
                continue;
            if (part === ".." && n > 0) {
                if (components[n - 1] === ".") {
                    components[n - 1] = "..";
                    continue;
                }
                if (components[n - 1] !== "" && components[n - 1] !== "..") {
                    components.length = --n;
                    continue;
                }
            }
            ObjectDefineProperty(components, n++, {
                __proto__: null,
                value: part,
                writable: true, enumerable: true, configurable: true
            });
        }
        let normalized = ReflectApply(ArrayPrototypeJoin, components, [pathsep]);
        return normalized;
    }
    fetch(path) {
        return os.file.readFile(path);
    }
    loadAndParse(path) {
        let normalized = this.normalize(path);
        if (ReflectApply(MapPrototypeHas, this.registry, [normalized]))
            return ReflectApply(MapPrototypeGet, this.registry, [normalized]);
        let source = this.fetch(path);
        let module = parseModule(source, path);
        ReflectApply(MapPrototypeSet, this.registry, [normalized, module]);
        ReflectApply(MapPrototypeSet, this.modulePaths, [module, path]);
        return module;
    }
    loadAndExecute(path) {
        let module = this.loadAndParse(path);
        module.declarationInstantiation();
        return module.evaluation();
    }
    importRoot(path) {
        return this.loadAndExecute(path);
    }
    ["import"](name, referrer) {
        let path = this.resolve(name, null);
        return this.loadAndExecute(path);
    }
};
setModuleResolveHook((module, requestName) => {
    let path = ReflectLoader.resolve(requestName, module);
    return ReflectLoader.loadAndParse(path);
});
Reflect.Loader = ReflectLoader;
}