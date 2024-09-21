package _internal.math.rand_test;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.math.rand.Rand;
class T_statsResults_asInterface {
    @:keep
    public dynamic function _checkSimilarDistribution(_expected:stdgo.Ref<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>):stdgo.Error return __self__.value._checkSimilarDistribution(_expected);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.math.rand_test.Rand_test_T_statsResults.T_statsResults>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
