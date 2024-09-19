package _internal.unicode.utf16_test;
import stdgo._internal.unicode.utf16.Utf16;
function testAllocationsDecode(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        stdgo._internal.internal.testenv.Testenv_skipIfOptimizationOff.skipIfOptimizationOff(stdgo.Go.asInterface(_t));
        for (__0 => _tt in _internal.unicode.utf16_test.Utf16_test__decodeTests._decodeTests) {
            var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
                var _out = stdgo._internal.unicode.utf16.Utf16_decode.decode(_tt._in);
                if (_out == null) {
                    _t.errorf(("Decode(%x) = nil" : stdgo.GoString), stdgo.Go.toInterface(_tt._in));
                };
            }) : stdgo.GoFloat64);
            if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
                _t.errorf(("Decode allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
            };
        };
    }
