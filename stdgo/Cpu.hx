package stdgo;
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
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cachelinepadsize.cacheLinePadSize;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu_cachelinesize.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu_cachelinesize.cacheLineSize = (v : stdgo.GoUIntptr);
        return v;
    }
var options(get, set) : Array<T_option>;
private function get_options():Array<T_option> return [for (i in stdgo._internal.internal.cpu.Cpu_options.options) i];
private function set_options(v:Array<T_option>):Array<T_option> {
        stdgo._internal.internal.cpu.Cpu_options.options = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.cpu.Cpu_t_option.T_option>);
        return v;
    }
@:structInit @:using(stdgo.internal.cpu.Cpu.CacheLinePad_static_extension) abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad) from stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad to stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad {
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.cpu.Cpu_cachelinepad.CacheLinePad(([for (i in __1) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.cpu.Cpu.T_option_static_extension) @:dox(hide) abstract T_option(stdgo._internal.internal.cpu.Cpu_t_option.T_option) from stdgo._internal.internal.cpu.Cpu_t_option.T_option to stdgo._internal.internal.cpu.Cpu_t_option.T_option {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
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
    public function new(?name:String, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) this = new stdgo._internal.internal.cpu.Cpu_t_option.T_option((name : stdgo.GoString), feature, specified, enable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T__struct_0Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_0pointer.T__struct_0Pointer;
@:dox(hide) class T__struct_0_static_extension {

}
@:dox(hide) typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu_t__struct_0.T__struct_0;
@:dox(hide) typedef T__struct_1Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_1pointer.T__struct_1Pointer;
@:dox(hide) class T__struct_1_static_extension {

}
@:dox(hide) typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu_t__struct_1.T__struct_1;
@:dox(hide) typedef T__struct_2Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_2pointer.T__struct_2Pointer;
@:dox(hide) class T__struct_2_static_extension {

}
@:dox(hide) typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu_t__struct_2.T__struct_2;
@:dox(hide) typedef T__struct_3Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_3pointer.T__struct_3Pointer;
@:dox(hide) class T__struct_3_static_extension {

}
@:dox(hide) typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu_t__struct_3.T__struct_3;
@:dox(hide) typedef T__struct_4Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_4pointer.T__struct_4Pointer;
@:dox(hide) class T__struct_4_static_extension {

}
@:dox(hide) typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu_t__struct_4.T__struct_4;
@:dox(hide) typedef T__struct_5Pointer = stdgo._internal.internal.cpu.Cpu_t__struct_5pointer.T__struct_5Pointer;
@:dox(hide) class T__struct_5_static_extension {

}
@:dox(hide) typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu_t__struct_5.T__struct_5;
typedef CacheLinePadPointer = stdgo._internal.internal.cpu.Cpu_cachelinepadpointer.CacheLinePadPointer;
class CacheLinePad_static_extension {

}
@:dox(hide) typedef T_optionPointer = stdgo._internal.internal.cpu.Cpu_t_optionpointer.T_optionPointer;
@:dox(hide) class T_option_static_extension {

}
@:dox(hide) typedef T__struct_0PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_0pointerpointer.T__struct_0PointerPointer;
@:dox(hide) class T__struct_0Pointer_static_extension {

}
@:dox(hide) typedef T__struct_1PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_1pointerpointer.T__struct_1PointerPointer;
@:dox(hide) class T__struct_1Pointer_static_extension {

}
@:dox(hide) typedef T__struct_2PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_2pointerpointer.T__struct_2PointerPointer;
@:dox(hide) class T__struct_2Pointer_static_extension {

}
@:dox(hide) typedef T__struct_3PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_3pointerpointer.T__struct_3PointerPointer;
@:dox(hide) class T__struct_3Pointer_static_extension {

}
@:dox(hide) typedef T__struct_4PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_4pointerpointer.T__struct_4PointerPointer;
@:dox(hide) class T__struct_4Pointer_static_extension {

}
@:dox(hide) typedef T__struct_5PointerPointer = stdgo._internal.internal.cpu.Cpu_t__struct_5pointerpointer.T__struct_5PointerPointer;
@:dox(hide) class T__struct_5Pointer_static_extension {

}
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
    static public inline function initialize(_env:String):Void {
        final _env = (_env : stdgo.GoString);
        stdgo._internal.internal.cpu.Cpu_initialize.initialize(_env);
    }
    /**
        * Name returns the CPU name given by the vendor
        * if it can be read directly from memory or by CPU instructions.
        * If the CPU name can not be determined an empty string is returned.
        * 
        * Implementations that use the Operating System (e.g. sysctl or /sys/)
        * to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public inline function name():String {
        return stdgo._internal.internal.cpu.Cpu_name.name();
    }
}
