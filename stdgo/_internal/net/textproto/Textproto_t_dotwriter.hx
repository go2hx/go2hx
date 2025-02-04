package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_t_dotwriter_static_extension.T_dotWriter_static_extension) class T_dotWriter {
    public var _w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
    public var _state : stdgo.GoInt = 0;
    public function new(?_w:stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>, ?_state:stdgo.GoInt) {
        if (_w != null) this._w = _w;
        if (_state != null) this._state = _state;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dotWriter(_w, _state);
    }
}
