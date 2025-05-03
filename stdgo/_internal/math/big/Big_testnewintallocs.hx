package stdgo._internal.math.big;
function testNewIntAllocs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1940"
        stdgo._internal.internal.testenv.Testenv_skipifoptimizationoff.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1941"
        for (__8 => _n in (new stdgo.Slice<stdgo.GoInt64>(7, 7, ...[(0i64 : stdgo.GoInt64), (7i64 : stdgo.GoInt64), (-7i64 : stdgo.GoInt64), (1073741824i64 : stdgo.GoInt64), (-1073741824i64 : stdgo.GoInt64), (1125899906842624i64 : stdgo.GoInt64), (-1125899906842624i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _x = stdgo._internal.math.big.Big_newint.newInt((3i64 : stdgo.GoInt64));
            var _got = (stdgo._internal.testing.Testing_allocsperrun.allocsPerRun((100 : stdgo.GoInt), function():Void {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1947"
                _x.add(_x, stdgo._internal.math.big.Big_newint.newInt(_n));
            }) : stdgo.GoFloat64);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1949"
            if (_got != ((0 : stdgo.GoFloat64))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1950"
                _t.errorf(("x.Add(x, NewInt(%d)), wanted 0 allocations, got %f" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_got));
            };
        };
    }
