package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.T_regFileReader_static_extension) abstract T_regFileReader(stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader) from stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader to stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _nb(get, set) : haxe.Int64;
    function get__nb():haxe.Int64 return this._nb;
    function set__nb(v:haxe.Int64):haxe.Int64 {
        this._nb = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_nb:haxe.Int64) this = new stdgo._internal.archive.tar.Tar_T_regFileReader.T_regFileReader(_r, (_nb : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
