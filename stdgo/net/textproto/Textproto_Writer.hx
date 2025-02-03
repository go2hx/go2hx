package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.Writer_static_extension) abstract Writer(stdgo._internal.net.textproto.Textproto_Writer.Writer) from stdgo._internal.net.textproto.Textproto_Writer.Writer to stdgo._internal.net.textproto.Textproto_Writer.Writer {
    public var w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get_w():stdgo._internal.bufio.Bufio_Writer.Writer return this.w;
    function set_w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this.w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public var _dot(get, set) : T_dotWriter;
    function get__dot():T_dotWriter return this._dot;
    function set__dot(v:T_dotWriter):T_dotWriter {
        this._dot = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>);
        return v;
    }
    public function new(?w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_dot:T_dotWriter) this = new stdgo._internal.net.textproto.Textproto_Writer.Writer((w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), (_dot : stdgo.Ref<stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
