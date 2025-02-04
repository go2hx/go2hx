package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_newsessionticketmsgtls13_static_extension.T_newSessionTicketMsgTLS13_static_extension) class T_newSessionTicketMsgTLS13 {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _lifetime : stdgo.GoUInt32 = 0;
    public var _ageAdd : stdgo.GoUInt32 = 0;
    public var _nonce : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _label : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _maxEarlyData : stdgo.GoUInt32 = 0;
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_lifetime:stdgo.GoUInt32, ?_ageAdd:stdgo.GoUInt32, ?_nonce:stdgo.Slice<stdgo.GoUInt8>, ?_label:stdgo.Slice<stdgo.GoUInt8>, ?_maxEarlyData:stdgo.GoUInt32) {
        if (_raw != null) this._raw = _raw;
        if (_lifetime != null) this._lifetime = _lifetime;
        if (_ageAdd != null) this._ageAdd = _ageAdd;
        if (_nonce != null) this._nonce = _nonce;
        if (_label != null) this._label = _label;
        if (_maxEarlyData != null) this._maxEarlyData = _maxEarlyData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_newSessionTicketMsgTLS13(_raw, _lifetime, _ageAdd, _nonce, _label, _maxEarlyData);
    }
}
