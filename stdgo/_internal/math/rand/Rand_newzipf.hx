package stdgo._internal.math.rand;
function newZipf(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _s:stdgo.GoFloat64, _v:stdgo.GoFloat64, _imax:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf> {
        var _z = (stdgo.Go.setRef(({} : stdgo._internal.math.rand.Rand_zipf.Zipf)) : stdgo.Ref<stdgo._internal.math.rand.Rand_zipf.Zipf>);
        if (((_s <= (1 : stdgo.GoFloat64) : Bool) || (_v < (1 : stdgo.GoFloat64) : Bool) : Bool)) {
            return null;
        };
        (@:checkr _z ?? throw "null pointer dereference")._r = _r;
        (@:checkr _z ?? throw "null pointer dereference")._imax = (_imax : stdgo.GoFloat64);
        (@:checkr _z ?? throw "null pointer dereference")._v = _v;
        (@:checkr _z ?? throw "null pointer dereference")._q = _s;
        (@:checkr _z ?? throw "null pointer dereference")._oneminusQ = ((1 : stdgo.GoFloat64) - (@:checkr _z ?? throw "null pointer dereference")._q : stdgo.GoFloat64);
        (@:checkr _z ?? throw "null pointer dereference")._oneminusQinv = ((1 : stdgo.GoFloat64) / (@:checkr _z ?? throw "null pointer dereference")._oneminusQ : stdgo.GoFloat64);
        (@:checkr _z ?? throw "null pointer dereference")._hxm = @:check2r _z._h(((@:checkr _z ?? throw "null pointer dereference")._imax + (0.5 : stdgo.GoFloat64) : stdgo.GoFloat64));
        (@:checkr _z ?? throw "null pointer dereference")._hx0minusHxm = ((@:check2r _z._h((0.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((stdgo._internal.math.Math_log.log((@:checkr _z ?? throw "null pointer dereference")._v) * (-(@:checkr _z ?? throw "null pointer dereference")._q) : stdgo.GoFloat64)) : stdgo.GoFloat64) - (@:checkr _z ?? throw "null pointer dereference")._hxm : stdgo.GoFloat64);
        (@:checkr _z ?? throw "null pointer dereference")._s = ((1 : stdgo.GoFloat64) - @:check2r _z._hinv((@:check2r _z._h((1.5 : stdgo.GoFloat64)) - stdgo._internal.math.Math_exp.exp((-(@:checkr _z ?? throw "null pointer dereference")._q * stdgo._internal.math.Math_log.log(((@:checkr _z ?? throw "null pointer dereference")._v + (1 : stdgo.GoFloat64) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64)) : stdgo.GoFloat64);
        return _z;
    }
