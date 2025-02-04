package stdgo._internal.os;
@:keep @:allow(stdgo._internal.os.Os.T_fileStat_asInterface) class T_fileStat_static_extension {
    @:keep
    @:tdfield
    static public function sys( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):stdgo.AnyInterface throw "T_fileStat:os.sys is not yet implemented";
    @:keep
    @:tdfield
    static public function modTime( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):stdgo._internal.time.Time_time.Time throw "T_fileStat:os.modTime is not yet implemented";
    @:keep
    @:tdfield
    static public function mode( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):stdgo._internal.io.fs.Fs_filemode.FileMode {
        @:recv var _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat> = _fs;
        return 0;
    }
    @:keep
    @:tdfield
    static public function size( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):stdgo.GoInt64 throw "T_fileStat:os.size is not yet implemented";
    @:keep
    @:tdfield
    static public function isDir( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):Bool {
        @:recv var _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat> = _fs;
        #if (sys || hxnodejs) {
            return std.sys.FileSystem.isDirectory(_fs._name);
        } #else null #end;
        return false;
    }
    @:keep
    @:tdfield
    static public function name( _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat>):stdgo.GoString {
        @:recv var _fs:stdgo.Ref<stdgo._internal.os.Os_t_filestat.T_fileStat> = _fs;
        return _fs._name;
    }
}
