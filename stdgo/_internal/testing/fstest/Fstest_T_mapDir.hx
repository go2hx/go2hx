package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_mapDir_static_extension.T_mapDir_static_extension) class T_mapDir {
    public var _path : stdgo.GoString = "";
    @:embedded
    public var _mapFileInfo : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo = ({} : stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo);
    public var _entry : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo> = (null : stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>);
    public var _offset : stdgo.GoInt = 0;
    public function new(?_path:stdgo.GoString, ?_mapFileInfo:stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo, ?_entry:stdgo.Slice<stdgo._internal.testing.fstest.Fstest_T_mapFileInfo.T_mapFileInfo>, ?_offset:stdgo.GoInt) {
        if (_path != null) this._path = _path;
        if (_mapFileInfo != null) this._mapFileInfo = _mapFileInfo;
        if (_entry != null) this._entry = _entry;
        if (_offset != null) this._offset = _offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var info(get, never) : () -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_info():() -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").info;
    public var isDir(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isDir():() -> Bool return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").isDir;
    public var modTime(get, never) : () -> stdgo._internal.time.Time_Time.Time;
    @:embedded
    @:embeddededffieldsffun
    public function get_modTime():() -> stdgo._internal.time.Time_Time.Time return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").modTime;
    public var mode(get, never) : () -> stdgo._internal.io.fs.Fs_FileMode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_mode():() -> stdgo._internal.io.fs.Fs_FileMode.FileMode return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").mode;
    public var name(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_name():() -> stdgo.GoString return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").name;
    public var size(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get_size():() -> stdgo.GoInt64 return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").size;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").string;
    public var sys(get, never) : () -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_sys():() -> stdgo.AnyInterface return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").sys;
    public var type(get, never) : () -> stdgo._internal.io.fs.Fs_FileMode.FileMode;
    @:embedded
    @:embeddededffieldsffun
    public function get_type():() -> stdgo._internal.io.fs.Fs_FileMode.FileMode return @:check3 (this._mapFileInfo ?? throw "null pointer derefrence").type;
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
