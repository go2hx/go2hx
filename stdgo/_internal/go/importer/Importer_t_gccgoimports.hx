package stdgo._internal.go.importer;
@:structInit @:using(stdgo._internal.go.importer.Importer_t_gccgoimports_static_extension.T_gccgoimports_static_extension) class T_gccgoimports {
    public var _packages : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _importer : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer = (null : stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer);
    public var _lookup : stdgo._internal.go.importer.Importer_lookup.Lookup = (null : stdgo._internal.go.importer.Importer_lookup.Lookup);
    public function new(?_packages:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_importer:stdgo._internal.go.internal.gccgoimporter.Gccgoimporter_importer.Importer, ?_lookup:stdgo._internal.go.importer.Importer_lookup.Lookup) {
        if (_packages != null) this._packages = _packages;
        if (_importer != null) this._importer = _importer;
        if (_lookup != null) this._lookup = _lookup;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gccgoimports(_packages, _importer, _lookup);
    }
}
