package stdgo._internal.regexp.syntax;
@:keep @:allow(stdgo._internal.regexp.syntax.Syntax.Op_asInterface) class Op_static_extension {
    @:keep
    static public function string( _i:stdgo._internal.regexp.syntax.Syntax_Op.Op):stdgo.GoString {
        @:recv var _i:stdgo._internal.regexp.syntax.Syntax_Op.Op = _i;
        if ((((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op) <= _i : Bool) && (_i <= (19 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : Bool) : Bool)) {
            _i = (_i - ((1 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : stdgo._internal.regexp.syntax.Syntax_Op.Op);
            return (("NoMatchEmptyMatchLiteralCharClassAnyCharNotNLAnyCharBeginLineEndLineBeginTextEndTextWordBoundaryNoWordBoundaryCaptureStarPlusQuestRepeatConcatAlternate" : stdgo.GoString).__slice__(stdgo._internal.regexp.syntax.Syntax___Op_index_0.__Op_index_0[(_i : stdgo.GoInt)], stdgo._internal.regexp.syntax.Syntax___Op_index_0.__Op_index_0[((_i + (1 : stdgo._internal.regexp.syntax.Syntax_Op.Op) : stdgo._internal.regexp.syntax.Syntax_Op.Op) : stdgo.GoInt)]) : stdgo.GoString)?.__copy__();
        } else if (_i == ((128 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
            return ("opPseudo" : stdgo.GoString);
        } else {
            return ((("Op(" : stdgo.GoString) + stdgo._internal.strconv.Strconv_formatInt.formatInt((_i : stdgo.GoInt64), (10 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
    }
}
