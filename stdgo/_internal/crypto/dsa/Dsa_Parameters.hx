package stdgo._internal.crypto.dsa;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.math.big.Big;
import stdgo._internal.crypto.internal.randutil.Randutil;
@:structInit @:using(stdgo._internal.crypto.dsa.Dsa_Parameters_static_extension.Parameters_static_extension) class Parameters {
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
