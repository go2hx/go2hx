package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_GobTest5_static_extension.GobTest5_static_extension) class GobTest5 {
    public var x : stdgo.GoInt = 0;
    public var v : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>);
    public var bV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>);
    public var tV : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>);
    public function new(?x:stdgo.GoInt, ?v:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_ValueGobber.ValueGobber>, ?bV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryValueGobber.BinaryValueGobber>, ?tV:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextValueGobber.TextValueGobber>) {
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
