package stdgo.io.fs;
class T_statDirEntry_static_extension {
    static public function string(_d:T_statDirEntry):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension.string(_d);
    }
    static public function info(_d:T_statDirEntry):stdgo.Tuple<FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>);
        return {
            final obj = stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_statDirEntry):FileMode {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension.type(_d);
    }
    static public function isDir(_d:T_statDirEntry):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension.isDir(_d);
    }
    static public function name(_d:T_statDirEntry):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.io.fs.Fs_T_statDirEntry.T_statDirEntry>);
        return stdgo._internal.io.fs.Fs_T_statDirEntry_static_extension.T_statDirEntry_static_extension.name(_d);
    }
}
