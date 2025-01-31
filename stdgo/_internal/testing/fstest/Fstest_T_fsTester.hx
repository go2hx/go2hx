package stdgo._internal.testing.fstest;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.sort.Sort;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.os.Os;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.io.Io;
import stdgo._internal.path.Path;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.testing.iotest.Iotest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_fsTester_static_extension.T_fsTester_static_extension) class T_fsTester {
    public var _fsys : stdgo._internal.io.fs.Fs_FS.FS = (null : stdgo._internal.io.fs.Fs_FS.FS);
    public var _errText : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _dirs : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _files : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_fsys:stdgo._internal.io.fs.Fs_FS.FS, ?_errText:stdgo.Slice<stdgo.GoUInt8>, ?_dirs:stdgo.Slice<stdgo.GoString>, ?_files:stdgo.Slice<stdgo.GoString>) {
        if (_fsys != null) this._fsys = _fsys;
        if (_errText != null) this._errText = _errText;
        if (_dirs != null) this._dirs = _dirs;
        if (_files != null) this._files = _files;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fsTester(_fsys, _errText, _dirs, _files);
    }
}
