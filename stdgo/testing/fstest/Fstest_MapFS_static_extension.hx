package stdgo.testing.fstest;
class MapFS_static_extension {
    static public function sub(_fsys:MapFS, _dir:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FS.FS, stdgo.Error> {
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.sub(_fsys, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(_fsys:MapFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.glob(_fsys, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_fsys:MapFS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.readDir(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function stat(_fsys:MapFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.stat(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFile(_fsys:MapFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.readFile(_fsys, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_fsys:MapFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.testing.fstest.Fstest_MapFS_static_extension.MapFS_static_extension.open(_fsys, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
