package stdgo._internal.regexp.syntax;
function testCompile(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__compileTests._compileTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, __2:stdgo.Error = __tmp__._1;
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = __tmp__._0, __3:stdgo.Error = __tmp__._1;
            var _s = ((_p.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_tt.prog)) {
                _t.errorf(("compiled %#q:\n--- have\n%s---\n--- want\n%s---" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.prog));
            };
        };
    }
