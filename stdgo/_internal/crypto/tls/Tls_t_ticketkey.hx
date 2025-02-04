package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_ticketkey_static_extension.T_ticketKey_static_extension) class T_ticketKey {
    public var _aesKey : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var _hmacKey : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var _created : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public function new(?_aesKey:stdgo.GoArray<stdgo.GoUInt8>, ?_hmacKey:stdgo.GoArray<stdgo.GoUInt8>, ?_created:stdgo._internal.time.Time_time.Time) {
        if (_aesKey != null) this._aesKey = _aesKey;
        if (_hmacKey != null) this._hmacKey = _hmacKey;
        if (_created != null) this._created = _created;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ticketKey(_aesKey, _hmacKey, _created);
    }
}
