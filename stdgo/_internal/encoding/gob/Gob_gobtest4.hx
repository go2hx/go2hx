package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtest4_static_extension.GobTest4_static_extension) class GobTest4 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber);
    public var bV : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber);
    public var tV : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber = (("" : stdgo.GoString) : stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber);
    public function new(?x:stdgo.GoInt, ?v:stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber, ?bV:stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber, ?tV:stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber) {
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
