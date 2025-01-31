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
var _replaceFuncTests : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest> = (new stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest>(3, 3, ...[(new stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest(("[a-c]" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("defxayxbyxcydef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest), (new stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest(("[a-c]+" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("defxabcydef" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest), (new stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest(("[a-c]*" : stdgo.GoString), function(_s:stdgo.GoString):stdgo.GoString {
        return ((("x" : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + ("y" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
    }, ("defabcdef" : stdgo.GoString), ("xydxyexyfxabcydxyexyfxy" : stdgo.GoString)) : stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest)].concat([for (i in 3 ... (3 > 3 ? 3 : 3 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest)])) : stdgo.Slice<stdgo._internal.regexp.Regexp_ReplaceFuncTest.ReplaceFuncTest>);
