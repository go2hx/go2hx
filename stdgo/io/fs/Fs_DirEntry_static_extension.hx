package stdgo.io.fs;
class DirEntry_static_extension {
    static public function info(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_DirEntry_static_extension.DirEntry_static_extension.info(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):FileMode {
        return stdgo._internal.io.fs.Fs_DirEntry_static_extension.DirEntry_static_extension.type(t);
    }
    static public function isDir(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):Bool {
        return stdgo._internal.io.fs.Fs_DirEntry_static_extension.DirEntry_static_extension.isDir(t);
    }
    static public function name(t:stdgo._internal.io.fs.Fs_DirEntry.DirEntry):String {
        return stdgo._internal.io.fs.Fs_DirEntry_static_extension.DirEntry_static_extension.name(t);
    }
}
