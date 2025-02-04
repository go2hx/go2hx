package stdgo._internal.io.fs;
@:structInit @:using(stdgo._internal.io.fs.Fs_t_subfs_static_extension.T_subFS_static_extension) class T_subFS {
    public var _fsys : stdgo._internal.io.fs.Fs_fs.FS = (null : stdgo._internal.io.fs.Fs_fs.FS);
    public var _dir : stdgo.GoString = "";
    public function new(?_fsys:stdgo._internal.io.fs.Fs_fs.FS, ?_dir:stdgo.GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
