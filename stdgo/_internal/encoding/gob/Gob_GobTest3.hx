package stdgo._internal.encoding.gob;
@:structInit class GobTest3 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>);
    public var b : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber>);
    public var t : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_Gobber.Gobber>, ?b:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_BinaryGobber.BinaryGobber>, ?t:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_TextGobber.TextGobber>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
        if (b != null) this.b = b;
        if (t != null) this.t = t;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest3(x, g, b, t);
    }
}
