package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
function testExpTables(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = _internal.math.rand_test.Rand_test__initExp._initExp(), _testKe:stdgo.Slice<stdgo.GoUInt32> = __tmp__._0, _testWe:stdgo.Slice<stdgo.GoFloat32> = __tmp__._1, _testFe:stdgo.Slice<stdgo.GoFloat32> = __tmp__._2;
        {
            var _i = (_internal.math.rand_test.Rand_test__compareUint32Slices._compareUint32Slices((_internal.math.rand_test.Rand_test__ke._ke.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt32>), _testKe) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("ke disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__ke._ke[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testKe[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i = (_internal.math.rand_test.Rand_test__compareFloat32Slices._compareFloat32Slices((_internal.math.rand_test.Rand_test__we._we.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testWe) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("we disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__we._we[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testWe[(_i : stdgo.GoInt)]));
            };
        };
        {
            var _i = (_internal.math.rand_test.Rand_test__compareFloat32Slices._compareFloat32Slices((_internal.math.rand_test.Rand_test__fe._fe.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoFloat32>), _testFe) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("fe disagrees at index %v; %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_internal.math.rand_test.Rand_test__fe._fe[(_i : stdgo.GoInt)]), stdgo.Go.toInterface(_testFe[(_i : stdgo.GoInt)]));
            };
        };
    }
