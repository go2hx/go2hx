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
function testFind(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            var _re = stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__());
            if ((@:check2r _re.string() : stdgo.GoString) != (_test._pat)) {
                @:check2r _t.errorf(("String() = `%s`; should be `%s`" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _re.string() : stdgo.GoString)), stdgo.Go.toInterface(_test._pat));
            };
            var _result = @:check2r _re.find((_test._text : stdgo.Slice<stdgo.GoUInt8>));
            if (((_test._matches.length == (0 : stdgo.GoInt)) && (_result.length == (0 : stdgo.GoInt)) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                var _expect = ((_test._text.__slice__(_test._matches[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)], _test._matches[(0 : stdgo.GoInt)][(1 : stdgo.GoInt)]) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((_result.length) != (_result.capacity)) {
                    @:check2r _t.errorf(("expected capacity %d got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(_result.capacity), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
                if (_expect != ((_result : stdgo.GoString))) {
                    @:check2r _t.errorf(("expected %q got %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_expect), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
                };
            };
        };
    }
