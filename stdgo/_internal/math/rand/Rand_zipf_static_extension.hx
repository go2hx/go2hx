package stdgo._internal.math.rand;
@:keep @:allow(stdgo._internal.math.rand.Rand.Zipf_asInterface) class Zipf_static_extension {
    @:keep
    @:tdfield
    static public function uint64( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>):stdgo.GoUInt64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        if ((_z == null || (_z : Dynamic).__nil__)) {
            throw stdgo.Go.toInterface(("rand: nil Zipf" : stdgo.GoString));
        };
        var _k = (0 : stdgo.GoFloat64);
        while (true) {
            var _r = (@:check2r (@:checkr _z ?? throw "null pointer dereference")._r.float64() : stdgo.GoFloat64);
            var _ur = ((@:checkr _z ?? throw "null pointer dereference")._hxm + (_r * (@:checkr _z ?? throw "null pointer dereference")._hx0minusHxm : stdgo.GoFloat64) : stdgo.GoFloat64);
            var _x = (@:check2r _z._hinv(_ur) : stdgo.GoFloat64);
            _k = stdgo._internal.math.Math_floor.floor((_x + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
            if (((_k - _x : stdgo.GoFloat64) <= (@:checkr _z ?? throw "null pointer dereference")._s : Bool)) {
                break;
            };
            if ((_ur >= (@:check2r _z._h((_k + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((-stdgo._internal.math.Math_log.log((_k + (@:checkr _z ?? throw "null pointer dereference")._v : stdgo.GoFloat64)) * (@:checkr _z ?? throw "null pointer dereference")._q : stdgo.GoFloat64)) : stdgo.GoFloat64) : Bool)) {
                break;
            };
        };
        return (_k : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _hinv( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        return (stdgo._internal.math.Math_exp.exp(((@:checkr _z ?? throw "null pointer dereference")._oneminusQinv * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw "null pointer dereference")._oneminusQ * _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) - (@:checkr _z ?? throw "null pointer dereference")._v : stdgo.GoFloat64);
    }
    @:keep
    @:tdfield
    static public function _h( _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>, _x:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _z:stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> = _z;
        return (stdgo._internal.math.Math_exp.exp(((@:checkr _z ?? throw "null pointer dereference")._oneminusQ * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw "null pointer dereference")._v + _x : stdgo.GoFloat64)) : stdgo.GoFloat64)) * (@:checkr _z ?? throw "null pointer dereference")._oneminusQinv : stdgo.GoFloat64);
    }
}
