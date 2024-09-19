package stdgo._internal.testing.fstest;
@:keep @:allow(stdgo._internal.testing.fstest.Fstest.MapFS_asInterface) class MapFS_static_extension {
    @:keep
    static public function sub( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _dir:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FS.FS; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.sub is not yet implemented";
    @:keep
    static public function glob( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.glob is not yet implemented";
    @:keep
    static public function readDir( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readDir is not yet implemented";
    @:keep
    static public function stat( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_FileInfo.FileInfo; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.stat is not yet implemented";
    @:keep
    static public function readFile( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.readFile is not yet implemented";
    @:keep
    static public function open( _fsys:stdgo._internal.testing.fstest.Fstest_MapFS.MapFS, _name:stdgo.GoString):{ var _0 : stdgo._internal.io.fs.Fs_File.File; var _1 : stdgo.Error; } throw "MapFS:testing.fstest.open is not yet implemented";
}
