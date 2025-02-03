package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_gobError_static_extension) abstract T_gobError(stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError) from stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError to stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.encoding.gob.Gob_T_gobError.T_gobError((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
