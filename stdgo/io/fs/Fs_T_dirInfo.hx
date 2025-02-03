package stdgo.io.fs;
@:structInit @:using(stdgo.io.fs.Fs.T_dirInfo_static_extension) abstract T_dirInfo(stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo) from stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo to stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo {
    public var _fileInfo(get, set) : FileInfo;
    function get__fileInfo():FileInfo return this._fileInfo;
    function set__fileInfo(v:FileInfo):FileInfo {
        this._fileInfo = v;
        return v;
    }
    public function new(?_fileInfo:FileInfo) this = new stdgo._internal.io.fs.Fs_T_dirInfo.T_dirInfo(_fileInfo);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
