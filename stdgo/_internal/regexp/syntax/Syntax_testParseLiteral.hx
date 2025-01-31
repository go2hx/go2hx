package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
function testParseLiteral(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.regexp.syntax.Syntax__testParseDump._testParseDump(_t, stdgo._internal.regexp.syntax.Syntax__literalTests._literalTests, (2 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
    }
