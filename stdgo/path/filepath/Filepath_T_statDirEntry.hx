package stdgo.path.filepath;
@:structInit @:using(stdgo.path.filepath.Filepath.T_statDirEntry_static_extension) abstract T_statDirEntry(stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry) from stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry to stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry {
    public var _info(get, set) : stdgo._internal.io.fs.Fs_FileInfo.FileInfo;
    function get__info():stdgo._internal.io.fs.Fs_FileInfo.FileInfo return this._info;
    function set__info(v:stdgo._internal.io.fs.Fs_FileInfo.FileInfo):stdgo._internal.io.fs.Fs_FileInfo.FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) this = new stdgo._internal.path.filepath.Filepath_T_statDirEntry.T_statDirEntry(_info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
