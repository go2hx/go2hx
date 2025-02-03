package stdgo.image;
@:structInit @:using(stdgo.image.Image.NRGBA64_static_extension) abstract NRGBA64(stdgo._internal.image.Image_NRGBA64.NRGBA64) from stdgo._internal.image.Image_NRGBA64.NRGBA64 to stdgo._internal.image.Image_NRGBA64.NRGBA64 {
    public var pix(get, set) : Array<std.UInt>;
    function get_pix():Array<std.UInt> return [for (i in this.pix) i];
    function set_pix(v:Array<std.UInt>):Array<std.UInt> {
        this.pix = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var stride(get, set) : StdTypes.Int;
    function get_stride():StdTypes.Int return this.stride;
    function set_stride(v:StdTypes.Int):StdTypes.Int {
        this.stride = (v : stdgo.GoInt);
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?pix:Array<std.UInt>, ?stride:StdTypes.Int, ?rect:Rectangle) this = new stdgo._internal.image.Image_NRGBA64.NRGBA64(([for (i in pix) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (stride : stdgo.GoInt), rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
