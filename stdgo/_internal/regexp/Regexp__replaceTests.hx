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
var _replaceTests : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest>(72, 72, ...[
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("xaxbxcx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("b" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("b" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("ac" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("b" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("axc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("y" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("y" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("y" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("y" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("abc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("日" : stdgo.GoString), ("x日x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[^日]" : stdgo.GoString), ("x" : stdgo.GoString), ("abc日def" : stdgo.GoString), ("xxx日xxx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("xdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("xdabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabcex" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]*$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("xdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abcdabc" : stdgo.GoString), ("abcdabc" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), ("dabce" : stdgo.GoString), ("dabce" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("^[a-c]+$" : stdgo.GoString), ("x" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("abc" : stdgo.GoString), ("def" : stdgo.GoString), ("abcdefg" : stdgo.GoString), ("defdefg" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("bc" : stdgo.GoString), ("BC" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("aBCBCdcdedef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("abc" : stdgo.GoString), stdgo.Go.str()?.__copy__(), ("abcdabc" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("x" : stdgo.GoString), ("xXx" : stdgo.GoString), ("xxxXxxx" : stdgo.GoString), ("xXxxXxxXxXxXxxXxxXx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("abc" : stdgo.GoString), ("d" : stdgo.GoString), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("abc" : stdgo.GoString), ("d" : stdgo.GoString), ("abc" : stdgo.GoString), ("d" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest((".+" : stdgo.GoString), ("x" : stdgo.GoString), ("abc" : stdgo.GoString), ("x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("def" : stdgo.GoString), ("xdxexfx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]+" : stdgo.GoString), ("x" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("xdxdedef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("[a-c]*" : stdgo.GoString), ("x" : stdgo.GoString), ("abcbcdcdedef" : stdgo.GoString), ("xdxdxexdxexfx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("($0)" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)n(a)n(a)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)n(a)n(a)" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)an(a)an(a)a" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("(${0})$0" : stdgo.GoString), ("banana" : stdgo.GoString), ("b(a)an(a)an(a)a" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, $1x" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, " : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("goodbye, ${1}x" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, worldx" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (.+)" : stdgo.GoString), ("<$0><$1><$2><$3>" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("<hello, world><world><><>" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, $noun!" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world!" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("hello, (?P<noun>.+)" : stdgo.GoString), ("goodbye, ${noun}" : stdgo.GoString), ("hello, world" : stdgo.GoString), ("goodbye, world" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hihihi" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$x$x$x" : stdgo.GoString), ("bye" : stdgo.GoString), ("byebyebye" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("$xyz" : stdgo.GoString), ("hi" : stdgo.GoString), stdgo.Go.str()?.__copy__()) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("${x}yz" : stdgo.GoString), ("hi" : stdgo.GoString), ("hiyz" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(?P<x>hi)|(?P<x>bye)" : stdgo.GoString), ("hello $$x" : stdgo.GoString), ("hi" : stdgo.GoString), ("hello $x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("${oops" : stdgo.GoString), ("aaa" : stdgo.GoString), ("${oops" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("$$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("a+" : stdgo.GoString), ("$" : stdgo.GoString), ("aaa" : stdgo.GoString), ("$" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(x)?" : stdgo.GoString), ("$1" : stdgo.GoString), ("123" : stdgo.GoString), ("123" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("abc" : stdgo.GoString), ("$1" : stdgo.GoString), ("123" : stdgo.GoString), ("123" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(a)(b){0}(c)" : stdgo.GoString), (".$1|$3." : stdgo.GoString), ("xacxacx" : stdgo.GoString), ("x.a|c.x.a|c.x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("(a)(((b))){0}c" : stdgo.GoString), (".$1." : stdgo.GoString), ("xacxacx" : stdgo.GoString), ("x.a.x.a.x" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("((a(b){0}){3}){5}(h)" : stdgo.GoString), ("y caramb$2" : stdgo.GoString), ("say aaaaaaaaaaaaaaaah" : stdgo.GoString), ("say ay caramba" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest),
(new stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest(("((a(b){0}){3}){5}h" : stdgo.GoString), ("y caramb$2" : stdgo.GoString), ("say aaaaaaaaaaaaaaaah" : stdgo.GoString), ("say ay caramba" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest)].concat([for (i in 72 ... (72 > 72 ? 72 : 72 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceTest.ReplaceTest>);
