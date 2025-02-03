package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateVerifyMsg_static_extension) abstract T_certificateVerifyMsg(stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg) from stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg to stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _hasSignatureAlgorithm(get, set) : Bool;
    function get__hasSignatureAlgorithm():Bool return this._hasSignatureAlgorithm;
    function set__hasSignatureAlgorithm(v:Bool):Bool {
        this._hasSignatureAlgorithm = v;
        return v;
    }
    public var _signatureAlgorithm(get, set) : SignatureScheme;
    function get__signatureAlgorithm():SignatureScheme return this._signatureAlgorithm;
    function set__signatureAlgorithm(v:SignatureScheme):SignatureScheme {
        this._signatureAlgorithm = v;
        return v;
    }
    public var _signature(get, set) : Array<std.UInt>;
    function get__signature():Array<std.UInt> return [for (i in this._signature) i];
    function set__signature(v:Array<std.UInt>):Array<std.UInt> {
        this._signature = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_hasSignatureAlgorithm:Bool, ?_signatureAlgorithm:SignatureScheme, ?_signature:Array<std.UInt>) this = new stdgo._internal.crypto.tls.Tls_T_certificateVerifyMsg.T_certificateVerifyMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _hasSignatureAlgorithm, _signatureAlgorithm, ([for (i in _signature) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
