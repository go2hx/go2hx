package stdgo.math.rand;
@:structInit @:using(stdgo.math.rand.Rand.Zipf_static_extension) abstract Zipf(stdgo._internal.math.rand.Rand_Zipf.Zipf) from stdgo._internal.math.rand.Rand_Zipf.Zipf to stdgo._internal.math.rand.Rand_Zipf.Zipf {
    public var _r(get, set) : Rand_;
    function get__r():Rand_ return this._r;
    function set__r(v:Rand_):Rand_ {
        this._r = (v : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>);
        return v;
    }
    public var _imax(get, set) : StdTypes.Float;
    function get__imax():StdTypes.Float return this._imax;
    function set__imax(v:StdTypes.Float):StdTypes.Float {
        this._imax = (v : stdgo.GoFloat64);
        return v;
    }
    public var _v(get, set) : StdTypes.Float;
    function get__v():StdTypes.Float return this._v;
    function set__v(v:StdTypes.Float):StdTypes.Float {
        this._v = (v : stdgo.GoFloat64);
        return v;
    }
    public var _q(get, set) : StdTypes.Float;
    function get__q():StdTypes.Float return this._q;
    function set__q(v:StdTypes.Float):StdTypes.Float {
        this._q = (v : stdgo.GoFloat64);
        return v;
    }
    public var _s(get, set) : StdTypes.Float;
    function get__s():StdTypes.Float return this._s;
    function set__s(v:StdTypes.Float):StdTypes.Float {
        this._s = (v : stdgo.GoFloat64);
        return v;
    }
    public var _oneminusQ(get, set) : StdTypes.Float;
    function get__oneminusQ():StdTypes.Float return this._oneminusQ;
    function set__oneminusQ(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQ = (v : stdgo.GoFloat64);
        return v;
    }
    public var _oneminusQinv(get, set) : StdTypes.Float;
    function get__oneminusQinv():StdTypes.Float return this._oneminusQinv;
    function set__oneminusQinv(v:StdTypes.Float):StdTypes.Float {
        this._oneminusQinv = (v : stdgo.GoFloat64);
        return v;
    }
    public var _hxm(get, set) : StdTypes.Float;
    function get__hxm():StdTypes.Float return this._hxm;
    function set__hxm(v:StdTypes.Float):StdTypes.Float {
        this._hxm = (v : stdgo.GoFloat64);
        return v;
    }
    public var _hx0minusHxm(get, set) : StdTypes.Float;
    function get__hx0minusHxm():StdTypes.Float return this._hx0minusHxm;
    function set__hx0minusHxm(v:StdTypes.Float):StdTypes.Float {
        this._hx0minusHxm = (v : stdgo.GoFloat64);
        return v;
    }
    public function new(?_r:Rand_, ?_imax:StdTypes.Float, ?_v:StdTypes.Float, ?_q:StdTypes.Float, ?_s:StdTypes.Float, ?_oneminusQ:StdTypes.Float, ?_oneminusQinv:StdTypes.Float, ?_hxm:StdTypes.Float, ?_hx0minusHxm:StdTypes.Float) this = new stdgo._internal.math.rand.Rand_Zipf.Zipf((_r : stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>), (_imax : stdgo.GoFloat64), (_v : stdgo.GoFloat64), (_q : stdgo.GoFloat64), (_s : stdgo.GoFloat64), (_oneminusQ : stdgo.GoFloat64), (_oneminusQinv : stdgo.GoFloat64), (_hxm : stdgo.GoFloat64), (_hx0minusHxm : stdgo.GoFloat64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
