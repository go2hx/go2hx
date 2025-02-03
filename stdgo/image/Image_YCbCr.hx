package stdgo.image;
@:structInit @:using(stdgo.image.Image.YCbCr_static_extension) abstract YCbCr(stdgo._internal.image.Image_YCbCr.YCbCr) from stdgo._internal.image.Image_YCbCr.YCbCr to stdgo._internal.image.Image_YCbCr.YCbCr {
    public var y(get, set) : Array<std.UInt>;
    function get_y():Array<std.UInt> return [for (i in this.y) i];
    function set_y(v:Array<std.UInt>):Array<std.UInt> {
        this.y = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cb(get, set) : Array<std.UInt>;
    function get_cb():Array<std.UInt> return [for (i in this.cb) i];
    function set_cb(v:Array<std.UInt>):Array<std.UInt> {
        this.cb = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var cr(get, set) : Array<std.UInt>;
    function get_cr():Array<std.UInt> return [for (i in this.cr) i];
    function set_cr(v:Array<std.UInt>):Array<std.UInt> {
        this.cr = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var yStride(get, set) : StdTypes.Int;
    function get_yStride():StdTypes.Int return this.yStride;
    function set_yStride(v:StdTypes.Int):StdTypes.Int {
        this.yStride = (v : stdgo.GoInt);
        return v;
    }
    public var cStride(get, set) : StdTypes.Int;
    function get_cStride():StdTypes.Int return this.cStride;
    function set_cStride(v:StdTypes.Int):StdTypes.Int {
        this.cStride = (v : stdgo.GoInt);
        return v;
    }
    public var subsampleRatio(get, set) : YCbCrSubsampleRatio;
    function get_subsampleRatio():YCbCrSubsampleRatio return this.subsampleRatio;
    function set_subsampleRatio(v:YCbCrSubsampleRatio):YCbCrSubsampleRatio {
        this.subsampleRatio = v;
        return v;
    }
    public var rect(get, set) : Rectangle;
    function get_rect():Rectangle return this.rect;
    function set_rect(v:Rectangle):Rectangle {
        this.rect = v;
        return v;
    }
    public function new(?y:Array<std.UInt>, ?cb:Array<std.UInt>, ?cr:Array<std.UInt>, ?yStride:StdTypes.Int, ?cStride:StdTypes.Int, ?subsampleRatio:YCbCrSubsampleRatio, ?rect:Rectangle) this = new stdgo._internal.image.Image_YCbCr.YCbCr(([for (i in y) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cb) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in cr) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (yStride : stdgo.GoInt), (cStride : stdgo.GoInt), subsampleRatio, rect);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
