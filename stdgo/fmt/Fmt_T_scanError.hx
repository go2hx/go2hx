package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_scanError_static_extension) abstract T_scanError(stdgo._internal.fmt.Fmt_T_scanError.T_scanError) from stdgo._internal.fmt.Fmt_T_scanError.T_scanError to stdgo._internal.fmt.Fmt_T_scanError.T_scanError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.fmt.Fmt_T_scanError.T_scanError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
