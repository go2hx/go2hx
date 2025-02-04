package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_t_blockreader_static_extension.T_blockReader_static_extension) class T_blockReader {
    public var _d : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder> = (null : stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>);
    public var _i : stdgo.GoUInt8 = 0;
    public var _j : stdgo.GoUInt8 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_d:stdgo.Ref<stdgo._internal.image.gif.Gif_t_decoder.T_decoder>, ?_i:stdgo.GoUInt8, ?_j:stdgo.GoUInt8, ?_err:stdgo.Error) {
        if (_d != null) this._d = _d;
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_blockReader(_d, _i, _j, _err);
    }
}
