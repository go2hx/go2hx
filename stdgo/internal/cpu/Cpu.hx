package stdgo.internal.cpu;
var debugOptions(get, set) : Bool;
private function get_debugOptions():Bool return stdgo._internal.internal.cpu.Cpu_debugOptions.debugOptions;
private function set_debugOptions(v:Bool):Bool {
        stdgo._internal.internal.cpu.Cpu_debugOptions.debugOptions = v;
        return v;
    }
var x86(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
private function get_x86():stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0 return stdgo._internal.internal.cpu.Cpu_x86.x86;
private function set_x86(v:stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0):stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0 {
        stdgo._internal.internal.cpu.Cpu_x86.x86 = v;
        return v;
    }
var arm(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
private function get_arm():stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 return stdgo._internal.internal.cpu.Cpu_arm.arm;
private function set_arm(v:stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1):stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 {
        stdgo._internal.internal.cpu.Cpu_arm.arm = v;
        return v;
    }
var arm64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
private function get_arm64():stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 return stdgo._internal.internal.cpu.Cpu_arm64.arm64;
private function set_arm64(v:stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2):stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 {
        stdgo._internal.internal.cpu.Cpu_arm64.arm64 = v;
        return v;
    }
var mips64x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
private function get_mips64x():stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 return stdgo._internal.internal.cpu.Cpu_mips64x.mips64x;
private function set_mips64x(v:stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3):stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 {
        stdgo._internal.internal.cpu.Cpu_mips64x.mips64x = v;
        return v;
    }
var ppc64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
private function get_ppc64():stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 return stdgo._internal.internal.cpu.Cpu_ppc64.ppc64;
private function set_ppc64(v:stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4):stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 {
        stdgo._internal.internal.cpu.Cpu_ppc64.ppc64 = v;
        return v;
    }
var s390x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
private function get_s390x():stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 return stdgo._internal.internal.cpu.Cpu_s390x.s390x;
private function set_s390x(v:stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5):stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 {
        stdgo._internal.internal.cpu.Cpu_s390x.s390x = v;
        return v;
    }
final cacheLinePadSize : haxe.UInt64 = stdgo._internal.internal.cpu.Cpu_cacheLinePadSize.cacheLinePadSize;
var cacheLineSize(get, set) : stdgo.GoUIntptr;
private function get_cacheLineSize():stdgo.GoUIntptr return stdgo._internal.internal.cpu.Cpu_cacheLineSize.cacheLineSize;
private function set_cacheLineSize(v:stdgo.GoUIntptr):stdgo.GoUIntptr {
        stdgo._internal.internal.cpu.Cpu_cacheLineSize.cacheLineSize = v;
        return v;
    }
var options(get, set) : Array<T_option>;
private function get_options():Array<T_option> return [for (i in stdgo._internal.internal.cpu.Cpu_options.options) i];
private function set_options(v:Array<T_option>):Array<T_option> {
        stdgo._internal.internal.cpu.Cpu_options.options = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.cpu.Cpu_T_option.T_option>);
        return v;
    }
@:structInit abstract CacheLinePad(stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad) from stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad to stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad {
    public var __1(get, set) : haxe.ds.Vector<std.UInt>;
    function get___1():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.__1) i]);
    function set___1(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.__1 = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?__1:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.internal.cpu.Cpu_CacheLinePad.CacheLinePad(([for (i in __1) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit abstract T_option(stdgo._internal.internal.cpu.Cpu_T_option.T_option) from stdgo._internal.internal.cpu.Cpu_T_option.T_option to stdgo._internal.internal.cpu.Cpu_T_option.T_option {
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
    public function new(?name:String, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) this = new stdgo._internal.internal.cpu.Cpu_T_option.T_option(name, feature, specified, enable);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
/**
    /|*{
    	gotoNext = 5792
    	_ = gotoNext == 5792
    	_ = 0
    	fieldBreak = false
    	gotoNext = 5800
    	_ = gotoNext == 5800
    	if !fieldBreak && (env != "") {
    		gotoNext = 5814
    		_ = gotoNext == 5814
    		field_5818 = ""
    		i_5832 = indexByte(env, 44)
    		if i_5832 < 0 {
    			gotoNext = 5868
    			_ = gotoNext == 5868
    			field_5818, env = env, ""
    			gotoNext = 5946
    		} else {
    			gotoNext = 5903
    			_ = gotoNext == 5903
    			gotoNext = 5903
    			_ = gotoNext == 5903
    			field_5818, env = env[:i_5832], env[i_5832+1:]
    			_ = 0
    			gotoNext = 5946
    		}
    		_ = gotoNext == 5946
    		if len(field_5818) < 4 || field_5818[:4] != "cpu." {
    			gotoNext = 5987
    			_ = gotoNext == 5987
    			_ = 0
    			gotoNext = 5800
    			gotoNext = 6007
    		} else {
    			gotoNext = 6007
    		}
    		_ = gotoNext == 6007
    		i_5832 = indexByte(field_5818, 61)
    		if i_5832 < 0 {
    			gotoNext = 6044
    			_ = gotoNext == 6044
    			print("GODEBUG: no value specified for \"", field_5818, "\"\n")
    			_ = 0
    			gotoNext = 5800
    			gotoNext = 6126
    		} else {
    			gotoNext = 6126
    		}
    		_ = gotoNext == 6126
    		key_6126, value_6131 = field_5818[4:i_5832], field_5818[i_5832+1:]
    		gotoNext = 6206
    		_ = gotoNext == 6206
    		switch value_6131 {
    		case "on":
    			gotoNext = 6223
    			_ = gotoNext == 6223
    			enable_6192 = true
    			gotoNext = 6407
    		case "off":
    			gotoNext = 6253
    			_ = gotoNext == 6253
    			enable_6192 = false
    			gotoNext = 6407
    		default:
    			gotoNext = 6285
    			_ = gotoNext == 6285
    			print("GODEBUG: value \"", value_6131, "\" not supported for cpu option \"", key_6126, "\"\n")
    			gotoNext = 5800
    			gotoNext = 6407
    		}
    		_ = gotoNext == 6407
    		if key_6126 == "all" {
    			gotoNext = 6423
    			_ = gotoNext == 6423
    			if 0 < len(options) {
    				gotoNext = 6518
    				_ = gotoNext == 6518
    				i_6432 = 0
    				gotoNext = 6519
    				_ = gotoNext == 6519
    				if i_6432 < len(options) {
    					gotoNext = 6451
    					_ = gotoNext == 6451
    					options[i_6432].Specified = true
    					options[i_6432].Enable = enable_6192
    					i_6432++
    					gotoNext = 6519
    				} else {
    					gotoNext = 6524
    				}
    				gotoNext = 6524
    			} else {
    				gotoNext = 6524
    			}
    			_ = gotoNext == 6524
    			gotoNext = 5800
    			gotoNext = 6546
    		} else {
    			gotoNext = 6546
    		}
    		_ = gotoNext == 6546
    		if 0 < len(options) {
    			gotoNext = 6690
    			_ = gotoNext == 6690
    			i_6550 = 0
    			gotoNext = 6691
    			_ = gotoNext == 6691
    			if i_6550 < len(options) {
    				gotoNext = 6569
    				_ = gotoNext == 6569
    				if options[i_6550].Name == key_6126 {
    					gotoNext = 6600
    					_ = gotoNext == 6600
    					options[i_6550].Specified = true
    					options[i_6550].Enable = enable_6192
    					gotoNext = 5800
    					gotoNext = 6550
    				} else {
    					gotoNext = 6550
    				}
    				_ = gotoNext == 6550
    				i_6550++
    				gotoNext = 6691
    			} else {
    				gotoNext = 6696
    			}
    			gotoNext = 6696
    		} else {
    			gotoNext = 6696
    		}
    		_ = gotoNext == 6696
    		print("GODEBUG: unknown cpu feature \"", key_6126, "\"\n")
    		gotoNext = 5800
    	} else {
    		gotoNext = 6755
    	}
    	_ = gotoNext == 6755
    	if 0 < len(options) {
    		gotoNext = 6968
    		_ = gotoNext == 6968
    		i_6767_0, o_6762 = 0, options[0]
    		gotoNext = 6969
    		_ = gotoNext == 6969
    		if i_6767_0 < len(options) {
    			gotoNext = 6781
    			_ = gotoNext == 6781
    			o_6762 = options[i_6767_0]
    			if !o_6762.Specified {
    				gotoNext = 6801
    				_ = gotoNext == 6801
    				i_6767_0++
    				gotoNext = 6969
    				gotoNext = 6822
    			} else {
    				gotoNext = 6822
    			}
    			_ = gotoNext == 6822
    			if o_6762.Enable && !*o_6762.Feature {
    				gotoNext = 6849
    				_ = gotoNext == 6849
    				print("GODEBUG: can not enable \"", o_6762.Name, "\", missing CPU support\n")
    				i_6767_0++
    				gotoNext = 6969
    				gotoNext = 6946
    			} else {
    				gotoNext = 6946
    			}
    			_ = gotoNext == 6946
    			*o_6762.Feature = o_6762.Enable
    			i_6767_0++
    			gotoNext = 6969
    		} else {
    			gotoNext = 6971
    		}
    		gotoNext = 6971
    	} else {
    		gotoNext = 6971
    	}
    	_ = gotoNext == 6971
    	gotoNext = -1
    }*|/
**/
class Cpu {
    /**
        Initialize examines the processor and sets the relevant variables above.
        This is called by the runtime package early in program initialization,
        before normal init functions are run. env is set by runtime if the OS supports
        cpu feature options in GODEBUG.
    **/
    static public function initialize(_env:String):Void {
        stdgo._internal.internal.cpu.Cpu_initialize.initialize(_env);
    }
    /**
        Name returns the CPU name given by the vendor
        if it can be read directly from memory or by CPU instructions.
        If the CPU name can not be determined an empty string is returned.
        
        Implementations that use the Operating System (e.g. sysctl or /sys/)
        to gather CPU information for display should be placed in internal/sysinfo.
    **/
    static public function name():String {
        return stdgo._internal.internal.cpu.Cpu_name.name();
    }
}
