package stdgo.encoding.base64;
@:structInit @:using(stdgo.encoding.base64.Base64.T_nextRead_static_extension) abstract T_nextRead(stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead) from stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead to stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead {
    public var _n(get, set) : StdTypes.Int;
    function get__n():StdTypes.Int return this._n;
    function set__n(v:StdTypes.Int):StdTypes.Int {
        this._n = (v : stdgo.GoInt);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_n:StdTypes.Int, ?_err:stdgo.Error) this = new stdgo._internal.encoding.base64.Base64_T_nextRead.T_nextRead((_n : stdgo.GoInt), (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
