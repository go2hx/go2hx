package stdgo._internal.path.filepath;
@:structInit @:using(stdgo._internal.path.filepath.Filepath_T_statDirEntry_static_extension.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs_FileInfo.FileInfo = (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}