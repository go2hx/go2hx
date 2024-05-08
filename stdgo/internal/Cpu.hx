package stdgo.internal;
/**
    Package cpu implements processor feature detection
    used by the Go standard library.
**/
private var __go2hxdoc__package : Bool;
var debugOptions(get, set) : Bool;
private function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu.debugOptions;
private function set_debugOptions(v:Bool):Bool return stdgo._internal.internal.cpu.Cpu.debugOptions = v;
var x86(get, set) : T__struct_0;
private function get_x86():T__struct_0 return stdgo._internal.internal.cpu.Cpu.x86;
private function set_x86(v:T__struct_0):T__struct_0 return stdgo._internal.internal.cpu.Cpu.x86 = v;
var arm(get, set) : T__struct_1;
private function get_arm():T__struct_1 return stdgo._internal.internal.cpu.Cpu.arm;
private function set_arm(v:T__struct_1):T__struct_1 return stdgo._internal.internal.cpu.Cpu.arm = v;
var arm64(get, set) : T__struct_2;
private function get_arm64():T__struct_2 return stdgo._internal.internal.cpu.Cpu.arm64;
private function set_arm64(v:T__struct_2):T__struct_2 return stdgo._internal.internal.cpu.Cpu.arm64 = v;
var mips64x(get, set) : T__struct_3;
private function get_mips64x():T__struct_3 return stdgo._internal.internal.cpu.Cpu.mips64x;
private function set_mips64x(v:T__struct_3):T__struct_3 return stdgo._internal.internal.cpu.Cpu.mips64x = v;
var ppc64(get, set) : T__struct_4;
private function get_ppc64():T__struct_4 return stdgo._internal.internal.cpu.Cpu.ppc64;
private function set_ppc64(v:T__struct_4):T__struct_4 return stdgo._internal.internal.cpu.Cpu.ppc64 = v;
var s390x(get, set) : T__struct_5;
private function get_s390x():T__struct_5 return stdgo._internal.internal.cpu.Cpu.s390x;
private function set_s390x(v:T__struct_5):T__struct_5 return stdgo._internal.internal.cpu.Cpu.s390x = v;
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu.cacheLinePadSize;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu.cacheLineSize = v;
@:forward @:forward.new abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu.CacheLinePad) from stdgo._internal.internal.cpu.Cpu.CacheLinePad to stdgo._internal.internal.cpu.Cpu.CacheLinePad {

}
@:forward @:forward.new abstract T_option(stdgo._internal.internal.cpu.Cpu.T_option) from stdgo._internal.internal.cpu.Cpu.T_option to stdgo._internal.internal.cpu.Cpu.T_option {

}
@:forward @:forward.new abstract T__struct_0_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_0_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_0_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_0_asInterface {

}
@:forward @:forward.new abstract T__struct_0_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_0_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_0_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu.T__struct_0;
@:forward @:forward.new abstract T__struct_1_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_1_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_1_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_1_asInterface {

}
@:forward @:forward.new abstract T__struct_1_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_1_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_1_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu.T__struct_1;
@:forward @:forward.new abstract T__struct_2_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_2_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_2_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_2_asInterface {

}
@:forward @:forward.new abstract T__struct_2_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_2_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_2_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu.T__struct_2;
@:forward @:forward.new abstract T__struct_3_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_3_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_3_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_3_asInterface {

}
@:forward @:forward.new abstract T__struct_3_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_3_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_3_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu.T__struct_3;
@:forward @:forward.new abstract T__struct_4_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_4_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_4_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_4_asInterface {

}
@:forward @:forward.new abstract T__struct_4_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_4_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_4_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu.T__struct_4;
@:forward @:forward.new abstract T__struct_5_asInterface(stdgo._internal.internal.cpu.Cpu.T__struct_5_asInterface) from stdgo._internal.internal.cpu.Cpu.T__struct_5_asInterface to stdgo._internal.internal.cpu.Cpu.T__struct_5_asInterface {

}
@:forward @:forward.new abstract T__struct_5_static_extension(stdgo._internal.internal.cpu.Cpu.T__struct_5_static_extension) from stdgo._internal.internal.cpu.Cpu.T__struct_5_static_extension to stdgo._internal.internal.cpu.Cpu.T__struct_5_static_extension {

}
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
