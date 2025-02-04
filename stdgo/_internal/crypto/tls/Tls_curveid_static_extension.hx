package stdgo._internal.crypto.tls;
@:keep @:allow(stdgo._internal.crypto.tls.Tls.CurveID_asInterface) class CurveID_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.crypto.tls.Tls_curveid.CurveID):stdgo.GoString {
        @:recv var _i:stdgo._internal.crypto.tls.Tls_curveid.CurveID = _i;
        if ((((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) <= _i : Bool) && (_i <= (25 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : Bool) : Bool)) {
            _i = (_i - ((23 : stdgo._internal.crypto.tls.Tls_curveid.CurveID)) : stdgo._internal.crypto.tls.Tls_curveid.CurveID);
            return (("CurveP256CurveP384CurveP521" : stdgo.GoString).__slice__(stdgo._internal.crypto.tls.Tls___curveid_index_0.__CurveID_index_0[(_i : stdgo.GoInt)], stdgo._internal.crypto.tls.Tls___curveid_index_0.__CurveID_index_0[((_i + (1 : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo._internal.crypto.tls.Tls_curveid.CurveID) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((29 : stdgo._internal.crypto.tls.Tls_curveid.CurveID))) {
            return ("X25519" : stdgo.GoString);
        } else {
            return ((("CurveID(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatint.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
