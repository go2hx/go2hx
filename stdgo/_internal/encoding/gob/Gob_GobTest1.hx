package stdgo._internal.encoding.gob;
@:structInit class GobTest1 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_StringStruct.StringStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest1(x, g);
    }
}
