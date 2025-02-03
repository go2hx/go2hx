package stdgo.image.gif;
@:structInit @:using(stdgo.image.gif.Gif.T_blockWriter_static_extension) abstract T_blockWriter(stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter) from stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter to stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter {
    public var _e(get, set) : T_encoder;
    function get__e():T_encoder return this._e;
    function set__e(v:T_encoder):T_encoder {
        this._e = (v : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>);
        return v;
    }
    public function new(?_e:T_encoder) this = new stdgo._internal.image.gif.Gif_T_blockWriter.T_blockWriter((_e : stdgo.Ref<stdgo._internal.image.gif.Gif_T_encoder.T_encoder>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
