package stdgo.internal.poll;
@:structInit @:using(stdgo.internal.poll.Poll.FD_static_extension) abstract FD(stdgo._internal.internal.poll.Poll_FD.FD) from stdgo._internal.internal.poll.Poll_FD.FD to stdgo._internal.internal.poll.Poll_FD.FD {
    public var _fdmu(get, set) : T_fdMutex;
    function get__fdmu():T_fdMutex return this._fdmu;
    function set__fdmu(v:T_fdMutex):T_fdMutex {
        this._fdmu = v;
        return v;
    }
    public var sysfd(get, set) : StdTypes.Int;
    function get_sysfd():StdTypes.Int return this.sysfd;
    function set_sysfd(v:StdTypes.Int):StdTypes.Int {
        this.sysfd = (v : stdgo.GoInt);
        return v;
    }
    public var sysFile(get, set) : SysFile;
    function get_sysFile():SysFile return this.sysFile;
    function set_sysFile(v:SysFile):SysFile {
        this.sysFile = v;
        return v;
    }
    public var _pd(get, set) : T_pollDesc;
    function get__pd():T_pollDesc return this._pd;
    function set__pd(v:T_pollDesc):T_pollDesc {
        this._pd = v;
        return v;
    }
    public var _csema(get, set) : std.UInt;
    function get__csema():std.UInt return this._csema;
    function set__csema(v:std.UInt):std.UInt {
        this._csema = (v : stdgo.GoUInt32);
        return v;
    }
    public var _isBlocking(get, set) : std.UInt;
    function get__isBlocking():std.UInt return this._isBlocking;
    function set__isBlocking(v:std.UInt):std.UInt {
        this._isBlocking = (v : stdgo.GoUInt32);
        return v;
    }
    public var isStream(get, set) : Bool;
    function get_isStream():Bool return this.isStream;
    function set_isStream(v:Bool):Bool {
        this.isStream = v;
        return v;
    }
    public var zeroReadIsEOF(get, set) : Bool;
    function get_zeroReadIsEOF():Bool return this.zeroReadIsEOF;
    function set_zeroReadIsEOF(v:Bool):Bool {
        this.zeroReadIsEOF = v;
        return v;
    }
    public var _isFile(get, set) : Bool;
    function get__isFile():Bool return this._isFile;
    function set__isFile(v:Bool):Bool {
        this._isFile = v;
        return v;
    }
    public function new(?_fdmu:T_fdMutex, ?sysfd:StdTypes.Int, ?sysFile:SysFile, ?_pd:T_pollDesc, ?_csema:std.UInt, ?_isBlocking:std.UInt, ?isStream:Bool, ?zeroReadIsEOF:Bool, ?_isFile:Bool) this = new stdgo._internal.internal.poll.Poll_FD.FD(_fdmu, (sysfd : stdgo.GoInt), sysFile, _pd, (_csema : stdgo.GoUInt32), (_isBlocking : stdgo.GoUInt32), isStream, zeroReadIsEOF, _isFile);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
