package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_symtabcmd_static_extension.SymtabCmd_static_extension) class SymtabCmd {
    public var cmd : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var symoff : stdgo.GoUInt32 = 0;
    public var nsyms : stdgo.GoUInt32 = 0;
    public var stroff : stdgo.GoUInt32 = 0;
    public var strsize : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_loadcmd.LoadCmd, ?len:stdgo.GoUInt32, ?symoff:stdgo.GoUInt32, ?nsyms:stdgo.GoUInt32, ?stroff:stdgo.GoUInt32, ?strsize:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (symoff != null) this.symoff = symoff;
        if (nsyms != null) this.nsyms = nsyms;
        if (stroff != null) this.stroff = stroff;
        if (strsize != null) this.strsize = strsize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SymtabCmd(cmd, len, symoff, nsyms, stroff, strsize);
    }
}
