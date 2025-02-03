package stdgo.archive.zip;
@:structInit @:using(stdgo.archive.zip.Zip.ReadCloser_static_extension) abstract ReadCloser(stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser) from stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser to stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser {
    public var _f(get, set) : stdgo._internal.os.Os_File.File;
    function get__f():stdgo._internal.os.Os_File.File return this._f;
    function set__f(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var reader(get, set) : Reader;
    function get_reader():Reader return this.reader;
    function set_reader(v:Reader):Reader {
        this.reader = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_File.File, ?reader:Reader) this = new stdgo._internal.archive.zip.Zip_ReadCloser.ReadCloser((_f : stdgo.Ref<stdgo._internal.os.Os_File.File>), reader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
