package _internal.bufio_dot_test;
import stdgo._internal.bufio.Bufio;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.bufio_dot_test.Bufio_dot_test__tests._tests, _internal.bufio_dot_test.Bufio_dot_test__benchmarks._benchmarks, _internal.bufio_dot_test.Bufio_dot_test__fuzzTargets._fuzzTargets, _internal.bufio_dot_test.Bufio_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.bufio_test.Bufio_test__readMakers._readMakers, __tmp__1 = _internal.bufio_test.Bufio_test__bufreaders._bufreaders, __tmp__2 = _internal.bufio_test.Bufio_test__bufsizes._bufsizes, __tmp__3 = _internal.bufio_test.Bufio_test__segmentList._segmentList, __tmp__4 = _internal.bufio_test.Bufio_test__errorWriterTests._errorWriterTests, __tmp__5 = _internal.bufio_test.Bufio_test__testOutput._testOutput, __tmp__6 = _internal.bufio_test.Bufio_test__testInput._testInput, __tmp__7 = _internal.bufio_test.Bufio_test__testInputrn._testInputrn, __tmp__8 = _internal.bufio_test.Bufio_test__readLineNewlinesTests._readLineNewlinesTests, __tmp__9 = _internal.bufio_test.Bufio_test__errorWriterToTests._errorWriterToTests, __tmp__10 = _internal.bufio_test.Bufio_test__errorReaderFromTests._errorReaderFromTests, __tmp__11 = _internal.bufio_test.Bufio_test__errFake._errFake, __tmp__12 = _internal.bufio_test.Bufio_test__scanTests._scanTests, __tmp__13 = _internal.bufio_test.Bufio_test__wordScanTests._wordScanTests, __tmp__14 = _internal.bufio_test.Bufio_test__testError._testError;
            var __tmp__0 = _internal.bufio_dot_test.Bufio_dot_test__tests._tests, __tmp__1 = _internal.bufio_dot_test.Bufio_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.bufio_dot_test.Bufio_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.bufio_dot_test.Bufio_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("bufio" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
