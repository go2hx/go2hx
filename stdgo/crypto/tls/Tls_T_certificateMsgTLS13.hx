package stdgo.crypto.tls;
@:structInit @:using(stdgo.crypto.tls.Tls.T_certificateMsgTLS13_static_extension) abstract T_certificateMsgTLS13(stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13) from stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13 to stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13 {
    public var _raw(get, set) : Array<std.UInt>;
    function get__raw():Array<std.UInt> return [for (i in this._raw) i];
    function set__raw(v:Array<std.UInt>):Array<std.UInt> {
        this._raw = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _certificate(get, set) : Certificate;
    function get__certificate():Certificate return this._certificate;
    function set__certificate(v:Certificate):Certificate {
        this._certificate = v;
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
    public function new(?_raw:Array<std.UInt>, ?_certificate:Certificate, ?_ocspStapling:Bool, ?_scts:Bool) this = new stdgo._internal.crypto.tls.Tls_T_certificateMsgTLS13.T_certificateMsgTLS13(([for (i in _raw) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _certificate, _ocspStapling, _scts);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
