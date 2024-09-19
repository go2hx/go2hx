package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_fsOnly_static_extension.T_fsOnly_static_extension) class T_fsOnly {
    @:embedded
    public var fs : stdgo._internal.io.fs.Fs_FS.FS = (null : stdgo._internal.io.fs.Fs_FS.FS);
    public function new(?fs:stdgo._internal.io.fs.Fs_FS.FS) {
        if (fs != null) this.fs = fs;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return this.fs.open(_pattern);
    public function __copy__() {
        return new T_fsOnly(fs);
    }
}
