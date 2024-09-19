package stdgo._internal.math.rand;
import stdgo._internal.unsafe.Unsafe;
function newZipf(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_Zipf.Zipf> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_Zipf.Zipf)) : stdgo.Ref<stdgo._internal.math.rand.Rand_Zipf.Zipf>);
        if (((_s <= (1 : stdgo.GoFloat64) : Bool) || (_v < (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            return null;
        };
        _z._r = _r;
        _z._imax = (_imax : stdgo.GoFloat64);
        _z._v = _v;
        _z._q = _s;
        _z._oneminusQ = ((1 : stdgo.GoFloat64) - _z._q : stdgo.GoFloat64);
        _z._oneminusQinv = ((1 : stdgo.GoFloat64) / _z._oneminusQ : stdgo.GoFloat64);
        _z._hxm = _z._h((_z._imax + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
        _z._hx0minusHxm = ((_z._h((0.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((stdgo._internal.math.Math_log.log(_z._v) * (-_z._q) : stdgo.GoFloat64)) : stdgo.GoFloat64) - _z._hxm : stdgo.GoFloat64);
        _z._s = ((1 : stdgo.GoFloat64) - _z._hinv((_z._h((1.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((-_z._q * stdgo._internal.math.Math_log.log((_z._v + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return _z;
    }
