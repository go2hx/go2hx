package stdgo._internal.net.textproto;
@:structInit @:using(stdgo._internal.net.textproto.Textproto_writer_static_extension.Writer_static_extension) class Writer {
    public var w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter> = (null : stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>);
    public function new(?w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_dot:stdgo.Ref<stdgo._internal.net.textproto.Textproto_t_dotwriter.T_dotWriter>) {
        if (w != null) this.w = w;
        if (_dot != null) this._dot = _dot;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(w, _dot);
    }
}
