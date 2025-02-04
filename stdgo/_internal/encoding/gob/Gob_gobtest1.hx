package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_gobtest1_static_extension.GobTest1_static_extension) class GobTest1 {
    public var x : stdgo.GoInt = 0;
    public var g : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>);
    public function new(?x:stdgo.GoInt, ?g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_stringstruct.StringStruct>) {
        if (x != null) this.x = x;
        if (g != null) this.g = g;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new GobTest1(x, g);
    }
}
