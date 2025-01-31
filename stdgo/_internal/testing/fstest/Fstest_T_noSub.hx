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
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = (null : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS);
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var glob(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_glob():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").glob;
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").open;
    public var readDir(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDir():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").readDir;
    public var readFile(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").readFile;
    public var stat(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_stat():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").stat;
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
