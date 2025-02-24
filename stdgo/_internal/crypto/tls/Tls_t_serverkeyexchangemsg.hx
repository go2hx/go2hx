package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_serverkeyexchangemsg_static_extension.T_serverKeyExchangeMsg_static_extension) class T_serverKeyExchangeMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _key : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_key:stdgo.Slice<stdgo.GoUInt8>) {
        if (_raw != null) this._raw = _raw;
        if (_key != null) this._key = _key;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_serverKeyExchangeMsg(_raw, _key);
    }
}
