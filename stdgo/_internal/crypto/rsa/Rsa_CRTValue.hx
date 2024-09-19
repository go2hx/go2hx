package stdgo._internal.crypto.rsa;
@:structInit class CRTValue {
    public var exp : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var coeff : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var r : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?exp:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?coeff:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?r:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (exp != null) this.exp = exp;
        if (coeff != null) this.coeff = coeff;
        if (r != null) this.r = r;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CRTValue(exp, coeff, r);
    }
}