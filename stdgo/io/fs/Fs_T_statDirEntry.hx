package stdgo.io.fs;
@:structInit @:using(stdgo.io.fs.Fs.T_statDirEntry_static_extension) abstract T_statDirEntry(stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry) from stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry to stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry {
    public var _info(get, set) : FileInfo;
    function get__info():FileInfo return this._info;
    function set__info(v:FileInfo):FileInfo {
        this._info = v;
        return v;
    }
    public function new(?_info:FileInfo) this = new stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry(_info);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
