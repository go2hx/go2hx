package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function _testParseDump(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _tests:stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest>, _flags:stdgo._internal.regexp.syntax.Syntax_Flags.Flags):Void {
        for (__1 => _tt in _tests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), _flags), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.errorf(("Parse(%#q): %v" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_err));
                continue;
            };
            if (_tt.dump == (stdgo.Go.str())) {
                continue;
            };
            var _d = (stdgo._internal.regexp.syntax.Syntax__dump._dump(_re)?.__copy__() : stdgo.GoString);
            if (_d != (_tt.dump)) {
                @:check2r _t.errorf(("Parse(%#q).Dump() = %#q want %#q" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_d), stdgo.Go.toInterface(_tt.dump));
            };
        };
    }
