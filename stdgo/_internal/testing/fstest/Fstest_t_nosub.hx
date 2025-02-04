package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_t_nosub_static_extension.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS = (null : stdgo._internal.testing.fstest.Fstest_mapfs.MapFS);
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest_mapfs.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var glob(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_glob():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").glob;
    public var open(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_open():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_file.File; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").open;
    public var readDir(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readDir():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").readDir;
    public var readFile(get, never) : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFile():stdgo.GoString -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").readFile;
    public var stat(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_stat():stdgo.GoString -> { var _0 : stdgo._internal.io.fs.Fs_fileinfo.FileInfo; var _1 : stdgo.Error; } return @:check31 (this.mapFS ?? throw "null pointer dereference").stat;
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
