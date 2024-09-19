package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_bracketPair_asInterface) class T_bracketPair_static_extension {
    @:keep
    static public function string( _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair> = _b;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("(%v, %v)" : stdgo.GoString), stdgo.Go.toInterface(_b._opener), stdgo.Go.toInterface(_b._closer))?.__copy__();
    }
}
