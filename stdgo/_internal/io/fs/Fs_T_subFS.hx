package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension) class T_subFS {
    public var _fsys : stdgo._internal.io.fs.Fs_FS.FS = (null : stdgo._internal.io.fs.Fs_FS.FS);
    public var _dir : stdgo.GoString = "";
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS, ?_dir:stdgo.GoString) {
        if (_fsys != null) this._fsys = _fsys;
        if (_dir != null) this._dir = _dir;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_subFS(_fsys, _dir);
    }
}
