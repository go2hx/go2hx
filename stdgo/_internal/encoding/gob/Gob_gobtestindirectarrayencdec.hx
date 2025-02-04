package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtestindirectarrayencdec_static_extension.GobTestIndirectArrayEncDec_static_extension) class GobTestIndirectArrayEncDec {
    public var x : stdgo.GoInt = 0;
    public var a : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>>> = (null : stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>>>);
    public function new(?x:stdgo.GoInt, ?a:stdgo.Pointer<stdgo.Ref<stdgo.Ref<stdgo._internal.encoding.gob.Gob_arraystruct.ArrayStruct>>>) {
        if (x != null) this.x = x;
        if (a != null) this.a = a;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTestIndirectArrayEncDec(x, a);
    }
}
