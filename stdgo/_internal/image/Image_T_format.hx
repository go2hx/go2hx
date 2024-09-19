package stdgo._internal.image;
@:structInit class T_format {
    public var _name : stdgo.GoString = "";
    public var _magic : stdgo.GoString = "";
    public var _decode : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; } = null;
    public var _decodeConfig : stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; } = null;
    public function new(?_name:stdgo.GoString, ?_magic:stdgo.GoString, ?_decode:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Image.Image; var _1 : stdgo.Error; }, ?_decodeConfig:stdgo._internal.io.Io_Reader.Reader -> { var _0 : stdgo._internal.image.Image_Config.Config; var _1 : stdgo.Error; }) {
        if (_name != null) this._name = _name;
        if (_magic != null) this._magic = _magic;
        if (_decode != null) this._decode = _decode;
        if (_decodeConfig != null) this._decodeConfig = _decodeConfig;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_format(_name, _magic, _decode, _decodeConfig);
    }
}