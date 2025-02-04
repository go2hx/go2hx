package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_writer_static_extension.Writer_static_extension) class Writer {
    public var comma : stdgo.GoInt32 = 0;
    public var useCRLF : Bool = false;
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public function new(?comma:stdgo.GoInt32, ?useCRLF:Bool, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>) {
        if (comma != null) this.comma = comma;
        if (useCRLF != null) this.useCRLF = useCRLF;
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(comma, useCRLF, _w);
    }
}
