package stdgo._internal.internal.fuzz;
@:structInit @:using(stdgo._internal.internal.fuzz.Fuzz_t_crasherror_static_extension.T_crashError_static_extension) class T_crashError {
    public var _path : stdgo.GoString = "";
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_path:stdgo.GoString, ?_err:stdgo.Error) {
        if (_path != null) this._path = _path;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_crashError(_path, _err);
    }
}
