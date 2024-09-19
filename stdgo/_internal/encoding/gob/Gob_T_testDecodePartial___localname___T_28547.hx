package stdgo._internal.encoding.gob;
@:structInit class T_testDecodePartial___localname___T_28547 {
    public var x : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var y : stdgo.GoString = "";
    public function new(?x:stdgo.Slice<stdgo.GoInt>, ?y:stdgo.GoString) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_testDecodePartial___localname___T_28547(x, y);
    }
}
