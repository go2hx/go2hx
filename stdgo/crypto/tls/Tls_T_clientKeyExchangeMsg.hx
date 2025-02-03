package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_clientKeyExchangeMsg_static_extension) abstract T_clientKeyExchangeMsg(stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg) from stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg to stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ciphertext(get, set) : Array<std.UInt>;
    function get__ciphertext():Array<std.UInt> return [for (i in this._ciphertext) i];
    function set__ciphertext(v:Array<std.UInt>):Array<std.UInt> {
        this._ciphertext = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_ciphertext:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_clientKeyExchangeMsg.T_clientKeyExchangeMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _ciphertext) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
