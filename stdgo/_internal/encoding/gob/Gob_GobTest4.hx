package stdgo._internal.encoding.gob;
@:structInit class GobTest4 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
    public var bV : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
    public var tV : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
    public function new(?x:stdgo.GoInt, ?v:stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber, ?bV:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber, ?tV:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bV != null) this.bV = bV;
        if (tV != null) this.tV = tV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest4(x, v, bV, tV);
    }
}
