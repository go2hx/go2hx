package stdgo._internal.testing.fstest;
@:structInit @:using(stdgo._internal.testing.fstest.Fstest_T_noSub_static_extension.T_noSub_static_extension) class T_noSub {
    @:embedded
    public var mapFS : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS = (null : stdgo._internal.testing.fstest.Fstest_MapFS.MapFS);
    public function new(?mapFS:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS) {
        if (mapFS != null) this.mapFS = mapFS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function glob(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.mapFS.glob(_pattern);
    @:embedded
    public function open(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } return this.mapFS.open(_pattern);
    @:embedded
    public function readDir(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } return this.mapFS.readDir(_pattern);
    @:embedded
    public function readFile(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return this.mapFS.readFile(_pattern);
    @:embedded
    public function stat(_pattern:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } return this.mapFS.stat(_pattern);
    public function __copy__() {
        return new T_noSub(mapFS);
    }
}
