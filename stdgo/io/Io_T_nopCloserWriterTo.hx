package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_nopCloserWriterTo_static_extension) abstract T_nopCloserWriterTo(stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo) from stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo to stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_T_nopCloserWriterTo.T_nopCloserWriterTo(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
