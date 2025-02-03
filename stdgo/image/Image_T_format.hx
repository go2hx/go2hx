package stdgo.image;
@:structInit @:using(stdgo.image.Image.T_format_static_extension) abstract T_format(stdgo._internal.image.Image_T_format.T_format) from stdgo._internal.image.Image_T_format.T_format to stdgo._internal.image.Image_T_format.T_format {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _magic(get, set) : String;
    function get__magic():String return this._magic;
    function set__magic(v:String):String {
        this._magic = (v : stdgo.GoString);
        return v;
    }
    public var _decode(get, set) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; };
    function get__decode():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } return _0 -> this._decode(_0);
    function set__decode(v:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; }):stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } {
        this._decode = v;
        return v;
    }
    public var _decodeConfig(get, set) : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; };
    function get__decodeConfig():stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; } return _0 -> this._decodeConfig(_0);
    function set__decodeConfig(v:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; }):stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; } {
        this._decodeConfig = v;
        return v;
    }
    public function new(?_name:String, ?_magic:String, ?_decode:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; }, ?_decodeConfig:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; }) this = new stdgo._internal.image.Image_T_format.T_format((_name : stdgo.GoString), (_magic : stdgo.GoString), _decode, _decodeConfig);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
