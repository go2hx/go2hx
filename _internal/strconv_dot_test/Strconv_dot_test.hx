package _internal.strconv_dot_test;
import stdgo._internal.strconv.Strconv;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.strconv_dot_test.Strconv_dot_test__tests._tests, _internal.strconv_dot_test.Strconv_dot_test__benchmarks._benchmarks, _internal.strconv_dot_test.Strconv_dot_test__fuzzTargets._fuzzTargets, _internal.strconv_dot_test.Strconv_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint64Tests._parseUint64Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint64Tests._parseUint64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint64Test.T_parseUint64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint64BaseTests._parseUint64BaseTests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint64BaseTests._parseUint64BaseTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint64BaseTest.T_parseUint64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64Tests._parseInt64Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64Test.T_parseInt64Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt64BaseTests._parseInt64BaseTests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt64BaseTest.T_parseInt64BaseTest>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseUint32Tests._parseUint32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseUint32Test.T_parseUint32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseUint" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            for (_i => _ in _internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests) {
                var _test = (stdgo.Go.setRef(_internal.strconv_test.Strconv_test__parseInt32Tests._parseInt32Tests[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.strconv_test.Strconv_test_T_parseInt32Test.T_parseInt32Test>);
                if (_test._err != null) {
                    _test._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.strconv.Strconv_NumError.NumError(("ParseInt" : stdgo.GoString), _test._in?.__copy__(), _test._err) : stdgo._internal.strconv.Strconv_NumError.NumError)) : stdgo.Ref<stdgo._internal.strconv.Strconv_NumError.NumError>));
                };
            };
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("strconv" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
