package stdgo.regexp.syntax;
class Regexp_static_extension {
    static public function simplify(_re:Regexp):Regexp {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.simplify(_re);
    }
    static public function _capNames(_re:Regexp, _names:Array<String>):Void {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        final _names = ([for (i in _names) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension._capNames(_re, _names);
    }
    static public function capNames(_re:Regexp):Array<String> {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return [for (i in stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.capNames(_re)) i];
    }
    static public function maxCap(_re:Regexp):StdTypes.Int {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.maxCap(_re);
    }
    static public function string(_re:Regexp):String {
        final _re = (_re : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.string(_re);
    }
    static public function equal(_x:Regexp, _y:Regexp):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        final _y = (_y : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>);
        return stdgo._internal.regexp.syntax.Syntax_Regexp_static_extension.Regexp_static_extension.equal(_x, _y);
    }
}
