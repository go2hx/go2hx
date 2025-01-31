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
function testDeepEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _re1 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        var _re2 = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(("a.*b.*c.*d" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            @:check2r _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        @:check2r _re1.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            @:check2r _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        @:check2r _re2.matchString(("abcdefghijklmn" : stdgo.GoString));
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            @:check2r _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
        @:check2r _re2.matchString(stdgo._internal.strings.Strings_repeat.repeat(("abcdefghijklmn" : stdgo.GoString), (100 : stdgo.GoInt))?.__copy__());
        if (!stdgo._internal.reflect.Reflect_deepEqual.deepEqual(stdgo.Go.toInterface(stdgo.Go.asInterface(_re1)), stdgo.Go.toInterface(stdgo.Go.asInterface(_re2)))) {
            @:check2r _t.errorf(("DeepEqual(re1, re2) = false, want true" : stdgo.GoString));
        };
    }
