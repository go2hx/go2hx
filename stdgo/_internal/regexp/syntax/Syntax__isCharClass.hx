package stdgo._internal.regexp.syntax;
function _isCharClass(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Bool {
        return ((((_re.op == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) && (_re.rune.length) == ((1 : stdgo.GoInt)) : Bool) || _re.op == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || _re.op == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool) || (_re.op == (6 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) : Bool);
    }
