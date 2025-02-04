package stdgo._internal.testing.quick;
function _randFloat32(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>):stdgo.GoFloat32 {
        var _f = (@:check2r _rand.float64() * (3.4028234663852886e+38 : stdgo.GoFloat64) : stdgo.GoFloat64);
        if ((@:check2r _rand.int_() & (1 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            _f = -_f;
        };
        return (_f : stdgo.GoFloat32);
    }
