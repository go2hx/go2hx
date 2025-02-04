package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtest5_static_extension.GobTest5_static_extension) class GobTest5 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber>);
    public var bV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber>);
    public var tV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber>);
    public function new(?x:stdgo.GoInt, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_valuegobber.ValueGobber>, ?bV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binaryvaluegobber.BinaryValueGobber>, ?tV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textvaluegobber.TextValueGobber>) {
        if (x != null) this.x = x;
        if (v != null) this.v = v;
        if (bV != null) this.bV = bV;
        if (tV != null) this.tV = tV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest5(x, v, bV, tV);
    }
}
