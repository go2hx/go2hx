package stdgo.crypto.x509;
@:structInit @:using(stdgo.crypto.x509.X509.T_lazyCert_static_extension) abstract T_lazyCert(stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert) from stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert to stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert {
    public var _rawSubject(get, set) : Array<std.UInt>;
    function get__rawSubject():Array<std.UInt> return [for (i in this._rawSubject) i];
    function set__rawSubject(v:Array<std.UInt>):Array<std.UInt> {
        this._rawSubject = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _getCert(get, set) : () -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; };
    function get__getCert():() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } return () -> this._getCert();
    function set__getCert(v:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }):() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; } {
        this._getCert = v;
        return v;
    }
    public function new(?_rawSubject:Array<std.UInt>, ?_getCert:() -> { var _0 : stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>; var _1 : stdgo.Error; }) this = new stdgo._internal.crypto.x509.X509_T_lazyCert.T_lazyCert(([for (i in _rawSubject) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _getCert);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
