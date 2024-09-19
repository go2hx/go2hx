package stdgo._internal.encoding.gob;
@:structInit class GobTest4 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
    public var bv : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
    public var tv : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
    public function new(?x:stdgo.GoInt, ?v:stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber, ?bv:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber, ?tv:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bv != null) this.bv = bv;
        if (tv != null) this.tv = tv;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest4(x, v, bv, tv);
    }
}
