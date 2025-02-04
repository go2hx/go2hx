package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtest6_static_extension.GobTest6_static_extension) class GobTest6 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
    public var w : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber>);
    public var bV : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
    public var bW : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber>);
    public var tV : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
    public var tW : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber>);
    public function new(?x:stdgo.GoInt, ?v:stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber, ?w:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber>, ?bV:stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber, ?bW:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber>, ?tV:stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber, ?tW:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber>) {
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
        return new GobTest6(x, v, w, bV, bW, tV, tW);
    }
}
