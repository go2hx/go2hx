package stdgo.encoding.csv;
@:structInit @:using(stdgo.encoding.csv.Csv.Writer_static_extension) abstract Writer(stdgo._internal.encoding.csv.Csv_Writer.Writer) from stdgo._internal.encoding.csv.Csv_Writer.Writer to stdgo._internal.encoding.csv.Csv_Writer.Writer {
    public var comma(get, set) : StdTypes.Int;
    function get_comma():StdTypes.Int return this.comma;
    function set_comma(v:StdTypes.Int):StdTypes.Int {
        this.comma = (v : stdgo.GoInt32);
        return v;
    }
    public var useCRLF(get, set) : Bool;
    function get_useCRLF():Bool return this.useCRLF;
    function set_useCRLF(v:Bool):Bool {
        this.useCRLF = v;
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?comma:StdTypes.Int, ?useCRLF:Bool, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.encoding.csv.Csv_Writer.Writer((comma : stdgo.GoInt32), useCRLF, (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
