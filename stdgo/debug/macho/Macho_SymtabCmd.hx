package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.SymtabCmd_static_extension) abstract SymtabCmd(stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd) from stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd to stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd {
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
    public var symoff(get, set) : std.UInt;
    function get_symoff():std.UInt return this.symoff;
    function set_symoff(v:std.UInt):std.UInt {
        this.symoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var nsyms(get, set) : std.UInt;
    function get_nsyms():std.UInt return this.nsyms;
    function set_nsyms(v:std.UInt):std.UInt {
        this.nsyms = (v : stdgo.GoUInt32);
        return v;
    }
    public var stroff(get, set) : std.UInt;
    function get_stroff():std.UInt return this.stroff;
    function set_stroff(v:std.UInt):std.UInt {
        this.stroff = (v : stdgo.GoUInt32);
        return v;
    }
    public var strsize(get, set) : std.UInt;
    function get_strsize():std.UInt return this.strsize;
    function set_strsize(v:std.UInt):std.UInt {
        this.strsize = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?symoff:std.UInt, ?nsyms:std.UInt, ?stroff:std.UInt, ?strsize:std.UInt) this = new stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd(cmd, (len : stdgo.GoUInt32), (symoff : stdgo.GoUInt32), (nsyms : stdgo.GoUInt32), (stroff : stdgo.GoUInt32), (strsize : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
