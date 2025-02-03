package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_crashError_static_extension) abstract T_crashError(stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError) from stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError to stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError {
    public var _path(get, set) : String;
    function get__path():String return this._path;
    function set__path(v:String):String {
        this._path = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_path:String, ?_err:stdgo.Error) this = new stdgo._internal.internal.fuzz.Fuzz_T_crashError.T_crashError((_path : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
