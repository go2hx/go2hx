package stdgo._internal.go.types;
@:interface typedef Importer = stdgo.StructType & {
    /**
        * Import returns the imported package for the given import path.
        * The semantics is like for ImporterFrom.ImportFrom except that
        * dir and mode are ignored (since they are not present).
        
        
    **/
    @:interfacetypeffun
    public dynamic function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
};
