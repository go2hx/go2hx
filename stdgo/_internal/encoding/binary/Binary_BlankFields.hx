package stdgo._internal.encoding.binary;
@:structInit class BlankFields {
    public var a : stdgo.GoUInt32 = 0;
    @:optional
    public var __4 : stdgo.GoInt32 = 0;
    public var b : stdgo.GoFloat64 = 0;
    @:optional
    public var __5 : stdgo.GoArray<stdgo.GoInt16> = new stdgo.GoArray<stdgo.GoInt16>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoInt16)]);
    public var c : stdgo.GoUInt8 = 0;
    @:optional
    public var __6 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(7, 7, ...[for (i in 0 ... 7) (0 : stdgo.GoUInt8)]);
    @:optional
    public var __7 : { var _f : stdgo.GoArray<stdgo.GoFloat32>; } = { _f : new stdgo.GoArray<stdgo.GoFloat32>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoFloat32)]) };
    public function new(?a:stdgo.GoUInt32, ?__4:stdgo.GoInt32, ?b:stdgo.GoFloat64, ?__5:stdgo.GoArray<stdgo.GoInt16>, ?c:stdgo.GoUInt8, ?__6:stdgo.GoArray<stdgo.GoUInt8>, ?__7:{ var _f : stdgo.GoArray<stdgo.GoFloat32>; }) {
        if (a != null) this.a = a;
        if (__4 != null) this.__4 = __4;
        if (b != null) this.b = b;
        if (__5 != null) this.__5 = __5;
        if (c != null) this.c = c;
        if (__6 != null) this.__6 = __6;
        if (__7 != null) this.__7 = __7;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new BlankFields(a, __4, b, __5, c, __6, __7);
    }
}