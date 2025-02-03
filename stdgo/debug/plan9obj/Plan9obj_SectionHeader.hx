package stdgo.debug.plan9obj;
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader) from stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader to stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var size(get, set) : std.UInt;
    function get_size():std.UInt return this.size;
    function set_size(v:std.UInt):std.UInt {
        this.size = (v : stdgo.GoUInt32);
        return v;
    }
    public var offset(get, set) : std.UInt;
    function get_offset():std.UInt return this.offset;
    function set_offset(v:std.UInt):std.UInt {
        this.offset = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?size:std.UInt, ?offset:std.UInt) this = new stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader.SectionHeader((name : stdgo.GoString), (size : stdgo.GoUInt32), (offset : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
