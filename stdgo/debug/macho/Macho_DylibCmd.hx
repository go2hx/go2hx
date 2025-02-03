package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.DylibCmd_static_extension) abstract DylibCmd(stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd) from stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd to stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd {
    public var cmd(get, set) : LoadCmd;
    function get_cmd():LoadCmd return this.cmd;
    function set_cmd(v:LoadCmd):LoadCmd {
        this.cmd = v;
        return v;
    }
    public var len(get, set) : std.UInt;
    function get_len():std.UInt return this.len;
    function set_len(v:std.UInt):std.UInt {
        this.len = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var time(get, set) : std.UInt;
    function get_time():std.UInt return this.time;
    function set_time(v:std.UInt):std.UInt {
        this.time = (v : stdgo.GoUInt32);
        return v;
    }
    public var currentVersion(get, set) : std.UInt;
    function get_currentVersion():std.UInt return this.currentVersion;
    function set_currentVersion(v:std.UInt):std.UInt {
        this.currentVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public var compatVersion(get, set) : std.UInt;
    function get_compatVersion():std.UInt return this.compatVersion;
    function set_compatVersion(v:std.UInt):std.UInt {
        this.compatVersion = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?name:std.UInt, ?time:std.UInt, ?currentVersion:std.UInt, ?compatVersion:std.UInt) this = new stdgo._internal.debug.macho.Macho_DylibCmd.DylibCmd(cmd, (len : stdgo.GoUInt32), (name : stdgo.GoUInt32), (time : stdgo.GoUInt32), (currentVersion : stdgo.GoUInt32), (compatVersion : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
