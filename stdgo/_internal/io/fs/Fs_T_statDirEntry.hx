package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension) class T_statDirEntry {
    public var _info : stdgo._internal.io.fs.Fs_FileInfo.FileInfo = (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
    public function new(?_info:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) {
        if (_info != null) this._info = _info;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_statDirEntry(_info);
    }
}
