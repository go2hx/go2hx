package stdgo._internal.regexp.syntax;
function _isCharClass(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Bool {
        return (((((@:checkr _re ?? throw "null pointer dereference").op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && ((@:checkr _re ?? throw "null pointer dereference").rune.length) == ((1 : stdgo.GoInt)) : Bool) || (@:checkr _re ?? throw "null pointer dereference").op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || (@:checkr _re ?? throw "null pointer dereference").op == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || ((@:checkr _re ?? throw "null pointer dereference").op == (6 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool);
    }
