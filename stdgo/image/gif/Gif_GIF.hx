package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.GIF_static_extension) abstract GIF(stdgo._internal.image.gif.Gif_GIF.GIF) from stdgo._internal.image.gif.Gif_GIF.GIF to stdgo._internal.image.gif.Gif_GIF.GIF {
    public var image(get, set) : Array<stdgo._internal.image.Image_Paletted.Paletted>;
    function get_image():Array<stdgo._internal.image.Image_Paletted.Paletted> return [for (i in this.image) i];
    function set_image(v:Array<stdgo._internal.image.Image_Paletted.Paletted>):Array<stdgo._internal.image.Image_Paletted.Paletted> {
        this.image = ([for (i in v) (i : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>>);
        return v;
    }
    public var delay(get, set) : Array<StdTypes.Int>;
    function get_delay():Array<StdTypes.Int> return [for (i in this.delay) i];
    function set_delay(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this.delay = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var loopCount(get, set) : StdTypes.Int;
    function get_loopCount():StdTypes.Int return this.loopCount;
    function set_loopCount(v:StdTypes.Int):StdTypes.Int {
        this.loopCount = (v : stdgo.GoInt);
        return v;
    }
    public var disposal(get, set) : Array<std.UInt>;
    function get_disposal():Array<std.UInt> return [for (i in this.disposal) i];
    function set_disposal(v:Array<std.UInt>):Array<std.UInt> {
        this.disposal = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var config(get, set) : stdgo._internal.image.Image_Config.Config;
    function get_config():stdgo._internal.image.Image_Config.Config return this.config;
    function set_config(v:stdgo._internal.image.Image_Config.Config):stdgo._internal.image.Image_Config.Config {
        this.config = v;
        return v;
    }
    public var backgroundIndex(get, set) : std.UInt;
    function get_backgroundIndex():std.UInt return this.backgroundIndex;
    function set_backgroundIndex(v:std.UInt):std.UInt {
        this.backgroundIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?image:Array<stdgo._internal.image.Image_Paletted.Paletted>, ?delay:Array<StdTypes.Int>, ?loopCount:StdTypes.Int, ?disposal:Array<std.UInt>, ?config:stdgo._internal.image.Image_Config.Config, ?backgroundIndex:std.UInt) this = new stdgo._internal.image.gif.Gif_GIF.GIF(([for (i in image) (i : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>>), ([for (i in delay) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (loopCount : stdgo.GoInt), ([for (i in disposal) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), config, (backgroundIndex : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
