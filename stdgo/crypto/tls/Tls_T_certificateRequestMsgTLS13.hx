package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateRequestMsgTLS13_static_extension) abstract T_certificateRequestMsgTLS13(stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13) from stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13 to stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13 {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _ocspStapling(get, set) : Bool;
    function get__ocspStapling():Bool return this._ocspStapling;
    function set__ocspStapling(v:Bool):Bool {
        this._ocspStapling = v;
        return v;
    }
    public var _scts(get, set) : Bool;
    function get__scts():Bool return this._scts;
    function set__scts(v:Bool):Bool {
        this._scts = v;
        return v;
    }
    public var _supportedSignatureAlgorithms(get, set) : Array<SignatureScheme>;
    function get__supportedSignatureAlgorithms():Array<SignatureScheme> return [for (i in this._supportedSignatureAlgorithms) i];
    function set__supportedSignatureAlgorithms(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this._supportedSignatureAlgorithms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var _supportedSignatureAlgorithmsCert(get, set) : Array<SignatureScheme>;
    function get__supportedSignatureAlgorithmsCert():Array<SignatureScheme> return [for (i in this._supportedSignatureAlgorithmsCert) i];
    function set__supportedSignatureAlgorithmsCert(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this._supportedSignatureAlgorithmsCert = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var _certificateAuthorities(get, set) : Array<Array<std.UInt>>;
    function get__certificateAuthorities():Array<Array<std.UInt>> return [for (i in this._certificateAuthorities) [for (i in i) i]];
    function set__certificateAuthorities(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._certificateAuthorities = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_ocspStapling:Bool, ?_scts:Bool, ?_supportedSignatureAlgorithms:Array<SignatureScheme>, ?_supportedSignatureAlgorithmsCert:Array<SignatureScheme>, ?_certificateAuthorities:Array<Array<std.UInt>>) this = new stdgo._internal.crypto.tls.Tls_T_certificateRequestMsgTLS13.T_certificateRequestMsgTLS13(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _ocspStapling, _scts, ([for (i in _supportedSignatureAlgorithms) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), ([for (i in _supportedSignatureAlgorithmsCert) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), ([for (i in _certificateAuthorities) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
