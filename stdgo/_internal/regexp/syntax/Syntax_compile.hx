package stdgo._internal.regexp.syntax;
function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>; var _1 : stdgo.Error; } {
        var _c:stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler = ({} : stdgo._internal.regexp.syntax.Syntax_T_compiler.T_compiler);
        _c._init();
        var _f = (_c._compile(_re)?.__copy__() : stdgo._internal.regexp.syntax.Syntax_T_frag.T_frag);
        _f._out._patch(_c._p, _c._inst((4 : stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp))._i);
        _c._p.start = (_f._i : stdgo.GoInt);
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }