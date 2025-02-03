package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.SectionHeader_static_extension) abstract SectionHeader(stdgo._internal.internal.xcoff.Xcoff_SectionHeader.SectionHeader) from stdgo._internal.internal.xcoff.Xcoff_SectionHeader.SectionHeader to stdgo._internal.internal.xcoff.Xcoff_SectionHeader.SectionHeader {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var virtualAddress(get, set) : haxe.UInt64;
    function get_virtualAddress():haxe.UInt64 return this.virtualAddress;
    function set_virtualAddress(v:haxe.UInt64):haxe.UInt64 {
        this.virtualAddress = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt32);
        return v;
    }
    public var relptr(get, set) : haxe.UInt64;
    function get_relptr():haxe.UInt64 return this.relptr;
    function set_relptr(v:haxe.UInt64):haxe.UInt64 {
        this.relptr = (v : stdgo.GoUInt64);
        return v;
    }
    public var nreloc(get, set) : std.UInt;
    function get_nreloc():std.UInt return this.nreloc;
    function set_nreloc(v:std.UInt):std.UInt {
        this.nreloc = (v : stdgo.GoUInt32);
        return v;
    }
    public function new(?name:String, ?virtualAddress:haxe.UInt64, ?size:haxe.UInt64, ?type:std.UInt, ?relptr:haxe.UInt64, ?nreloc:std.UInt) this = new stdgo._internal.internal.xcoff.Xcoff_SectionHeader.SectionHeader((name : stdgo.GoString), (virtualAddress : stdgo.GoUInt64), (size : stdgo.GoUInt64), (type : stdgo.GoUInt32), (relptr : stdgo.GoUInt64), (nreloc : stdgo.GoUInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
