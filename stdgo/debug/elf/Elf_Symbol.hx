package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Symbol_static_extension) abstract Symbol(stdgo._internal.debug.elf.Elf_Symbol.Symbol) from stdgo._internal.debug.elf.Elf_Symbol.Symbol to stdgo._internal.debug.elf.Elf_Symbol.Symbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var info(get, set) : std.UInt;
    function get_info():std.UInt return this.info;
    function set_info(v:std.UInt):std.UInt {
        this.info = (v : stdgo.GoUInt8);
        return v;
    }
    public var other(get, set) : std.UInt;
    function get_other():std.UInt return this.other;
    function set_other(v:std.UInt):std.UInt {
        this.other = (v : stdgo.GoUInt8);
        return v;
    }
    public var section(get, set) : SectionIndex;
    function get_section():SectionIndex return this.section;
    function set_section(v:SectionIndex):SectionIndex {
        this.section = v;
        return v;
    }
    public var value(get, set) : haxe.UInt64;
    function get_value():haxe.UInt64 return this.value;
    function set_value(v:haxe.UInt64):haxe.UInt64 {
        this.value = (v : stdgo.GoUInt64);
        return v;
    }
    public var size(get, set) : haxe.UInt64;
    function get_size():haxe.UInt64 return this.size;
    function set_size(v:haxe.UInt64):haxe.UInt64 {
        this.size = (v : stdgo.GoUInt64);
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = (v : stdgo.GoString);
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?info:std.UInt, ?other:std.UInt, ?section:SectionIndex, ?value:haxe.UInt64, ?size:haxe.UInt64, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_Symbol.Symbol((name : stdgo.GoString), (info : stdgo.GoUInt8), (other : stdgo.GoUInt8), section, (value : stdgo.GoUInt64), (size : stdgo.GoUInt64), (version : stdgo.GoString), (library : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
