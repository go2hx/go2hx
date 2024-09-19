package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_Writer_static_extension.Writer_static_extension) class Writer {
    public var w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
    public function new(?w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>) {
        if (w != null) this.w = w;
        if (_dot != null) this._dot = _dot;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(w, _dot);
    }
}
