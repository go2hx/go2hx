package stdgo.os;
class T_fileStat_static_extension {
    static public function sys(_fs:T_fileStat):stdgo.AnyInterface {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.sys(_fs);
    }
    static public function modTime(_fs:T_fileStat):stdgo._internal.time.Time_Time.Time {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.modTime(_fs);
    }
    static public function mode(_fs:T_fileStat):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.mode(_fs);
    }
    static public function size(_fs:T_fileStat):haxe.Int64 {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.size(_fs);
    }
    static public function isDir(_fs:T_fileStat):Bool {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.isDir(_fs);
    }
    static public function name(_fs:T_fileStat):String {
        final _fs = (_fs : stdgo.Ref<stdgo._internal.os.Os_T_fileStat.T_fileStat>);
        return stdgo._internal.os.Os_T_fileStat_static_extension.T_fileStat_static_extension.name(_fs);
    }
}
