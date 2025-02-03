package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateRequestMsg_static_extension) abstract T_certificateRequestMsg(stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg) from stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg to stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg {
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
    public var _certificateTypes(get, set) : Array<std.UInt>;
    function get__certificateTypes():Array<std.UInt> return [for (i in this._certificateTypes) i];
    function set__certificateTypes(v:Array<std.UInt>):Array<std.UInt> {
        this._certificateTypes = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _supportedSignatureAlgorithms(get, set) : Array<SignatureScheme>;
    function get__supportedSignatureAlgorithms():Array<SignatureScheme> return [for (i in this._supportedSignatureAlgorithms) i];
    function set__supportedSignatureAlgorithms(v:Array<SignatureScheme>):Array<SignatureScheme> {
        this._supportedSignatureAlgorithms = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>);
        return v;
    }
    public var _certificateAuthorities(get, set) : Array<Array<std.UInt>>;
    function get__certificateAuthorities():Array<Array<std.UInt>> return [for (i in this._certificateAuthorities) [for (i in i) i]];
    function set__certificateAuthorities(v:Array<Array<std.UInt>>):Array<Array<std.UInt>> {
        this._certificateAuthorities = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public function new(?_raw:Array<std.UInt>, ?_hasSignatureAlgorithm:Bool, ?_certificateTypes:Array<std.UInt>, ?_supportedSignatureAlgorithms:Array<SignatureScheme>, ?_certificateAuthorities:Array<Array<std.UInt>>) this = new stdgo._internal.crypto.tls.Tls_T_certificateRequestMsg.T_certificateRequestMsg(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _hasSignatureAlgorithm, ([for (i in _certificateTypes) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _supportedSignatureAlgorithms) i] : stdgo.Slice<stdgo._internal.crypto.tls.Tls_SignatureScheme.SignatureScheme>), ([for (i in _certificateAuthorities) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
