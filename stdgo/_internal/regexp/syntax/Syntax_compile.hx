package stdgo._internal.regexp.syntax;
function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>; var _1 : stdgo.Error; } {
        var _c:stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler = ({} : stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler);
        @:check2 _c._init();
        var _f = (@:check2 _c._compile(_re)?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag);
        _f._out._patch(_c._p, @:check2 _c._inst((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))._i);
        (@:checkr _c._p ?? throw "null pointer dereference").start = (_f._i : stdgo.GoInt);
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }
