package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
function new_(_src:stdgo._internal.math.rand.Rand_Source.Source):stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_src) : stdgo._internal.math.rand.Rand_Source64.Source64)) : stdgo._internal.math.rand.Rand_Source64.Source64), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.math.rand.Rand_Source64.Source64), _1 : false };
        }, _s64 = __tmp__._0, __8 = __tmp__._1;
        return (stdgo.Go.setRef(({ _src : _src, _s64 : _s64 } : stdgo._internal.math.rand.Rand_Rand.Rand)) : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
    }