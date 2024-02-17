package stdgo.internal.cpu;
/**
    // Package cpu implements processor feature detection
    // used by the Go standard library.
**/
private var __go2hxdoc__package : Bool;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu.cacheLineSize;
function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu.cacheLineSize = v;
var debugOptions(get, set) : Bool;
function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu.debugOptions;
function set_debugOptions(v:Bool):Bool return stdgo._internal.internal.cpu.Cpu.debugOptions = v;
var x86(get, set) : T__struct_0;
function get_x86():T__struct_0 return stdgo._internal.internal.cpu.Cpu.x86;
function set_x86(v:T__struct_0):T__struct_0 return stdgo._internal.internal.cpu.Cpu.x86 = v;
var arm(get, set) : T__struct_1;
function get_arm():T__struct_1 return stdgo._internal.internal.cpu.Cpu.arm;
function set_arm(v:T__struct_1):T__struct_1 return stdgo._internal.internal.cpu.Cpu.arm = v;
var arm64(get, set) : T__struct_2;
function get_arm64():T__struct_2 return stdgo._internal.internal.cpu.Cpu.arm64;
function set_arm64(v:T__struct_2):T__struct_2 return stdgo._internal.internal.cpu.Cpu.arm64 = v;
var mips64x(get, set) : T__struct_3;
function get_mips64x():T__struct_3 return stdgo._internal.internal.cpu.Cpu.mips64x;
function set_mips64x(v:T__struct_3):T__struct_3 return stdgo._internal.internal.cpu.Cpu.mips64x = v;
var ppc64(get, set) : T__struct_4;
function get_ppc64():T__struct_4 return stdgo._internal.internal.cpu.Cpu.ppc64;
function set_ppc64(v:T__struct_4):T__struct_4 return stdgo._internal.internal.cpu.Cpu.ppc64 = v;
var s390x(get, set) : T__struct_5;
function get_s390x():T__struct_5 return stdgo._internal.internal.cpu.Cpu.s390x;
function set_s390x(v:T__struct_5):T__struct_5 return stdgo._internal.internal.cpu.Cpu.s390x = v;
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu.cacheLinePadSize;
@:invalid typedef CacheLinePad = Dynamic;
@:invalid typedef T_option = Dynamic;
@:invalid typedef T__struct_0_asInterface = Dynamic;
@:invalid typedef T__struct_0_static_extension = Dynamic;
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu.T__struct_0;
@:invalid typedef T__struct_1_asInterface = Dynamic;
@:invalid typedef T__struct_1_static_extension = Dynamic;
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu.T__struct_1;
@:invalid typedef T__struct_2_asInterface = Dynamic;
@:invalid typedef T__struct_2_static_extension = Dynamic;
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu.T__struct_2;
@:invalid typedef T__struct_3_asInterface = Dynamic;
@:invalid typedef T__struct_3_static_extension = Dynamic;
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu.T__struct_3;
@:invalid typedef T__struct_4_asInterface = Dynamic;
@:invalid typedef T__struct_4_static_extension = Dynamic;
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu.T__struct_4;
@:invalid typedef T__struct_5_asInterface = Dynamic;
@:invalid typedef T__struct_5_static_extension = Dynamic;
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu.T__struct_5;
/**
    // Initialize examines the processor and sets the relevant variables above.
    // This is called by the runtime package early in program initialization,
    // before normal init functions are run. env is set by runtime if the OS supports
    // cpu feature options in GODEBUG.
**/
inline function initialize(env:String):Void throw "not implemented";
/**
    // Name returns the CPU name given by the vendor
    // if it can be read directly from memory or by CPU instructions.
    // If the CPU name can not be determined an empty string is returned.
    //
    // Implementations that use the Operating System (e.g. sysctl or /sys/)
    // to gather CPU information for display should be placed in internal/sysinfo.
**/
inline function name():String throw "not implemented";
