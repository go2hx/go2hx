package stdgo._internal.go.importer;
@:structInit @:using(stdgo._internal.go.importer.Importer_t_gcimports_static_extension.T_gcimports_static_extension) class T_gcimports {
    public var _fset : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
    public var _packages : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _lookup : stdgo._internal.go.importer.Importer_lookup.Lookup = (null : stdgo._internal.go.importer.Importer_lookup.Lookup);
    public function new(?_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, ?_packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_lookup:stdgo._internal.go.importer.Importer_lookup.Lookup) {
        if (_fset != null) this._fset = _fset;
        if (_packages != null) this._packages = _packages;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gcimports(_fset, _packages, _lookup);
    }
}
