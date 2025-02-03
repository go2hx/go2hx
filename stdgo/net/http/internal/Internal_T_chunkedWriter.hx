package stdgo.net.http.internal;
@:structInit @:using(stdgo.net.http.internal.Internal.T_chunkedWriter_static_extension) abstract T_chunkedWriter(stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter) from stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter to stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter {
    public var wire(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_wire():stdgo._internal.io.Io_Writer.Writer return this.wire;
    function set_wire(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.wire = v;
        return v;
    }
    public function new(?wire:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.http.internal.Internal_T_chunkedWriter.T_chunkedWriter(wire);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
