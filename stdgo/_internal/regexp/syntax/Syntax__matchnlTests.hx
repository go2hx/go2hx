package stdgo._internal.regexp.syntax;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strconv.Strconv;
var _matchnlTests : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest> = (new stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest>(4, 4, ...[(new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest(("." : stdgo.GoString), ("dot{}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest(("\n" : stdgo.GoString), ("lit{\n}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest(("[^a]" : stdgo.GoString), ("cc{0x0-0x60 0x62-0x10ffff}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest), (new stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest(("[a\\n]" : stdgo.GoString), ("cc{0xa 0x61}" : stdgo.GoString)) : stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest)])) : stdgo.Slice<stdgo._internal.regexp.syntax.Syntax_T_parseTest.T_parseTest>);
