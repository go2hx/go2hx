package stdgo._internal.io.fs;
@:structInit @:using(stdgo._internal.io.fs.Fs_t_dirinfo_static_extension.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : stdgo._internal.io.fs.Fs_fileinfo.FileInfo = (null : stdgo._internal.io.fs.Fs_fileinfo.FileInfo);
    public function new(?_fileInfo:stdgo._internal.io.fs.Fs_fileinfo.FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
