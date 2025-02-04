package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_dotreader_static_extension.T_dotReader_static_extension) class T_dotReader {
    public var _r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>);
    public var _state : stdgo.GoInt = 0;
    public function new(?_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_reader.Reader>, ?_state:stdgo.GoInt) {
        if (_r != null) this._r = _r;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dotReader(_r, _state);
    }
}
