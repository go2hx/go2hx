package stdgo._internal.regexp.syntax;
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__simplifytests._simplifyTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Parse(%#q) = error %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            var _s = ((@:check2r @:check2r _re.simplify().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_tt.simple)) {
                @:check2r _t.errorf(("Simplify(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.simple));
            };
        };
    }
