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
var _replaceLiteralTests : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest>(15, 15, ...[
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("($0)" : stdgo.GoString), ("banana" : stdgo.GoString), ("b($0)n($0)n($0)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})n(${0})n(${0})" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})$0n(${0})$0n(${0})$0" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(${0})$0n(${0})$0n(${0})$0" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("$x$x$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("bye" : stdgo.GoString), ("$x$x$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$xyz" : stdgo.GoString), ("hi" : stdgo.GoString), ("$xyz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("${x}yz" : stdgo.GoString), ("hi" : stdgo.GoString), ("${x}yz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("hello $$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hello $$x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("${oops" : stdgo.GoString), ("aaa" : stdgo.GoString), ("${oops" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("$$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest)].concat([for (i in 15 ... (15 > 15 ? 15 : 15 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest>);
