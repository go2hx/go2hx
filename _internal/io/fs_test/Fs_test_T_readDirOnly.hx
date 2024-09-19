package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_readDirOnly_static_extension.T_readDirOnly_static_extension) class T_readDirOnly {
    @:embedded
    public var readDirFS : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS = (null : stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS);
    public function new(?readDirFS:stdgo._internal.io.fs.Fs_ReadDirFS.ReadDirFS) {
        if (readDirFS != null) this.readDirFS = readDirFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function readDir(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return this.readDirFS.readDir(_name);
    public function __copy__() {
        return new T_readDirOnly(readDirFS);
    }
}
