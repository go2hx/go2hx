package _internal.unicode_dot_test;
import stdgo._internal.unicode.Unicode;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.unicode_dot_test.Unicode_dot_test__tests._tests, _internal.unicode_dot_test.Unicode_dot_test__benchmarks._benchmarks, _internal.unicode_dot_test.Unicode_dot_test__fuzzTargets._fuzzTargets, _internal.unicode_dot_test.Unicode_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.unicode_test.Unicode_test__testDigit._testDigit, __tmp__1 = _internal.unicode_test.Unicode_test__testLetter._testLetter, __tmp__2 = _internal.unicode_test.Unicode_test__upperTest._upperTest, __tmp__3 = _internal.unicode_test.Unicode_test__notupperTest._notupperTest, __tmp__4 = _internal.unicode_test.Unicode_test__letterTest._letterTest, __tmp__5 = _internal.unicode_test.Unicode_test__notletterTest._notletterTest, __tmp__6 = _internal.unicode_test.Unicode_test__spaceTest._spaceTest, __tmp__7 = _internal.unicode_test.Unicode_test__caseTest._caseTest, __tmp__8 = _internal.unicode_test.Unicode_test__simpleFoldTests._simpleFoldTests, __tmp__9 = _internal.unicode_test.Unicode_test__calibrate._calibrate, __tmp__10 = _internal.unicode_test.Unicode_test__inCategoryTest._inCategoryTest, __tmp__11 = _internal.unicode_test.Unicode_test__inPropTest._inPropTest;
            var __tmp__0 = _internal.unicode_dot_test.Unicode_dot_test__tests._tests, __tmp__1 = _internal.unicode_dot_test.Unicode_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.unicode_dot_test.Unicode_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.unicode_dot_test.Unicode_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("unicode" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
