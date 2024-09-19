package stdgo._internal.debug.macho;
@:structInit class RpathCmd {
    public var cmd : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var path : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd, ?len:stdgo.GoUInt32, ?path:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (path != null) this.path = path;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new RpathCmd(cmd, len, path);
    }
}
