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
function testFindString(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            var _result = (@:check2r stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__()).findString(_test._text?.__copy__())?.__copy__() : stdgo.GoString);
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != stdgo.Go.str()) : Bool)) {
                @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == stdgo.Go.str()) : Bool)) {
                if (_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] != (_test._matches[(0 : stdgo.GoInt)][((1 : stdgo.GoInt) : stdgo.GoInt)])) {
                    @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            } else if (((_test._matches != null) && (_result != stdgo.Go.str()) : Bool)) {
                var _expect = ((_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (_expect != (_result)) {
                    @:check2r _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
