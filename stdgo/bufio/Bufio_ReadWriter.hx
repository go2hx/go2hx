package stdgo.bufio;
@:structInit @:using(stdgo.bufio.Bufio.ReadWriter_static_extension) abstract ReadWriter(stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter) from stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter to stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
        return v;
    }
    public var writer(get, set) : Writer;
    function get_writer():Writer return this.writer;
    function set_writer(v:Writer):Writer {
        this.writer = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?reader:Reader, ?writer:Writer) this = new stdgo._internal.bufio.Bufio_ReadWriter.ReadWriter((reader : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), (writer : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
