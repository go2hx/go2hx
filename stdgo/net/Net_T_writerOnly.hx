package stdgo.net;
@:structInit @:using(stdgo.net.Net.T_writerOnly_static_extension) abstract T_writerOnly(stdgo._internal.net.Net_T_writerOnly.T_writerOnly) from stdgo._internal.net.Net_T_writerOnly.T_writerOnly to stdgo._internal.net.Net_T_writerOnly.T_writerOnly {
    public var writer(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get_writer():stdgo._internal.io.Io_Writer.Writer return this.writer;
    function set_writer(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this.writer = v;
        return v;
    }
    public function new(?writer:stdgo._internal.io.Io_Writer.Writer) this = new stdgo._internal.net.Net_T_writerOnly.T_writerOnly(writer);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
