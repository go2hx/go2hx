package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function testContains(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in _internal.bytes_test.Bytes_test__containsTests._containsTests) {
            {
                var _got = (stdgo._internal.bytes.Bytes_contains.contains(_tt._b, _tt._subslice) : Bool);
                if (_got != (_tt._want)) {
                    _t.errorf(("Contains(%q, %q) = %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_tt._b), stdgo.Go.toInterface(_tt._subslice), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_tt._want));
                };
            };
        };
    }
