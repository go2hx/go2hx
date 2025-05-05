package stdgo._internal.regexp.syntax;
function testSimplify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L140"
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__simplifytests._simplifyTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L142"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L143"
                _t.errorf(("Parse(%#q) = error %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L144"
                continue;
            };
            var _s = ((_re.simplify().string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L147"
            if (_s != (_tt.simple)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/simplify_test.go#L148"
                _t.errorf(("Simplify(%#q) = %#q, want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tt.simple));
            };
        };
    }
