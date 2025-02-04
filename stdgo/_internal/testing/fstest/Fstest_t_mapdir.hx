package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_mapdir_static_extension.T_mapDir_static_extension) class T_mapDir {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo = ({} : stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo);
    public var _entry : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo> = (null : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo._internal.testing.fstest.Fstest_t_mapfileinfo.T_mapFileInfo>, ?_offset:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_entry != null) this._entry = _entry;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var info(get, never) : () -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_info():() -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:check32 this._mapFileInfo.info;
    public var isDir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDir():() -> Bool return @:check32 this._mapFileInfo.isDir;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_time.Time return @:check32 this._mapFileInfo.modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_filemode.FileMode return @:check32 this._mapFileInfo.mode;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check32 this._mapFileInfo.name;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check32 this._mapFileInfo.size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check32 this._mapFileInfo.string;
    public var sys(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_sys():() -> stdgo.AnyInterface return @:check32 this._mapFileInfo.sys;
    public var type(get, never) : () -> stdgo._internal.io.fs.Fs_filemode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.io.fs.Fs_filemode.FileMode return @:check32 this._mapFileInfo.type;
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
