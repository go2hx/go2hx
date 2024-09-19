package stdgo._internal.debug.macho;
@:structInit class DylibCmd {
    public var cmd : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var name : stdgo.GoUInt32 = 0;
    public var time : stdgo.GoUInt32 = 0;
    public var currentVersion : stdgo.GoUInt32 = 0;
    public var compatVersion : stdgo.GoUInt32 = 0;
    public function new(?cmd:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd, ?len:stdgo.GoUInt32, ?name:stdgo.GoUInt32, ?time:stdgo.GoUInt32, ?currentVersion:stdgo.GoUInt32, ?compatVersion:stdgo.GoUInt32) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (name != null) this.name = name;
        if (time != null) this.time = time;
        if (currentVersion != null) this.currentVersion = currentVersion;
        if (compatVersion != null) this.compatVersion = compatVersion;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DylibCmd(cmd, len, name, time, currentVersion, compatVersion);
    }
}
