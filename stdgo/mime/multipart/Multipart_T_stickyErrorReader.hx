package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.T_stickyErrorReader_static_extension) abstract T_stickyErrorReader(stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader) from stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader to stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader.T_stickyErrorReader(_r, (_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
