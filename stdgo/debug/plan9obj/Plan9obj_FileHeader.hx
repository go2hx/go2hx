package stdgo.debug.plan9obj;
@:structInit @:using(stdgo.debug.plan9obj.Plan9obj.FileHeader_static_extension) abstract FileHeader(stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader) from stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader to stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt32);
        return v;
    }
    public var bss(get, set) : std.UInt;
    function get_bss():std.UInt return this.bss;
    function set_bss(v:std.UInt):std.UInt {
        this.bss = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : haxe.UInt64;
    function get_entry():haxe.UInt64 return this.entry;
    function set_entry(v:haxe.UInt64):haxe.UInt64 {
        this.entry = (v : stdgo.GoUInt64);
        return v;
    }
    public var ptrSize(get, set) : StdTypes.Int;
    function get_ptrSize():StdTypes.Int return this.ptrSize;
    function set_ptrSize(v:StdTypes.Int):StdTypes.Int {
        this.ptrSize = (v : stdgo.GoInt);
        return v;
    }
    public var loadAddress(get, set) : haxe.UInt64;
    function get_loadAddress():haxe.UInt64 return this.loadAddress;
    function set_loadAddress(v:haxe.UInt64):haxe.UInt64 {
        this.loadAddress = (v : stdgo.GoUInt64);
        return v;
    }
    public var hdrSize(get, set) : haxe.UInt64;
    function get_hdrSize():haxe.UInt64 return this.hdrSize;
    function set_hdrSize(v:haxe.UInt64):haxe.UInt64 {
        this.hdrSize = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?magic:std.UInt, ?bss:std.UInt, ?entry:haxe.UInt64, ?ptrSize:StdTypes.Int, ?loadAddress:haxe.UInt64, ?hdrSize:haxe.UInt64) this = new stdgo._internal.debug.plan9obj.Plan9obj_FileHeader.FileHeader((magic : stdgo.GoUInt32), (bss : stdgo.GoUInt32), (entry : stdgo.GoUInt64), (ptrSize : stdgo.GoInt), (loadAddress : stdgo.GoUInt64), (hdrSize : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
