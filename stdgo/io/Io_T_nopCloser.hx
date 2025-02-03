package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_nopCloser_static_extension) abstract T_nopCloser(stdgo._internal.io.Io_T_nopCloser.T_nopCloser) from stdgo._internal.io.Io_T_nopCloser.T_nopCloser to stdgo._internal.io.Io_T_nopCloser.T_nopCloser {
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?reader:Reader) this = new stdgo._internal.io.Io_T_nopCloser.T_nopCloser(reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
