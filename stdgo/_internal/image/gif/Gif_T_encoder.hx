package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_T_encoder_static_extension.T_encoder_static_extension) class T_encoder {
    public var _w : stdgo._internal.image.gif.Gif_T_writer.T_writer = (null : stdgo._internal.image.gif.Gif_T_writer.T_writer);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _g : stdgo._internal.image.gif.Gif_GIF.GIF = ({} : stdgo._internal.image.gif.Gif_GIF.GIF);
    public var _globalCT : stdgo.GoInt = 0;
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public var _globalColorTable : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768, ...[for (i in 0 ... 768) (0 : stdgo.GoUInt8)]);
    public var _localColorTable : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768, ...[for (i in 0 ... 768) (0 : stdgo.GoUInt8)]);
    public function new(?_w:stdgo._internal.image.gif.Gif_T_writer.T_writer, ?_err:stdgo.Error, ?_g:stdgo._internal.image.gif.Gif_GIF.GIF, ?_globalCT:stdgo.GoInt, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_globalColorTable:stdgo.GoArray<stdgo.GoUInt8>, ?_localColorTable:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_w != null) this._w = _w;
        if (_err != null) this._err = _err;
        if (_g != null) this._g = _g;
        if (_globalCT != null) this._globalCT = _globalCT;
        if (_buf != null) this._buf = _buf;
        if (_globalColorTable != null) this._globalColorTable = _globalColorTable;
        if (_localColorTable != null) this._localColorTable = _localColorTable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_encoder(_w, _err, _g, _globalCT, _buf, _globalColorTable, _localColorTable);
    }
}
