package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.InstOp_asInterface) class InstOp_static_extension {
    @:keep
    @:tdfield
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp = _i;
        if (((_i : stdgo.GoUInt) >= (stdgo._internal.regexp.syntax.Syntax__instOpNames._instOpNames.length : stdgo.GoUInt) : Bool)) {
            return stdgo.Go.str()?.__copy__();
        };
        return stdgo._internal.regexp.syntax.Syntax__instOpNames._instOpNames[(_i : stdgo.GoInt)]?.__copy__();
    }
}
