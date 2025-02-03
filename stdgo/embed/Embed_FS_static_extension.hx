package stdgo.embed;
class FS_static_extension {
    static public function readFile(_f:FS, _name:String):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_FS_static_extension.FS_static_extension.readFile(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readDir(_f:FS, _name:String):stdgo.Tuple<Array<stdgo._internal.io.fs.Fs_DirEntry.DirEntry>, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_FS_static_extension.FS_static_extension.readDir(_f, _name);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function open(_f:FS, _name:String):stdgo.Tuple<stdgo._internal.io.fs.Fs_File.File, stdgo.Error> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.embed.Embed_FS_static_extension.FS_static_extension.open(_f, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readDir(_f:FS, _dir:String):Array<T_file> {
        final _dir = (_dir : stdgo.GoString);
        return [for (i in stdgo._internal.embed.Embed_FS_static_extension.FS_static_extension._readDir(_f, _dir)) i];
    }
    static public function _lookup(_f:FS, _name:String):T_file {
        final _name = (_name : stdgo.GoString);
        return stdgo._internal.embed.Embed_FS_static_extension.FS_static_extension._lookup(_f, _name);
    }
}
