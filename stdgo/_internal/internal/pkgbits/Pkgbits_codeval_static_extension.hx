package stdgo._internal.internal.pkgbits;
@:keep @:allow(stdgo._internal.internal.pkgbits.Pkgbits.CodeVal_asInterface) class CodeVal_static_extension {
    @:keep
    @:tdfield
    static public function value( _c:stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal):stdgo.GoInt {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal = _c;
        return (_c : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function marker( _c:stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal):stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker {
        @:recv var _c:stdgo._internal.internal.pkgbits.Pkgbits_codeval.CodeVal = _c;
        return (7 : stdgo._internal.internal.pkgbits.Pkgbits_syncmarker.SyncMarker);
    }
}
