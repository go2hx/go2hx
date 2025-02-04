package stdgo._internal.image.gif;
@:structInit @:using(stdgo._internal.image.gif.Gif_t_blockwriter_static_extension.T_blockWriter_static_extension) class T_blockWriter {
    public var _e : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder> = (null : stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>);
    public function new(?_e:stdgo.Ref<stdgo._internal.image.gif.Gif_t_encoder.T_encoder>) {
        if (_e != null) this._e = _e;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_blockWriter(_e);
    }
}
