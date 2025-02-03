package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.CertificateRequestInfo_static_extension) abstract CertificateRequestInfo(stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo) from stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo to stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo {
    public var acceptableCAs(get, set) : Array<Array<std.UInt>>;
    function get_acceptableCAs():Array<Array<std.UInt>> return [for (i in this.acceptableCAs) [for (i in i) i]];
    function set_acceptableCAs(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this.acceptableCAs = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var signatureSchemes(get, set) : Array<SignatureScheme>;
    function get_signatureSchemes():Array<SignatureScheme> return [for (i in this.signatureSchemes) i];
    function set_signatureSchemes(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this.signatureSchemes = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt16);
        return v;
    }
    public var _ctx(get, set) : stdgo._internal.context.Context_Context.Context;
    function get__ctx():stdgo._internal.context.Context_Context.Context return this._ctx;
    function set__ctx(v:stdgo._internal.context.Context_Context.Context):stdgo._internal.context.Context_Context.Context {
        this._ctx = v;
        return v;
    }
    public function new(?acceptableCAs:Array<Array<std.UInt>>, ?signatureSchemes:Array<SignatureScheme>, ?version:std.UInt, ?_ctx:stdgo._internal.context.Context_Context.Context) this = new stdgo._internal.crypto.tls.Tls_CertificateRequestInfo.CertificateRequestInfo(([for (i in acceptableCAs) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>), ([for (i in signatureSchemes) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), (version : stdgo.GoUInt16), _ctx);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
