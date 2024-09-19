package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_statOnly_static_extension.T_statOnly_static_extension) class T_statOnly {
    @:embedded
    public var statFS : stdgo._internal.io.fs.Fs_StatFS.StatFS = (null : stdgo._internal.io.fs.Fs_StatFS.StatFS);
    public function new(?statFS:stdgo._internal.io.fs.Fs_StatFS.StatFS) {
        if (statFS != null) this.statFS = statFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function stat(_name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return this.statFS.stat(_name);
    public function __copy__() {
        return new T_statOnly(statFS);
    }
}
