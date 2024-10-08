package stdgo._internal.crypto.dsa;
@:structInit class Parameters {
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var q : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var g : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public function new(?p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?q:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?g:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>) {
        if (p != null) this.p = p;
        if (q != null) this.q = q;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Parameters(p, q, g);
    }
}
