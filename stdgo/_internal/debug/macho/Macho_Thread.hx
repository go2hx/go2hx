package stdgo._internal.debug.macho;
@:structInit class Thread {
    public var cmd : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd = ((0 : stdgo.GoUInt32) : stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd);
    public var len : stdgo.GoUInt32 = 0;
    public var type : stdgo.GoUInt32 = 0;
    public var data : stdgo.Slice<stdgo.GoUInt32> = (null : stdgo.Slice<stdgo.GoUInt32>);
    public function new(?cmd:stdgo._internal.debug.macho.Macho_LoadCmd.LoadCmd, ?len:stdgo.GoUInt32, ?type:stdgo.GoUInt32, ?data:stdgo.Slice<stdgo.GoUInt32>) {
        if (cmd != null) this.cmd = cmd;
        if (len != null) this.len = len;
        if (type != null) this.type = type;
        if (data != null) this.data = data;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Thread(cmd, len, type, data);
    }
}