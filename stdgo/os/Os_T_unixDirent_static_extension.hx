package stdgo.os;
class T_unixDirent_static_extension {
    static public function string(_d:T_unixDirent):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_T_unixDirent.T_unixDirent>);
        return stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension.string(_d);
    }
    static public function info(_d:T_unixDirent):stdgo.Tuple<stdgo._internal.io.fs.Fs_FileInfo.FileInfo, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_T_unixDirent.T_unixDirent>);
        return {
            final obj = stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension.info(_d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_d:T_unixDirent):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_T_unixDirent.T_unixDirent>);
        return stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension.type(_d);
    }
    static public function isDir(_d:T_unixDirent):Bool {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_T_unixDirent.T_unixDirent>);
        return stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension.isDir(_d);
    }
    static public function name(_d:T_unixDirent):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.os.Os_T_unixDirent.T_unixDirent>);
        return stdgo._internal.os.Os_T_unixDirent_static_extension.T_unixDirent_static_extension.name(_d);
    }
}
