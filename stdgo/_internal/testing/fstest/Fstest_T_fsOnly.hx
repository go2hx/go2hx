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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_fsOnly_static_extension.T_fsOnly_static_extension) class T_fsOnly {
    @:embedded
    public var fS : stdgo._internal.io.fs.Fs_FS.FS = (null : stdgo._internal.io.fs.Fs_FS.FS);
    public function new(?fS:stdgo._internal.io.fs.Fs_FS.FS) {
        if (fS != null) this.fS = fS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:check31 (this.fS ?? throw "null pointer dereference").open;
    public function __copy__() {
        return new T_fsOnly(fS);
    }
}
