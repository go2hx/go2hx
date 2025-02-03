package stdgo.debug.macho;
@:structInit @:using(stdgo.debug.macho.Macho.Thread_static_extension) abstract Thread(stdgo._internal.debug.macho.Macho_Thread.Thread) from stdgo._internal.debug.macho.Macho_Thread.Thread to stdgo._internal.debug.macho.Macho_Thread.Thread {
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
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var data(get, set) : Array<std.UInt>;
    function get_data():Array<std.UInt> return [for (i in this.data) i];
    function set_data(v:Array<std.UInt>):Array<std.UInt> {
        this.data = ([for (i in v) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>);
        return v;
    }
    public function new(?cmd:LoadCmd, ?len:std.UInt, ?type:std.UInt, ?data:Array<std.UInt>) this = new stdgo._internal.debug.macho.Macho_Thread.Thread(cmd, (len : stdgo.GoUInt32), (type : stdgo.GoUInt32), ([for (i in data) (i : stdgo.GoUInt32)] : stdgo.Slice<stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
