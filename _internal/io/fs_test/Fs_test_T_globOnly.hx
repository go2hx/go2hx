package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_globOnly_static_extension.T_globOnly_static_extension) class T_globOnly {
    @:embedded
    public var globFS : stdgo._internal.io.fs.Fs_GlobFS.GlobFS = (null : stdgo._internal.io.fs.Fs_GlobFS.GlobFS);
    public function new(?globFS:stdgo._internal.io.fs.Fs_GlobFS.GlobFS) {
        if (globFS != null) this.globFS = globFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function glob(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.globFS.glob(_name);
    public function __copy__() {
        return new T_globOnly(globFS);
    }
}
