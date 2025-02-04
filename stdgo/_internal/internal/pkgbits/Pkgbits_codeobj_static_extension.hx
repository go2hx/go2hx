package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.CodeObj_asInterface) class CodeObj_static_extension {
    @:keep
    @:tdfield
    static public function value( _c:stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj):stdgo.GoInt {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj = _c;
        return (_c : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function marker( _c:stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj):stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_codeobj.CodeObj = _c;
        return (25 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker);
    }
}
