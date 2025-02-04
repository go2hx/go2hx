package stdgo._internal.io.fs;
@:structInit @:using(stdgo._internal.io.fs.Fs_t_statdirentry_static_extension.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs_fileinfo.FileInfo = (null : stdgo._internal.io.fs.Fs_fileinfo.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs_fileinfo.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
