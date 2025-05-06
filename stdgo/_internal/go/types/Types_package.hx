package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_package_static_extension.Package_static_extension) class Package {
    public var _path : stdgo.GoString = "";
    public var _name : stdgo.GoString = "";
    public var _scope : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> = (null : stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>);
    public var _imports : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>);
    public var _complete : Bool = false;
    public var _fake : Bool = false;
    public var _cgo : Bool = false;
    public var _goVersion : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_name:stdgo.GoString, ?_scope:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>, ?_imports:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>, ?_complete:Bool, ?_fake:Bool, ?_cgo:Bool, ?_goVersion:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_name != null) this._name = _name;
        if (_scope != null) this._scope = _scope;
        if (_imports != null) this._imports = _imports;
        if (_complete != null) this._complete = _complete;
        if (_fake != null) this._fake = _fake;
        if (_cgo != null) this._cgo = _cgo;
        if (_goVersion != null) this._goVersion = _goVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Package(_path, _name, _scope, _imports, _complete, _fake, _cgo, _goVersion);
    }
}
