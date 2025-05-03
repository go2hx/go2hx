package stdgo._internal.regexp.syntax;
function compile(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):{ var _0 : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>; var _1 : stdgo.Error; } {
        var _c:stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler = ({} : stdgo._internal.regexp.syntax.Syntax_t_compiler.T_compiler);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L73"
        _c._init();
        var _f = (_c._compile(_re)?.__copy__() : stdgo._internal.regexp.syntax.Syntax_t_frag.T_frag);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L75"
        _f._out._patch(_c._p, _c._inst((4 : stdgo._internal.regexp.syntax.Syntax_instop.InstOp))._i);
        (@:checkr _c._p ?? throw "null pointer dereference").start = (_f._i : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/compile.go#L77"
        return { _0 : _c._p, _1 : (null : stdgo.Error) };
    }
