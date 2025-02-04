package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtest3_static_extension.GobTest3_static_extension) class GobTest3 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_gobber.Gobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_gobber.Gobber>);
    public var b : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber>);
    public var t : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textgobber.TextGobber> = (null : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textgobber.TextGobber>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_gobber.Gobber>, ?b:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_binarygobber.BinaryGobber>, ?t:stdgo.Pointer<stdgo._internal.encoding.gob.Gob_textgobber.TextGobber>) {
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
