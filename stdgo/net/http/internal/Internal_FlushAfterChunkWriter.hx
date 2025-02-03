package stdgo.net.http.internal;
@:structInit @:using(stdgo.net.http.internal.Internal.FlushAfterChunkWriter_static_extension) abstract FlushAfterChunkWriter(stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter) from stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter to stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter {
    public var writer(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get_writer():stdgo._internal.bufio.Bufio_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this.writer = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?writer:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.http.internal.Internal_FlushAfterChunkWriter.FlushAfterChunkWriter((writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
