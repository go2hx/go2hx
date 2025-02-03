package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_wrapError_static_extension) abstract T_wrapError(stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError) from stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError to stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError {
    public var _msg(get, set) : String;
    function get__msg():String return this._msg;
    function set__msg(v:String):String {
        this._msg = (v : stdgo.GoString);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_msg:String, ?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError((_msg : stdgo.GoString), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
