package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_bracketPairs_asInterface) class T_bracketPairs_static_extension {
    @:keep
    static public function less( _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs = _b;
        return (_b[(_i : stdgo.GoInt)]._opener < _b[(_j : stdgo.GoInt)]._opener : Bool);
    }
    @:keep
    static public function swap( _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs = _b;
        {
            final __tmp__0 = _b[(_j : stdgo.GoInt)];
            final __tmp__1 = _b[(_i : stdgo.GoInt)];
            final __tmp__2 = _b;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _b;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function len( _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs):stdgo.GoInt {
        @:recv var _b:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairs.T_bracketPairs = _b;
        return (_b.length);
    }
}
