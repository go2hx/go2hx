package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testEqual(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((10 : stdgo.GoInt), function():Void {
            for (__0 => _tt in _internal.bytes_test.Bytes_test__compareTests._compareTests) {
                var _eql = (stdgo._internal.bytes.Bytes_equal.equal(_tt._a, _tt._b) : Bool);
                if (_eql != ((_tt._i == (0 : stdgo.GoInt)))) {
                    _t.errorf(("Equal(%q, %q) = %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._a), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_eql));
                };
            };
        }) : stdgo.GoFloat64);
        if ((_allocs > (0 : stdgo.GoFloat64) : Bool)) {
            _t.errorf(("Equal allocated %v times" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
        };
    }
