package stdgo.crypto.rsa;
@:structInit @:using(stdgo.crypto.rsa.Rsa.PrecomputedValues_static_extension) abstract PrecomputedValues(stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues) from stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues to stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues {
    public var dp(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dp():stdgo._internal.math.big.Big_Int_.Int_ return this.dp;
    function set_dp(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dp = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var dq(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_dq():stdgo._internal.math.big.Big_Int_.Int_ return this.dq;
    function set_dq(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.dq = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var qinv(get, set) : stdgo._internal.math.big.Big_Int_.Int_;
    function get_qinv():stdgo._internal.math.big.Big_Int_.Int_ return this.qinv;
    function set_qinv(v:stdgo._internal.math.big.Big_Int_.Int_):stdgo._internal.math.big.Big_Int_.Int_ {
        this.qinv = (v : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return v;
    }
    public var cRTValues(get, set) : Array<CRTValue>;
    function get_cRTValues():Array<CRTValue> return [for (i in this.cRTValues) i];
    function set_cRTValues(v:Array<CRTValue>):Array<CRTValue> {
        this.cRTValues = ([for (i in v) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>);
        return v;
    }
    public var _n(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__n():stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._n;
    function set__n(v:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._n = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return v;
    }
    public var _p(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__p():stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._p;
    function set__p(v:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._p = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return v;
    }
    public var _q(get, set) : stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus;
    function get__q():stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus return this._q;
    function set__q(v:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus):stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus {
        this._q = (v : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
        return v;
    }
    public function new(?dp:stdgo._internal.math.big.Big_Int_.Int_, ?dq:stdgo._internal.math.big.Big_Int_.Int_, ?qinv:stdgo._internal.math.big.Big_Int_.Int_, ?cRTValues:Array<CRTValue>, ?_n:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus, ?_p:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus, ?_q:stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus) this = new stdgo._internal.crypto.rsa.Rsa_PrecomputedValues.PrecomputedValues((dp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (dq : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), (qinv : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>), ([for (i in cRTValues) i] : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>), (_n : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>), (_p : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>), (_q : stdgo.Ref<stdgo._internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
