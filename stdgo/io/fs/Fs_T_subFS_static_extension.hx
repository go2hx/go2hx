package stdgo.io.fs;
class T_subFS_static_extension {
    static public function sub(_f:T_subFS, _dir:String):stdgo.Tuple<FS, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _dir = (_dir : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension.sub(_f, _dir);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function glob(_f:T_subFS, _pattern:String):stdgo.Tuple<Array<String>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension.glob(_f, _pattern);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readFile(_f:T_subFS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension.readFile(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:T_subFS, _name:String):stdgo.Tuple<Array<DirEntry>, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension.readDir(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_f:T_subFS, _name:String):stdgo.Tuple<File, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fixErr(_f:T_subFS, _err:stdgo.Error):stdgo.Error {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension._fixErr(_f, _err);
    }
    static public function _shorten(_f:T_subFS, _name:String):stdgo.Tuple<String, Bool> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension._shorten(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _fullName(_f:T_subFS, _op:String, _name:String):stdgo.Tuple<String, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.io.fs.Fs_T_subFS.T_subFS>);
        final _op = (_op : stdgo.GoString);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_subFS_static_extension.T_subFS_static_extension._fullName(_f, _op, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
