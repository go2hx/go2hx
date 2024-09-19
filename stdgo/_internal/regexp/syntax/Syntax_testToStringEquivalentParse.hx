package stdgo._internal.regexp.syntax;
function testToStringEquivalentParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__1 => _tt in stdgo._internal.regexp.syntax.Syntax__parseTests._parseTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (stdgo.Go.str())) {
                continue;
            };
            var _d = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__() : stdgo.GoString);
            if (_d != (_tt.dump)) {
                _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
                continue;
            };
            var _s = ((_re.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_s != (_tt.regexp)) {
                var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_s?.__copy__(), (204 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _nre:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    _t.errorf(("Parse(%#q.String() = %#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_err));
                    continue;
                };
                var _nd = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_nre)?.__copy__() : stdgo.GoString);
                if (_d != (_nd)) {
                    _t.errorf(("Parse(%#q) -> %#q; %#q vs %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_nd));
                };
                var _ns = ((_nre.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_s != (_ns)) {
                    _t.errorf(("Parse(%#q) -> %#q -> %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_ns));
                };
            };
        };
    }