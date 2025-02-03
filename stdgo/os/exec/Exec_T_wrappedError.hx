package stdgo.os.exec;
@:structInit @:using(stdgo.os.exec.Exec.T_wrappedError_static_extension) abstract T_wrappedError(stdgo._internal.os.exec.Exec_T_wrappedError.T_wrappedError) from stdgo._internal.os.exec.Exec_T_wrappedError.T_wrappedError to stdgo._internal.os.exec.Exec_T_wrappedError.T_wrappedError {
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_prefix:String, ?_err:stdgo.Error) this = new stdgo._internal.os.exec.Exec_T_wrappedError.T_wrappedError((_prefix : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
