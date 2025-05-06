package stdgo._internal.go.internal.gcimporter;
@:structInit @:using(stdgo._internal.go.internal.gcimporter.Gcimporter_t_ident_static_extension.T_ident_static_extension) class T_ident {
    public var _pkg : stdgo.Ref<stdgo._internal.go.types.Types_package.Package> = (null : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>);
    public var _name : stdgo.GoString = "";
    public function new(?_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, ?_name:stdgo.GoString) {
        if (_pkg != null) this._pkg = _pkg;
        if (_name != null) this._name = _name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ident(_pkg, _name);
    }
}
