package stdgo._internal.encoding.binary;
@:structInit @:using(stdgo._internal.encoding.binary.Binary_blankfieldsprobe_static_extension.BlankFieldsProbe_static_extension) class BlankFieldsProbe {
    public var a : stdgo.GoUInt32 = 0;
    public var p0 : stdgo.GoInt32 = 0;
    public var b : stdgo.GoFloat64 = 0;
    public var p1 : stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(4, 4).__setNumber32__();
    public var c : stdgo.GoUInt8 = 0;
    public var p2 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(7, 7).__setNumber32__();
    public var p3 : { var f : stdgo.GoArray<stdgo.GoFloat32>; } = { f : new stdgo.GoArray<stdgo.GoFloat32>(8, 8).__setNumber32__() };
    public function new(?a:stdgo.GoUInt32, ?p0:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?p1:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?p2:stdgo.GoArray<stdgo.GoUInt8>, ?p3:{ var f : stdgo.GoArray<stdgo.GoFloat32>; }) {
        if (a != null) this.a = a;
        if (p0 != null) this.p0 = p0;
        if (b != null) this.b = b;
        if (p1 != null) this.p1 = p1;
        if (c != null) this.c = c;
        if (p2 != null) this.p2 = p2;
        if (p3 != null) this.p3 = p3;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlankFieldsProbe(a, p0, b, p1, c, p2, p3);
    }
}
