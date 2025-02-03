package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.RpathCmd_static_extension) abstract RpathCmd(stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd) from stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd to stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd {
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
    public var path(get, set) : std.UInt;
    function get_path():std.UInt return this.path;
    function set_path(v:std.UInt):std.UInt {
        this.path = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?path:std.UInt) this = new stdgo._internal.debug.macho.Macho_RpathCmd.RpathCmd(cmd, (len : stdgo.GoUInt32), (path : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
