package stdgo._internal.encoding.gob;
@:structInit class GobTest7 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>);
    public var w : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber);
    public var bv : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>);
    public var bw : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber);
    public var tv : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>);
    public var tw : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber);
    public function new(?x:stdgo.GoInt, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>, ?w:stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber, ?bv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>, ?bw:stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber, ?tv:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>, ?tw:stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (w != null) this.w = w;
        if (bv != null) this.bv = bv;
        if (bw != null) this.bw = bw;
        if (tv != null) this.tv = tv;
        if (tw != null) this.tw = tw;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest7(x, v, w, bv, bw, tv, tw);
    }
}