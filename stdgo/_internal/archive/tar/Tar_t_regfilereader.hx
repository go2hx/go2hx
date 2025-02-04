package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_t_regfilereader_static_extension.T_regFileReader_static_extension) class T_regFileReader {
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _nb : stdgo.GoInt64 = 0;
    public function new(?_r:stdgo._internal.io.Io_reader.Reader, ?_nb:stdgo.GoInt64) {
        if (_r != null) this._r = _r;
        if (_nb != null) this._nb = _nb;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_regFileReader(_r, _nb);
    }
}
