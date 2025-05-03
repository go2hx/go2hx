package stdgo.internal.cpu;
var debugOptions(get, set) : Bool;
private function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu_debugoptions.debugOptions;
private function set_debugOptions(v:Bool):Bool {
        stdgo._internal.internal.cpu.Cpu_debugoptions.debugOptions = v;
        return v;
    }
var x86(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_0.T__struct_0;
private function get_x86():stdgo._internal.internal.cpu.Cpu_t__struct_0.T__struct_0 return stdgo._internal.internal.cpu.Cpu_x86.x86;
private function set_x86(v:stdgo._internal.internal.cpu.Cpu_t__struct_0.T__struct_0):stdgo._internal.internal.cpu.Cpu_t__struct_0.T__struct_0 {
        stdgo._internal.internal.cpu.Cpu_x86.x86 = v;
        return v;
    }
var aRM(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_1.T__struct_1;
private function get_aRM():stdgo._internal.internal.cpu.Cpu_t__struct_1.T__struct_1 return stdgo._internal.internal.cpu.Cpu_arm.aRM;
private function set_aRM(v:stdgo._internal.internal.cpu.Cpu_t__struct_1.T__struct_1):stdgo._internal.internal.cpu.Cpu_t__struct_1.T__struct_1 {
        stdgo._internal.internal.cpu.Cpu_arm.aRM = v;
        return v;
    }
var aRM64(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_2.T__struct_2;
private function get_aRM64():stdgo._internal.internal.cpu.Cpu_t__struct_2.T__struct_2 return stdgo._internal.internal.cpu.Cpu_arm64.aRM64;
private function set_aRM64(v:stdgo._internal.internal.cpu.Cpu_t__struct_2.T__struct_2):stdgo._internal.internal.cpu.Cpu_t__struct_2.T__struct_2 {
        stdgo._internal.internal.cpu.Cpu_arm64.aRM64 = v;
        return v;
    }
var mIPS64X(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_3.T__struct_3;
private function get_mIPS64X():stdgo._internal.internal.cpu.Cpu_t__struct_3.T__struct_3 return stdgo._internal.internal.cpu.Cpu_mips64x.mIPS64X;
private function set_mIPS64X(v:stdgo._internal.internal.cpu.Cpu_t__struct_3.T__struct_3):stdgo._internal.internal.cpu.Cpu_t__struct_3.T__struct_3 {
        stdgo._internal.internal.cpu.Cpu_mips64x.mIPS64X = v;
        return v;
    }
var pPC64(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_4.T__struct_4;
private function get_pPC64():stdgo._internal.internal.cpu.Cpu_t__struct_4.T__struct_4 return stdgo._internal.internal.cpu.Cpu_ppc64.pPC64;
private function set_pPC64(v:stdgo._internal.internal.cpu.Cpu_t__struct_4.T__struct_4):stdgo._internal.internal.cpu.Cpu_t__struct_4.T__struct_4 {
        stdgo._internal.internal.cpu.Cpu_ppc64.pPC64 = v;
        return v;
    }
var s390X(get, set) : stdgo._internal.internal.cpu.Cpu_t__struct_5.T__struct_5;
private function get_s390X():stdgo._internal.internal.cpu.Cpu_t__struct_5.T__struct_5 return stdgo._internal.internal.cpu.Cpu_s390x.s390X;
private function set_s390X(v:stdgo._internal.internal.cpu.Cpu_t__struct_5.T__struct_5):stdgo._internal.internal.cpu.Cpu_t__struct_5.T__struct_5 {
        stdgo._internal.internal.cpu.Cpu_s390x.s390X = v;
        return v;
    }
var cacheLinePadSize : stdgo.GoUInt64 = 64i64;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu_cachelinesize.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu_cachelinesize.cacheLineSize = v;
        return v;
    }
var options(get, set) : stdgo.Slice<stdgo._internal.internal.cpu.Cpu_t_option.T_option>;
private function get_options():stdgo.Slice<stdgo._internal.internal.cpu.Cpu_t_option.T_option> return stdgo._internal.internal.cpu.Cpu_options.options;
private function set_options(v:stdgo.Slice<stdgo._internal.internal.cpu.Cpu_t_option.T_option>):stdgo.Slice<stdgo._internal.internal.cpu.Cpu_t_option.T_option> {
        stdgo._internal.internal.cpu.Cpu_options.options = v;
        return v;
    }
typedef CacheLinePad = stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad;
typedef CacheLinePadPointer = stdgo._internal.internal.cpu.Cpu_cachelinepadpointer.CacheLinePadPointer;
/**
    * Package cpu implements processor feature detection
    * used by the Go standard library.
**/
class Cpu {
    /**
        * Initialize examines the processor and sets the relevant variables above.
        * This is called by the runtime package early in program initialization,
        * before normal init functions are run. env is set by runtime if the OS supports
        * cpu feature options in GODEBUG.
    **/
    static public inline function initialize(_env:stdgo.GoString):Void stdgo._internal.internal.cpu.Cpu_initialize.initialize(_env);
    /**
        * Name returns the CPU name given by the vendor
        * if it can be read directly from memory or by CPU instructions.
        * If the CPU name can not be determined an empty string is returned.
        * 
        * Implementations that use the Operating System (e.g. sysctl or /sys/)
        * to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public inline function name():stdgo.GoString return stdgo._internal.internal.cpu.Cpu_name.name();
}
