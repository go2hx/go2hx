package stdgo.io;
@:structInit @:using(stdgo.io.Io.T_teeReader_static_extension) abstract T_teeReader(stdgo._internal.io.Io_T_teeReader.T_teeReader) from stdgo._internal.io.Io_T_teeReader.T_teeReader to stdgo._internal.io.Io_T_teeReader.T_teeReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = v;
        return v;
    }
    public var _w(get, set) : Writer;
    function get__w():Writer return this._w;
    function set__w(v:Writer):Writer {
        this._w = v;
        return v;
    }
    public function new(?_r:Reader, ?_w:Writer) this = new stdgo._internal.io.Io_T_teeReader.T_teeReader(_r, _w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
