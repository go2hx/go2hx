package _internal.unicode.utf8_dot_test;
import stdgo._internal.unicode.utf8.Utf8;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.unicode.utf8_dot_test.Utf8_dot_test__tests._tests, _internal.unicode.utf8_dot_test.Utf8_dot_test__benchmarks._benchmarks, _internal.unicode.utf8_dot_test.Utf8_dot_test__fuzzTargets._fuzzTargets, _internal.unicode.utf8_dot_test.Utf8_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.unicode.utf8_test.Utf8_test__utf8map._utf8map, __tmp__1 = _internal.unicode.utf8_test.Utf8_test__surrogateMap._surrogateMap, __tmp__2 = _internal.unicode.utf8_test.Utf8_test__testStrings._testStrings, __tmp__3 = _internal.unicode.utf8_test.Utf8_test__invalidSequenceTests._invalidSequenceTests, __tmp__4 = _internal.unicode.utf8_test.Utf8_test__runecounttests._runecounttests, __tmp__5 = _internal.unicode.utf8_test.Utf8_test__runelentests._runelentests, __tmp__6 = _internal.unicode.utf8_test.Utf8_test__validTests._validTests, __tmp__7 = _internal.unicode.utf8_test.Utf8_test__validrunetests._validrunetests, __tmp__8 = _internal.unicode.utf8_test.Utf8_test__ascii100000._ascii100000;
            if (false) {
                throw stdgo.Go.toInterface(("utf8.MaxRune is wrong" : stdgo.GoString));
            };
            if (false) {
                throw stdgo.Go.toInterface(("utf8.RuneError is wrong" : stdgo.GoString));
            };
            {};
            var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_b.len() < (100000 : stdgo.GoInt) : Bool), _i++, {
                    if ((_i % (100 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _b.writeString(("日本語日本語日本語日" : stdgo.GoString));
                    } else {
                        _b.writeString(("0123456789" : stdgo.GoString));
                    };
                });
            };
            _internal.unicode.utf8_test.Utf8_test__longStringMostlyASCII._longStringMostlyASCII = (_b.string() : stdgo.GoString)?.__copy__();
            _internal.unicode.utf8_test.Utf8_test__longStringJapanese._longStringJapanese = stdgo._internal.strings.Strings_repeat.repeat(("日本語日本語日本語日" : stdgo.GoString), (3333 : stdgo.GoInt))?.__copy__();
            var __tmp__0 = _internal.unicode.utf8_dot_test.Utf8_dot_test__tests._tests, __tmp__1 = _internal.unicode.utf8_dot_test.Utf8_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.unicode.utf8_dot_test.Utf8_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.unicode.utf8_dot_test.Utf8_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("unicode/utf8" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
