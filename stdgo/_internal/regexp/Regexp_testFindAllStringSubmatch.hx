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
function testFindAllStringSubmatch(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _test in stdgo._internal.regexp.Regexp__findTests._findTests) {
            var _result = @:check2r stdgo._internal.regexp.Regexp_mustCompile.mustCompile(_test._pat?.__copy__()).findAllStringSubmatch(_test._text?.__copy__(), (-1 : stdgo.GoInt));
            if (((_test._matches == null) && (_result == null) : Bool)) {} else if (((_test._matches == null) && (_result != null) : Bool)) {
                @:check2r _t.errorf(("expected no match; got one: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result == null) : Bool)) {
                @:check2r _t.errorf(("expected match; got none: %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if ((_test._matches.length) != ((_result.length))) {
                @:check2r _t.errorf(("expected %d matches; got %d: %s" : stdgo.GoString), stdgo.Go.toInterface((_test._matches.length)), stdgo.Go.toInterface((_result.length)), stdgo.Go.toInterface(stdgo.Go.asInterface(_test)));
            } else if (((_test._matches != null) && (_result != null) : Bool)) {
                for (_k => _match in _test._matches) {
                    stdgo._internal.regexp.Regexp__testSubmatchString._testSubmatchString((stdgo.Go.setRef(_test) : stdgo.Ref<stdgo._internal.regexp.Regexp_FindTest.FindTest>), _k, _match, _result[(_k : stdgo.GoInt)], _t);
                };
            };
        };
    }
