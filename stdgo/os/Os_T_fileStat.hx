package stdgo.os;
@:structInit @:using(stdgo.os.Os.T_fileStat_static_extension) abstract T_fileStat(stdgo._internal.os.Os_T_fileStat.T_fileStat) from stdgo._internal.os.Os_T_fileStat.T_fileStat to stdgo._internal.os.Os_T_fileStat.T_fileStat {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _size(get, set) : haxe.Int64;
    function get__size():haxe.Int64 return this._size;
    function set__size(v:haxe.Int64):haxe.Int64 {
        this._size = (v : stdgo.GoInt64);
        return v;
    }
    public var _mode(get, set) : stdgo._internal.io.fs.Fs_FileMode.FileMode;
    function get__mode():stdgo._internal.io.fs.Fs_FileMode.FileMode return this._mode;
    function set__mode(v:stdgo._internal.io.fs.Fs_FileMode.FileMode):stdgo._internal.io.fs.Fs_FileMode.FileMode {
        this._mode = v;
        return v;
    }
    public var _modTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get__modTime():stdgo._internal.time.Time_Time.Time return this._modTime;
    function set__modTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this._modTime = v;
        return v;
    }
    public var _sys(get, set) : stdgo._internal.syscall.Syscall_Stat_t.Stat_t;
    function get__sys():stdgo._internal.syscall.Syscall_Stat_t.Stat_t return this._sys;
    function set__sys(v:stdgo._internal.syscall.Syscall_Stat_t.Stat_t):stdgo._internal.syscall.Syscall_Stat_t.Stat_t {
        this._sys = v;
        return v;
    }
    public function new(?_name:String, ?_size:haxe.Int64, ?_mode:stdgo._internal.io.fs.Fs_FileMode.FileMode, ?_modTime:stdgo._internal.time.Time_Time.Time, ?_sys:stdgo._internal.syscall.Syscall_Stat_t.Stat_t) this = new stdgo._internal.os.Os_T_fileStat.T_fileStat((_name : stdgo.GoString), (_size : stdgo.GoInt64), _mode, _modTime, _sys);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
