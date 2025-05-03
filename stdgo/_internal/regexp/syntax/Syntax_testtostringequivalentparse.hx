package stdgo._internal.regexp.syntax;
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L547"
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__parsetests._parseTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L549"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L550"
                _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L551"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L553"
            if (_tt.dump == ((stdgo.Go.str() : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L555"
                continue;
            };
            var _d = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L558"
            if (_d != (_tt.dump)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L559"
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L560"
                continue;
            };
            var _s = ((_re.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L564"
            if (_s != (_tt.regexp)) {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_s?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _nre:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L571"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L572"
                    _t.errorf(("Parse(%#q.String() = %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L573"
                    continue;
                };
                var _nd = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_nre)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L576"
                if (_d != (_nd)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L577"
                    _t.errorf(("Parse(%#q) -> %#q; %#q vs %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_nd));
                };
                var _ns = ((_nre.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L581"
                if (_s != (_ns)) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/syntax/parse_test.go#L582"
                    _t.errorf(("Parse(%#q) -> %#q -> %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ns));
                };
            };
        };
    }
