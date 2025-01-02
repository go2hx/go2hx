package stdgo._internal.encoding.gob;
@:structInit class GobTest7 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>);
    public var w : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
    public var bV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>);
    public var bW : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
    public var tV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>);
    public var tW : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
    public function new(?x:stdgo.GoInt, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>, ?w:stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber, ?bV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>, ?bW:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber, ?tV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>, ?tW:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bV != null) this.bV = bV;
        if (bW != null) this.bW = bW;
        if (tV != null) this.tV = tV;
        if (tW != null) this.tW = tW;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest7(x, v, w, bV, bW, tV, tW);
    }
}
