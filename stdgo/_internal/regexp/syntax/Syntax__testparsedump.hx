package stdgo._internal.regexp.syntax;
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tests:stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_t_parsetest.T_parseTest>, _flags:stdgo._internal.regexp.syntax.Syntax_flags.Flags):Void {
        for (__1 => _tt in _tests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), _flags), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == ((stdgo.Go.str() : stdgo.GoString))) {
                continue;
            };
            var _d = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__() : stdgo.GoString);
            if (_d != (_tt.dump)) {
                @:check2r _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
            };
        };
    }
