package stdgo._internal.regexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.regexp.syntax.Syntax;
import stdgo._internal.testing.Testing;
import stdgo._internal.os.Os;
import stdgo._internal.compress.bzip2.Bzip2;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.sort.Sort;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
var _literalPrefixTests : stdgo.Slice<stdgo._internal.regexp.Regexp_MetaTest.MetaTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_MetaTest.MetaTest>(11, 11, ...[
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("^0^0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("0" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("^0^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("^0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("0" : stdgo.GoString), true) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("$0^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("$0$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("^^0$$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("^$^$" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("$$0^^" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("a\\x{fffd}b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("a" : stdgo.GoString), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("\\x{fffd}b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest),
(new stdgo._internal.regexp.Regexp_MetaTest.MetaTest(("�" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), false) : stdgo._internal.regexp.Regexp_MetaTest.MetaTest)].concat([for (i in 11 ... (11 > 11 ? 11 : 11 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_MetaTest.MetaTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_MetaTest.MetaTest>);
