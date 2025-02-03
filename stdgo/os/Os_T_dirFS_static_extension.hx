package stdgo.os;
class T_dirFS_static_extension {
    static public function _join(_dir:T_dirFS, _name:String):stdgo.Tuple<String, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_dirFS_static_extension.T_dirFS_static_extension._join(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function stat(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_dirFS_static_extension.T_dirFS_static_extension.stat(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readDir(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_dirFS_static_extension.T_dirFS_static_extension.readDir(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_dir:T_dirFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_dirFS_static_extension.T_dirFS_static_extension.readFile(_dir, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_dir:T_dirFS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.os.Os_T_dirFS_static_extension.T_dirFS_static_extension.open(_dir, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
