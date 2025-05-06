package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_importkey_static_extension.T_importKey_static_extension) class T_importKey {
    public var _path : stdgo.GoString = "";
    public var _dir : stdgo.GoString = "";
    public function new(?_path:stdgo.GoString, ?_dir:stdgo.GoString) {
        if (_path != null) this._path = _path;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_importKey(_path, _dir);
    }
}
