package stdgo._internal.regexp.syntax;
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__simplifyTests._simplifyTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q) = error %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            var _s = ((_re.simplify().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_tt.simple)) {
                _t.errorf(("Simplify(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.simple));
            };
        };
    }