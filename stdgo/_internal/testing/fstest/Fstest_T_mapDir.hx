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
    @:embedded
    public function info():{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return this._mapFileInfo.info();
    @:embedded
    public function isDir():Bool return this._mapFileInfo.isDir();
    @:embedded
    public function modTime():stdgo._internal.time.Time_Time.Time return this._mapFileInfo.modTime();
    @:embedded
    public function mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return this._mapFileInfo.mode();
    @:embedded
    public function name():stdgo.GoString return this._mapFileInfo.name();
    @:embedded
    public function size():stdgo.GoInt64 return this._mapFileInfo.size();
    @:embedded
    public function string():stdgo.GoString return this._mapFileInfo.string();
    @:embedded
    public function sys():stdgo.AnyInterface return this._mapFileInfo.sys();
    @:embedded
    public function type():stdgo._internal.io.fs.Fs_FileMode.FileMode return this._mapFileInfo.type();
    public function __copy__() {
        return new T_mapDir(_path, _mapFileInfo, _entry, _offset);
    }
}
