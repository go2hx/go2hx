package stdgo._internal.go.types;
@:interface typedef ImporterFrom = stdgo.StructType & {
    /**
        * ImportFrom returns the imported package for the given import
        * path when imported by a package file located in dir.
        * If the import failed, besides returning an error, ImportFrom
        * is encouraged to cache and return a package anyway, if one
        * was created. This will reduce package inconsistencies and
        * follow-on type checker errors due to the missing package.
        * The mode value must be 0; it is reserved for future use.
        * Two calls to ImportFrom with the same path and dir must
        * return the same package.
        
        
    **/
    @:interfacetypeffun
    public dynamic function importFrom(_path:stdgo.GoString, _dir:stdgo.GoString, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
    public dynamic function import_(_0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
};
