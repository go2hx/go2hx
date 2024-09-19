package _internal.bytes_dot_test;
import stdgo._internal.bytes.Bytes;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.bytes_dot_test.Bytes_dot_test__tests._tests, _internal.bytes_dot_test.Bytes_dot_test__benchmarks._benchmarks, _internal.bytes_dot_test.Bytes_dot_test__fuzzTargets._fuzzTargets, _internal.bytes_dot_test.Bytes_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            _internal.bytes_test.Bytes_test__testBytes._testBytes = (new stdgo.Slice<stdgo.GoUInt8>((10000 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (10000 : stdgo.GoInt) : Bool), _i++, {
                    _internal.bytes_test.Bytes_test__testBytes._testBytes[(_i : stdgo.GoInt)] = ((97 : stdgo.GoUInt8) + ((_i % (26 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8) : stdgo.GoUInt8);
                });
            };
            _internal.bytes_test.Bytes_test__testString._testString = (_internal.bytes_test.Bytes_test__testBytes._testBytes : stdgo.GoString)?.__copy__();
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("bytes" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
