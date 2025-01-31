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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_shuffledFile_static_extension.T_shuffledFile_static_extension) class T_shuffledFile {
    @:embedded
    public var file : stdgo._internal.io.fs.Fs_File.File = (null : stdgo._internal.io.fs.Fs_File.File);
    public function new(?file:stdgo._internal.io.fs.Fs_File.File) {
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.file ?? throw "null pointer dereference").close;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.file ?? throw "null pointer dereference").read;
    public var stat(get, never) : () -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_stat():() -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:check31 (this.file ?? throw "null pointer dereference").stat;
    public function __copy__() {
        return new T_shuffledFile(file);
    }
}
