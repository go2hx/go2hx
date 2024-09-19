package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_ioFile_static_extension.T_ioFile_static_extension) class T_ioFile {
    public var _file : stdgo._internal.io.fs.Fs_File.File = (null : stdgo._internal.io.fs.Fs_File.File);
    public function new(?_file:stdgo._internal.io.fs.Fs_File.File) {
        if (_file != null) this._file = _file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_ioFile(_file);
    }
}
