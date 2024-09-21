package _internal.compress.bzip2_dot_test;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.compress.bzip2_dot_test.Bzip2_dot_test__tests._tests, _internal.compress.bzip2_dot_test.Bzip2_dot_test__benchmarks._benchmarks, _internal.compress.bzip2_dot_test.Bzip2_dot_test__fuzzTargets._fuzzTargets, _internal.compress.bzip2_dot_test.Bzip2_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.compress.bzip2.Bzip2__digits._digits, __tmp__1 = stdgo._internal.compress.bzip2.Bzip2__newton._newton, __tmp__2 = stdgo._internal.compress.bzip2.Bzip2__random._random;
            {};
            for (_i => _ in stdgo._internal.compress.bzip2.Bzip2__crctab._crctab) {
                var _crc = ((_i : stdgo.GoUInt32) << (24i64 : stdgo.GoUInt64) : stdgo.GoUInt32);
                {
                    var _j = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (8 : stdgo.GoInt) : Bool), _j++, {
                        if ((_crc & (-2147483648u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
                            _crc = (((_crc << (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) ^ (79764919u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                        } else {
                            _crc = (_crc << ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
                        };
                    });
                };
                stdgo._internal.compress.bzip2.Bzip2__crctab._crctab[(_i : stdgo.GoInt)] = _crc;
            };
            var __tmp__0 = _internal.compress.bzip2_dot_test.Bzip2_dot_test__tests._tests, __tmp__1 = _internal.compress.bzip2_dot_test.Bzip2_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.compress.bzip2_dot_test.Bzip2_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.compress.bzip2_dot_test.Bzip2_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("compress/bzip2" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
