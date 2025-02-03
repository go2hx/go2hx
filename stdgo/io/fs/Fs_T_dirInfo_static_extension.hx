package stdgo.io.fs;
class T_dirInfo_static_extension {
    static public function string(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension.string(_di);
    }
    static public function name(_di:T_dirInfo):String {
        return stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension.name(_di);
    }
    static public function info(_di:T_dirInfo):stdgo.Tuple<FileInfo, stdgo.Error> {
        return {
            final obj = stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension.info(_di);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function type(_di:T_dirInfo):FileMode {
        return stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension.type(_di);
    }
    static public function isDir(_di:T_dirInfo):Bool {
        return stdgo._internal.io.fs.Fs_T_dirInfo_static_extension.T_dirInfo_static_extension.isDir(_di);
    }
}
