package _internal.math.bits_dot_test;
import stdgo._internal.math.bits.Bits;
function main():Void {
        var _m = stdgo._internal.testing.Testing_mainStart.mainStart(stdgo.Go.asInterface((new stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps() : stdgo._internal.testing.internal.testdeps.Testdeps_TestDeps.TestDeps)), _internal.math.bits_dot_test.Bits_dot_test__tests._tests, _internal.math.bits_dot_test.Bits_dot_test__benchmarks._benchmarks, _internal.math.bits_dot_test.Bits_dot_test__fuzzTargets._fuzzTargets, _internal.math.bits_dot_test.Bits_dot_test__examples._examples);
        Sys.exit(_m.run());
    }
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = _internal.math.bits_test.Bits_test_input.input;
            _internal.math.bits_test.Bits_test__tab._tab[(0 : stdgo.GoInt)] = ({ _nlz : (8 : stdgo.GoInt), _ntz : (8 : stdgo.GoInt), _pop : (0 : stdgo.GoInt) } : _internal.math.bits_test.Bits_test_T_entry.T_entry);
            {
                var _i = (1 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_internal.math.bits_test.Bits_test__tab._tab.length) : Bool), _i++, {
                    var _x = (_i : stdgo.GoInt);
                    var _n = (0 : stdgo.GoInt);
                    while ((_x & (128 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x << ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._nlz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while ((_x & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                        _n++;
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._ntz = _n;
                    _x = _i;
                    _n = (0 : stdgo.GoInt);
                    while (_x != ((0 : stdgo.GoInt))) {
                        _n = (_n + ((_x & (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        _x = (_x >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoInt);
                    };
                    _internal.math.bits_test.Bits_test__tab._tab[(_i : stdgo.GoInt)]._pop = _n;
                });
            };
            var __tmp__0 = _internal.math.bits_dot_test.Bits_dot_test__tests._tests, __tmp__1 = _internal.math.bits_dot_test.Bits_dot_test__benchmarks._benchmarks, __tmp__2 = _internal.math.bits_dot_test.Bits_dot_test__fuzzTargets._fuzzTargets, __tmp__3 = _internal.math.bits_dot_test.Bits_dot_test__examples._examples;
            stdgo._internal.testing.internal.testdeps.Testdeps_importPath.importPath = ("math/bits" : stdgo.GoString);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
