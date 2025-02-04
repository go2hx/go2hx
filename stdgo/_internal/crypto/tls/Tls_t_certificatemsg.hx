package stdgo._internal.crypto.tls;
@:structInit @:using(stdgo._internal.crypto.tls.Tls_t_certificatemsg_static_extension.T_certificateMsg_static_extension) class T_certificateMsg {
    public var _raw : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _certificates : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    public function new(?_raw:stdgo.Slice<stdgo.GoUInt8>, ?_certificates:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>) {
        if (_raw != null) this._raw = _raw;
        if (_certificates != null) this._certificates = _certificates;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_certificateMsg(_raw, _certificates);
    }
}
