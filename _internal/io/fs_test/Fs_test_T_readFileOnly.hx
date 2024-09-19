package _internal.io.fs_test;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
import stdgo._internal.io.fs.Fs;
@:structInit @:using(_internal.io.fs_test.Fs_test_T_readFileOnly_static_extension.T_readFileOnly_static_extension) class T_readFileOnly {
    @:embedded
    public var readFileFS : stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS = (null : stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS);
    public function new(?readFileFS:stdgo._internal.io.fs.Fs_ReadFileFS.ReadFileFS) {
        if (readFileFS != null) this.readFileFS = readFileFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function readFile(_name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.readFileFS.readFile(_name);
    public function __copy__() {
        return new T_readFileOnly(readFileFS);
    }
}
