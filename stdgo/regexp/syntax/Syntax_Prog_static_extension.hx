package stdgo.regexp.syntax;
class Prog_static_extension {
    static public function startCond(_p:Prog):EmptyOp {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.startCond(_p);
    }
    static public function prefix(_p:Prog):stdgo.Tuple<String, Bool> {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return {
            final obj = stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.prefix(_p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _skipNop(_p:Prog, _pc:std.UInt):Inst {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        final _pc = (_pc : stdgo.GoUInt32);
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension._skipNop(_p, _pc);
    }
    static public function string(_p:Prog):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>);
        return stdgo._internal.regexp.syntax.Syntax_Prog_static_extension.Prog_static_extension.string(_p);
    }
}
