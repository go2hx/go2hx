package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testNormTables(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = _internal.math.rand_test.Rand_test__initNorm._initNorm(), _testKn:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _testWn:stdgo.Slice<stdgo.GoFloat32> = __tmp__._1, _testFn:stdgo.Slice<stdgo.GoFloat32> = __tmp__._2;
        {
            var _i = (_internal.math.rand_test.Rand_test__compareUint32Slices._compareUint32Slices((_internal.math.rand_test.Rand_test__kn._kn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>), _testKn) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("kn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__kn._kn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testKn[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i = (_internal.math.rand_test.Rand_test__compareFloat32Slices._compareFloat32Slices((_internal.math.rand_test.Rand_test__wn._wn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testWn) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("wn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__wn._wn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testWn[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i = (_internal.math.rand_test.Rand_test__compareFloat32Slices._compareFloat32Slices((_internal.math.rand_test.Rand_test__fn._fn.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testFn) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("fn disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__fn._fn[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testFn[(_i : stdgo.GoInt)]));
            };
        };
    }
