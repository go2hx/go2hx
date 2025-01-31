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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_mapFileInfo_static_extension.T_mapFileInfo_static_extension) class T_mapFileInfo {
    public var _name : stdgo.GoString = "";
    public var _f : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile> = (null : stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>);
    public function new(?_name:stdgo.GoString, ?_f:stdgo.Ref<stdgo._internal.testing.fstest.Fstest_MapFile.MapFile>) {
        if (_name != null) this._name = _name;
        if (_f != null) this._f = _f;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_mapFileInfo(_name, _f);
    }
}
