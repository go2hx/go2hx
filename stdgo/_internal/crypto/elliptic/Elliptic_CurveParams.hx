package stdgo._internal.crypto.elliptic;
import stdgo._internal.crypto.internal.nistec.Nistec;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.crypto.elliptic.Elliptic_CurveParams_static_extension.CurveParams_static_extension) class CurveParams {
    public var p : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var n : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var b : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var gx : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var gy : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
    public var bitSize : stdgo.GoInt = 0;
    public var name : stdgo.GoString = "";
    public function new(?p:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?n:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?b:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?gx:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?gy:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>, ?bitSize:stdgo.GoInt, ?name:stdgo.GoString) {
        if (p != null) this.p = p;
        if (n != null) this.n = n;
        if (b != null) this.b = b;
        if (gx != null) this.gx = gx;
        if (gy != null) this.gy = gy;
        if (bitSize != null) this.bitSize = bitSize;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CurveParams(p, n, b, gx, gy, bitSize, name);
    }
}
