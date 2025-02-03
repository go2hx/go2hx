package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.T_dirReader_static_extension) abstract T_dirReader(stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader) from stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader to stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader {
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public function new(?_err:stdgo.Error) this = new stdgo._internal.archive.zip.Zip_T_dirReader.T_dirReader((_err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
