package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_encryptedextensionsmsg_static_extension.T_encryptedExtensionsMsg_static_extension) class T_encryptedExtensionsMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _alpnProtocol : stdgo.GoString = "";
    public var _quicTransportParameters : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _earlyData : Bool = false;
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_alpnProtocol:stdgo.GoString, ?_quicTransportParameters:stdgo.Slice<stdgo.GoUInt8>, ?_earlyData:Bool) {
        if (_raw != null) this._raw = _raw;
        if (_alpnProtocol != null) this._alpnProtocol = _alpnProtocol;
        if (_quicTransportParameters != null) this._quicTransportParameters = _quicTransportParameters;
        if (_earlyData != null) this._earlyData = _earlyData;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encryptedExtensionsMsg(_raw, _alpnProtocol, _quicTransportParameters, _earlyData);
    }
}
