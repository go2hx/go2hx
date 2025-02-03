package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.Header32_static_extension) abstract Header32(stdgo._internal.debug.elf.Elf_Header32.Header32) from stdgo._internal.debug.elf.Elf_Header32.Header32 to stdgo._internal.debug.elf.Elf_Header32.Header32 {
    public var ident(get, set) : haxe.ds.Vector<std.UInt>;
    function get_ident():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.ident) i]);
    function set_ident(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.ident = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var type(get, set) : std.UInt;
    function get_type():std.UInt return this.type;
    function set_type(v:std.UInt):std.UInt {
        this.type = (v : stdgo.GoUInt16);
        return v;
    }
    public var machine(get, set) : std.UInt;
    function get_machine():std.UInt return this.machine;
    function set_machine(v:std.UInt):std.UInt {
        this.machine = (v : stdgo.GoUInt16);
        return v;
    }
    public var version(get, set) : std.UInt;
    function get_version():std.UInt return this.version;
    function set_version(v:std.UInt):std.UInt {
        this.version = (v : stdgo.GoUInt32);
        return v;
    }
    public var entry(get, set) : std.UInt;
    function get_entry():std.UInt return this.entry;
    function set_entry(v:std.UInt):std.UInt {
        this.entry = (v : stdgo.GoUInt32);
        return v;
    }
    public var phoff(get, set) : std.UInt;
    function get_phoff():std.UInt return this.phoff;
    function set_phoff(v:std.UInt):std.UInt {
        this.phoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var shoff(get, set) : std.UInt;
    function get_shoff():std.UInt return this.shoff;
    function set_shoff(v:std.UInt):std.UInt {
        this.shoff = (v : stdgo.GoUInt32);
        return v;
    }
    public var flags(get, set) : std.UInt;
    function get_flags():std.UInt return this.flags;
    function set_flags(v:std.UInt):std.UInt {
        this.flags = (v : stdgo.GoUInt32);
        return v;
    }
    public var ehsize(get, set) : std.UInt;
    function get_ehsize():std.UInt return this.ehsize;
    function set_ehsize(v:std.UInt):std.UInt {
        this.ehsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phentsize(get, set) : std.UInt;
    function get_phentsize():std.UInt return this.phentsize;
    function set_phentsize(v:std.UInt):std.UInt {
        this.phentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var phnum(get, set) : std.UInt;
    function get_phnum():std.UInt return this.phnum;
    function set_phnum(v:std.UInt):std.UInt {
        this.phnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shentsize(get, set) : std.UInt;
    function get_shentsize():std.UInt return this.shentsize;
    function set_shentsize(v:std.UInt):std.UInt {
        this.shentsize = (v : stdgo.GoUInt16);
        return v;
    }
    public var shnum(get, set) : std.UInt;
    function get_shnum():std.UInt return this.shnum;
    function set_shnum(v:std.UInt):std.UInt {
        this.shnum = (v : stdgo.GoUInt16);
        return v;
    }
    public var shstrndx(get, set) : std.UInt;
    function get_shstrndx():std.UInt return this.shstrndx;
    function set_shstrndx(v:std.UInt):std.UInt {
        this.shstrndx = (v : stdgo.GoUInt16);
        return v;
    }
    public function new(?ident:haxe.ds.Vector<std.UInt>, ?type:std.UInt, ?machine:std.UInt, ?version:std.UInt, ?entry:std.UInt, ?phoff:std.UInt, ?shoff:std.UInt, ?flags:std.UInt, ?ehsize:std.UInt, ?phentsize:std.UInt, ?phnum:std.UInt, ?shentsize:std.UInt, ?shnum:std.UInt, ?shstrndx:std.UInt) this = new stdgo._internal.debug.elf.Elf_Header32.Header32(
([for (i in ident) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>),
(type : stdgo.GoUInt16),
(machine : stdgo.GoUInt16),
(version : stdgo.GoUInt32),
(entry : stdgo.GoUInt32),
(phoff : stdgo.GoUInt32),
(shoff : stdgo.GoUInt32),
(flags : stdgo.GoUInt32),
(ehsize : stdgo.GoUInt16),
(phentsize : stdgo.GoUInt16),
(phnum : stdgo.GoUInt16),
(shentsize : stdgo.GoUInt16),
(shnum : stdgo.GoUInt16),
(shstrndx : stdgo.GoUInt16));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
