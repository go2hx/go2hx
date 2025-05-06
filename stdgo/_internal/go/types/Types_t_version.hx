package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_version_static_extension.T_version_static_extension) class T_version {
    public var _major : stdgo.GoInt = 0;
    public var _minor : stdgo.GoInt = 0;
    public function new(?_major:stdgo.GoInt, ?_minor:stdgo.GoInt) {
        if (_major != null) this._major = _major;
        if (_minor != null) this._minor = _minor;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_version(_major, _minor);
    }
}
