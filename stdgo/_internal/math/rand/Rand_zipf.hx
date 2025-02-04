package stdgo._internal.math.rand;
@:structInit @:using(stdgo._internal.math.rand.Rand_zipf_static_extension.Zipf_static_extension) class Zipf {
    public var _r : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand> = (null : stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>);
    public var _imax : stdgo.GoFloat64 = 0;
    public var _v : stdgo.GoFloat64 = 0;
    public var _q : stdgo.GoFloat64 = 0;
    public var _s : stdgo.GoFloat64 = 0;
    public var _oneminusQ : stdgo.GoFloat64 = 0;
    public var _oneminusQinv : stdgo.GoFloat64 = 0;
    public var _hxm : stdgo.GoFloat64 = 0;
    public var _hx0minusHxm : stdgo.GoFloat64 = 0;
    public function new(?_r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, ?_imax:stdgo.GoFloat64, ?_v:stdgo.GoFloat64, ?_q:stdgo.GoFloat64, ?_s:stdgo.GoFloat64, ?_oneminusQ:stdgo.GoFloat64, ?_oneminusQinv:stdgo.GoFloat64, ?_hxm:stdgo.GoFloat64, ?_hx0minusHxm:stdgo.GoFloat64) {
        if (_r != null) this._r = _r;
        if (_imax != null) this._imax = _imax;
        if (_v != null) this._v = _v;
        if (_q != null) this._q = _q;
        if (_s != null) this._s = _s;
        if (_oneminusQ != null) this._oneminusQ = _oneminusQ;
        if (_oneminusQinv != null) this._oneminusQinv = _oneminusQinv;
        if (_hxm != null) this._hxm = _hxm;
        if (_hx0minusHxm != null) this._hx0minusHxm = _hx0minusHxm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Zipf(_r, _imax, _v, _q, _s, _oneminusQ, _oneminusQinv, _hxm, _hx0minusHxm);
    }
}
