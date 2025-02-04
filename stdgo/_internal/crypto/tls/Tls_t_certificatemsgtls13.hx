package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificatemsgtls13_static_extension.T_certificateMsgTLS13_static_extension) class T_certificateMsgTLS13 {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _certificate : stdgo._internal.crypto.tls.Tls_certificate.Certificate = ({} : stdgo._internal.crypto.tls.Tls_certificate.Certificate);
    public var _ocspStapling : Bool = false;
    public var _scts : Bool = false;
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_certificate:stdgo._internal.crypto.tls.Tls_certificate.Certificate, ?_ocspStapling:Bool, ?_scts:Bool) {
        if (_raw != null) this._raw = _raw;
        if (_certificate != null) this._certificate = _certificate;
        if (_ocspStapling != null) this._ocspStapling = _ocspStapling;
        if (_scts != null) this._scts = _scts;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateMsgTLS13(_raw, _certificate, _ocspStapling, _scts);
    }
}
