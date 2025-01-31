package stdgo._internal.io.fs;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.oserror.Oserror;
import stdgo._internal.path.Path;
import stdgo._internal.sort.Sort;
import stdgo._internal.io.Io;
@:structInit @:using(stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension) class T_dirInfo {
    public var _fileInfo : stdgo._internal.io.fs.Fs_FileInfo.FileInfo = (null : stdgo._internal.io.fs.Fs_FileInfo.FileInfo);
    public function new(?_fileInfo:stdgo._internal.io.fs.Fs_FileInfo.FileInfo) {
        if (_fileInfo != null) this._fileInfo = _fileInfo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_dirInfo(_fileInfo);
    }
}
