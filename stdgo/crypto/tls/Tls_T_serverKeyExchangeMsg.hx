package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_serverKeyExchangeMsg_static_extension) abstract T_serverKeyExchangeMsg(stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg) from stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg to stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _key(get, set) : Array<std.UInt>;
    function get__key():Array<std.UInt> return [for (i in this._key) i];
    function set__key(v:Array<std.UInt>):Array<std.UInt> {
        this._key = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_key:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_serverKeyExchangeMsg.T_serverKeyExchangeMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _key) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
