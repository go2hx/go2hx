package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.T_decoder_static_extension) abstract T_decoder(stdgo._internal.image.gif.Gif_T_decoder.T_decoder) from stdgo._internal.image.gif.Gif_T_decoder.T_decoder to stdgo._internal.image.gif.Gif_T_decoder.T_decoder {
    public var _r(get, set) : T_reader;
    function get__r():T_reader return this._r;
    function set__r(v:T_reader):T_reader {
        this._r = v;
        return v;
    }
    public var _vers(get, set) : String;
    function get__vers():String return this._vers;
    function set__vers(v:String):String {
        this._vers = (v : stdgo.GoString);
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _height(get, set) : StdTypes.Int;
    function get__height():StdTypes.Int return this._height;
    function set__height(v:StdTypes.Int):StdTypes.Int {
        this._height = (v : stdgo.GoInt);
        return v;
    }
    public var _loopCount(get, set) : StdTypes.Int;
    function get__loopCount():StdTypes.Int return this._loopCount;
    function set__loopCount(v:StdTypes.Int):StdTypes.Int {
        this._loopCount = (v : stdgo.GoInt);
        return v;
    }
    public var _delayTime(get, set) : StdTypes.Int;
    function get__delayTime():StdTypes.Int return this._delayTime;
    function set__delayTime(v:StdTypes.Int):StdTypes.Int {
        this._delayTime = (v : stdgo.GoInt);
        return v;
    }
    public var _backgroundIndex(get, set) : std.UInt;
    function get__backgroundIndex():std.UInt return this._backgroundIndex;
    function set__backgroundIndex(v:std.UInt):std.UInt {
        this._backgroundIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public var _disposalMethod(get, set) : std.UInt;
    function get__disposalMethod():std.UInt return this._disposalMethod;
    function set__disposalMethod(v:std.UInt):std.UInt {
        this._disposalMethod = (v : stdgo.GoUInt8);
        return v;
    }
    public var _imageFields(get, set) : std.UInt;
    function get__imageFields():std.UInt return this._imageFields;
    function set__imageFields(v:std.UInt):std.UInt {
        this._imageFields = (v : stdgo.GoUInt8);
        return v;
    }
    public var _transparentIndex(get, set) : std.UInt;
    function get__transparentIndex():std.UInt return this._transparentIndex;
    function set__transparentIndex(v:std.UInt):std.UInt {
        this._transparentIndex = (v : stdgo.GoUInt8);
        return v;
    }
    public var _hasTransparentIndex(get, set) : Bool;
    function get__hasTransparentIndex():Bool return this._hasTransparentIndex;
    function set__hasTransparentIndex(v:Bool):Bool {
        this._hasTransparentIndex = v;
        return v;
    }
    public var _globalColorTable(get, set) : stdgo._internal.image.color.Color_Palette.Palette;
    function get__globalColorTable():stdgo._internal.image.color.Color_Palette.Palette return this._globalColorTable;
    function set__globalColorTable(v:stdgo._internal.image.color.Color_Palette.Palette):stdgo._internal.image.color.Color_Palette.Palette {
        this._globalColorTable = v;
        return v;
    }
    public var _delay(get, set) : Array<StdTypes.Int>;
    function get__delay():Array<StdTypes.Int> return [for (i in this._delay) i];
    function set__delay(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._delay = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _disposal(get, set) : Array<std.UInt>;
    function get__disposal():Array<std.UInt> return [for (i in this._disposal) i];
    function set__disposal(v:Array<std.UInt>):Array<std.UInt> {
        this._disposal = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _image(get, set) : Array<stdgo._internal.image.Image_Paletted.Paletted>;
    function get__image():Array<stdgo._internal.image.Image_Paletted.Paletted> return [for (i in this._image) i];
    function set__image(v:Array<stdgo._internal.image.Image_Paletted.Paletted>):Array<stdgo._internal.image.Image_Paletted.Paletted> {
        this._image = ([for (i in v) (i : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>>);
        return v;
    }
    public var _tmp(get, set) : haxe.ds.Vector<std.UInt>;
    function get__tmp():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._tmp) i]);
    function set__tmp(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:T_reader, ?_vers:String, ?_width:StdTypes.Int, ?_height:StdTypes.Int, ?_loopCount:StdTypes.Int, ?_delayTime:StdTypes.Int, ?_backgroundIndex:std.UInt, ?_disposalMethod:std.UInt, ?_imageFields:std.UInt, ?_transparentIndex:std.UInt, ?_hasTransparentIndex:Bool, ?_globalColorTable:stdgo._internal.image.color.Color_Palette.Palette, ?_delay:Array<StdTypes.Int>, ?_disposal:Array<std.UInt>, ?_image:Array<stdgo._internal.image.Image_Paletted.Paletted>, ?_tmp:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.image.gif.Gif_T_decoder.T_decoder(
_r,
(_vers : stdgo.GoString),
(_width : stdgo.GoInt),
(_height : stdgo.GoInt),
(_loopCount : stdgo.GoInt),
(_delayTime : stdgo.GoInt),
(_backgroundIndex : stdgo.GoUInt8),
(_disposalMethod : stdgo.GoUInt8),
(_imageFields : stdgo.GoUInt8),
(_transparentIndex : stdgo.GoUInt8),
_hasTransparentIndex,
_globalColorTable,
([for (i in _delay) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>),
([for (i in _disposal) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>),
([for (i in _image) (i : stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.image.Image_Paletted.Paletted>>),
([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
