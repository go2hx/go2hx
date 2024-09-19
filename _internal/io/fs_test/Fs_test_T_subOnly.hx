package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_subOnly_static_extension.T_subOnly_static_extension) class T_subOnly {
    @:embedded
    public var subFS : stdgo._internal.io.fs.Fs_SubFS.SubFS = (null : stdgo._internal.io.fs.Fs_SubFS.SubFS);
    public function new(?subFS:stdgo._internal.io.fs.Fs_SubFS.SubFS) {
        if (subFS != null) this.subFS = subFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function sub(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } return this.subFS.sub(_name);
    public function __copy__() {
        return new T_subOnly(subFS);
    }
}
