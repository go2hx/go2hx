package stdgo.internal;
/**
    Package cpu implements processor feature detection
    used by the Go standard library.
**/
private var __go2hxdoc__package : Bool;
var debugOptions(get, set) : Bool;
private function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu.debugOptions;
private function set_debugOptions(v:Bool):Bool {
        stdgo._internal.internal.cpu.Cpu.debugOptions = v;
        return v;
    }
var x86(get, set) : T__struct_0;
private function get_x86():T__struct_0 return stdgo._internal.internal.cpu.Cpu.x86;
private function set_x86(v:T__struct_0):T__struct_0 {
        stdgo._internal.internal.cpu.Cpu.x86 = v;
        return v;
    }
var arm(get, set) : T__struct_1;
private function get_arm():T__struct_1 return stdgo._internal.internal.cpu.Cpu.arm;
private function set_arm(v:T__struct_1):T__struct_1 {
        stdgo._internal.internal.cpu.Cpu.arm = v;
        return v;
    }
var arm64(get, set) : T__struct_2;
private function get_arm64():T__struct_2 return stdgo._internal.internal.cpu.Cpu.arm64;
private function set_arm64(v:T__struct_2):T__struct_2 {
        stdgo._internal.internal.cpu.Cpu.arm64 = v;
        return v;
    }
var mips64x(get, set) : T__struct_3;
private function get_mips64x():T__struct_3 return stdgo._internal.internal.cpu.Cpu.mips64x;
private function set_mips64x(v:T__struct_3):T__struct_3 {
        stdgo._internal.internal.cpu.Cpu.mips64x = v;
        return v;
    }
var ppc64(get, set) : T__struct_4;
private function get_ppc64():T__struct_4 return stdgo._internal.internal.cpu.Cpu.ppc64;
private function set_ppc64(v:T__struct_4):T__struct_4 {
        stdgo._internal.internal.cpu.Cpu.ppc64 = v;
        return v;
    }
var s390x(get, set) : T__struct_5;
private function get_s390x():T__struct_5 return stdgo._internal.internal.cpu.Cpu.s390x;
private function set_s390x(v:T__struct_5):T__struct_5 {
        stdgo._internal.internal.cpu.Cpu.s390x = v;
        return v;
    }
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu.cacheLinePadSize;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu.cacheLineSize = v;
        return v;
    }
abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu.CacheLinePad) from stdgo._internal.internal.cpu.Cpu.CacheLinePad to stdgo._internal.internal.cpu.Cpu.CacheLinePad {
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.cpu.Cpu.CacheLinePad(([for (i in __1) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
abstract T_option(stdgo._internal.internal.cpu.Cpu.T_option) from stdgo._internal.internal.cpu.Cpu.T_option to stdgo._internal.internal.cpu.Cpu.T_option {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = v;
        return v;
    }
    public var feature(get, set) : stdgo.Pointer<Bool>;
    function get_feature():stdgo.Pointer<Bool> return this.feature;
    function set_feature(v:stdgo.Pointer<Bool>):stdgo.Pointer<Bool> {
        this.feature = v;
        return v;
    }
    public var specified(get, set) : Bool;
    function get_specified():Bool return this.specified;
    function set_specified(v:Bool):Bool {
        this.specified = v;
        return v;
    }
    public var enable(get, set) : Bool;
    function get_enable():Bool return this.enable;
    function set_enable(v:Bool):Bool {
        this.enable = v;
        return v;
    }
    public function new(?name:String, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) this = new stdgo._internal.internal.cpu.Cpu.T_option(name, feature, specified, enable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu.T__struct_0;
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu.T__struct_1;
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu.T__struct_2;
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu.T__struct_3;
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu.T__struct_4;
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu.T__struct_5;
class Cpu {
    /**
        Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
    **/
    static public function initialize(env:String):Void {
        stdgo._internal.internal.cpu.Cpu.initialize(env);
    }
    /**
        Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
        
        Implementations that use the Operating System (e.g. sysctl or /sys/)
        to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public function name():String {
        return stdgo._internal.internal.cpu.Cpu.name();
    }
}
