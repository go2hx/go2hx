package stdgo._internal.crypto.rsa;
@:structInit class PrecomputedValues {
    public var dp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var dq : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var qinv : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var cRTValues : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue> = (null : stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>);
    public var _n : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
    public var _p : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
    public var _q : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus> = (null : stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>);
    public function new(?dp:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?dq:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?qinv:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?cRTValues:stdgo.Slice<stdgo._internal.crypto.rsa.Rsa_CRTValue.CRTValue>, ?_n:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>, ?_p:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>, ?_q:stdgo.Ref<_internal.crypto.internal.bigmod.Bigmod_Modulus.Modulus>) {
        if (dp != null) this.dp = dp;
        if (dq != null) this.dq = dq;
        if (qinv != null) this.qinv = qinv;
        if (cRTValues != null) this.cRTValues = cRTValues;
        if (_n != null) this._n = _n;
        if (_p != null) this._p = _p;
        if (_q != null) this._q = _q;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PrecomputedValues(dp, dq, qinv, cRTValues, _n, _p, _q);
    }
}
