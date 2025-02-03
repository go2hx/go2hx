package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.ImportDirectory_static_extension) abstract ImportDirectory(stdgo._internal.debug.pe.Pe_ImportDirectory.ImportDirectory) from stdgo._internal.debug.pe.Pe_ImportDirectory.ImportDirectory to stdgo._internal.debug.pe.Pe_ImportDirectory.ImportDirectory {
    public var originalFirstThunk(get, set) : std.UInt;
    function get_originalFirstThunk():std.UInt return this.originalFirstThunk;
    function set_originalFirstThunk(v:std.UInt):std.UInt {
        this.originalFirstThunk = (v : stdgo.GoUInt32);
        return v;
    }
    public var timeDateStamp(get, set) : std.UInt;
    function get_timeDateStamp():std.UInt return this.timeDateStamp;
    function set_timeDateStamp(v:std.UInt):std.UInt {
        this.timeDateStamp = (v : stdgo.GoUInt32);
        return v;
    }
    public var forwarderChain(get, set) : std.UInt;
    function get_forwarderChain():std.UInt return this.forwarderChain;
    function set_forwarderChain(v:std.UInt):std.UInt {
        this.forwarderChain = (v : stdgo.GoUInt32);
        return v;
    }
    public var name(get, set) : std.UInt;
    function get_name():std.UInt return this.name;
    function set_name(v:std.UInt):std.UInt {
        this.name = (v : stdgo.GoUInt32);
        return v;
    }
    public var firstThunk(get, set) : std.UInt;
    function get_firstThunk():std.UInt return this.firstThunk;
    function set_firstThunk(v:std.UInt):std.UInt {
        this.firstThunk = (v : stdgo.GoUInt32);
        return v;
    }
    public var _dll(get, set) : String;
    function get__dll():String return this._dll;
    function set__dll(v:String):String {
        this._dll = (v : stdgo.GoString);
        return v;
    }
    public function new(?originalFirstThunk:std.UInt, ?timeDateStamp:std.UInt, ?forwarderChain:std.UInt, ?name:std.UInt, ?firstThunk:std.UInt, ?_dll:String) this = new stdgo._internal.debug.pe.Pe_ImportDirectory.ImportDirectory((originalFirstThunk : stdgo.GoUInt32), (timeDateStamp : stdgo.GoUInt32), (forwarderChain : stdgo.GoUInt32), (name : stdgo.GoUInt32), (firstThunk : stdgo.GoUInt32), (_dll : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
