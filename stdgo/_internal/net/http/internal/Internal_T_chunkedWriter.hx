package stdgo._internal.net.http.internal;
@:structInit @:using(stdgo._internal.net.http.internal.Internal_T_chunkedWriter_static_extension.T_chunkedWriter_static_extension) class T_chunkedWriter {
    public var wire : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?wire:stdgo._internal.io.Io_Writer.Writer) {
        if (wire != null) this.wire = wire;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_chunkedWriter(wire);
    }
}
