package stdgo._internal.encoding.json;
@:structInit class XYZ {
    public var x : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var y : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public var z : stdgo.AnyInterface = (null : stdgo.AnyInterface);
    public function new(?x:stdgo.AnyInterface, ?y:stdgo.AnyInterface, ?z:stdgo.AnyInterface) {
        if (x != null) this.x = x;
        if (y != null) this.y = y;
        if (z != null) this.z = z;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new XYZ(x, y, z);
    }
}
