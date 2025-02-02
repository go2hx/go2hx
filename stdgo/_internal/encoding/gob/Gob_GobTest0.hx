package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_GobTest0_static_extension.GobTest0_static_extension) class GobTest0 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest0(x, g);
    }
}
