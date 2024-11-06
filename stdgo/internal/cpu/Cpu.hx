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
    	gotoNext = 253825
    	_ = gotoNext == 253825
    	_ = 0
    	fieldBreak = false
    	gotoNext = 253833
    	_ = gotoNext == 253833
    	if !fieldBreak && (env != "") {
    		gotoNext = 253847
    		_ = gotoNext == 253847
    		field_253851 = ""
    		i_253865 = indexByte(env, 44)
    		if i_253865 < 0 {
    			gotoNext = 253901
    			_ = gotoNext == 253901
    			field_253851, env = env, ""
    			gotoNext = 253979
    		} else {
    			gotoNext = 253936
    			_ = gotoNext == 253936
    			field_253851, env = env[:i_253865], env[i_253865+1:]
    			gotoNext = 253979
    		}
    		_ = gotoNext == 253979
    		if len(field_253851) < 4 || field_253851[:4] != "cpu." {
    			gotoNext = 254020
    			_ = gotoNext == 254020
    			_ = 0
    			gotoNext = 253833
    			gotoNext = 254040
    		} else {
    			gotoNext = 254040
    		}
    		_ = gotoNext == 254040
    		i_253865 = indexByte(field_253851, 61)
    		if i_253865 < 0 {
    			gotoNext = 254077
    			_ = gotoNext == 254077
    			print("GODEBUG: no value specified for \"", field_253851, "\"\n")
    			_ = 0
    			gotoNext = 253833
    			gotoNext = 254159
    		} else {
    			gotoNext = 254159
    		}
    		_ = gotoNext == 254159
    		key_254159, value_254164 = field_253851[4:i_253865], field_253851[i_253865+1:]
    		_ = 0
    		gotoNext = 254239
    		_ = gotoNext == 254239
    		switch value_254164 {
    		case "on":
    			gotoNext = 254256
    			_ = gotoNext == 254256
    			enable_254225 = true
    			gotoNext = 254440
    		case "off":
    			gotoNext = 254286
    			_ = gotoNext == 254286
    			enable_254225 = false
    			gotoNext = 254440
    		default:
    			gotoNext = 254318
    			_ = gotoNext == 254318
    			print("GODEBUG: value \"", value_254164, "\" not supported for cpu option \"", key_254159, "\"\n")
    			gotoNext = 253833
    			gotoNext = 254440
    		}
    		_ = gotoNext == 254440
    		if key_254159 == "all" {
    			gotoNext = 254456
    			_ = gotoNext == 254456
    			if 0 < len(options) {
    				gotoNext = 254551
    				_ = gotoNext == 254551
    				i_254465 = 0
    				gotoNext = 254552
    				_ = gotoNext == 254552
    				if i_254465 < len(options) {
    					gotoNext = 254484
    					_ = gotoNext == 254484
    					options[i_254465].Specified = true
    					options[i_254465].Enable = enable_254225
    					i_254465++
    					gotoNext = 254552
    				} else {
    					gotoNext = 254557
    				}
    				gotoNext = 254557
    			} else {
    				gotoNext = 254557
    			}
    			_ = gotoNext == 254557
    			gotoNext = 253833
    			gotoNext = 254579
    		} else {
    			gotoNext = 254579
    		}
    		_ = gotoNext == 254579
    		if 0 < len(options) {
    			gotoNext = 254723
    			_ = gotoNext == 254723
    			i_254583 = 0
    			gotoNext = 254724
    			_ = gotoNext == 254724
    			if i_254583 < len(options) {
    				gotoNext = 254602
    				_ = gotoNext == 254602
    				if options[i_254583].Name == key_254159 {
    					gotoNext = 254633
    					_ = gotoNext == 254633
    					options[i_254583].Specified = true
    					options[i_254583].Enable = enable_254225
    					gotoNext = 253833
    					gotoNext = 254583
    				} else {
    					gotoNext = 254583
    				}
    				_ = gotoNext == 254583
    				i_254583++
    				gotoNext = 254724
    			} else {
    				gotoNext = 254729
    			}
    			gotoNext = 254729
    		} else {
    			gotoNext = 254729
    		}
    		_ = gotoNext == 254729
    		print("GODEBUG: unknown cpu feature \"", key_254159, "\"\n")
    		gotoNext = 253833
    	} else {
    		gotoNext = 254788
    	}
    	_ = gotoNext == 254788
    	if 0 < len(options) {
    		gotoNext = 255001
    		_ = gotoNext == 255001
    		i_254800_0, o_254795 = 0, options[0]
    		gotoNext = 255002
    		_ = gotoNext == 255002
    		if i_254800_0 < len(options) {
    			gotoNext = 254814
    			_ = gotoNext == 254814
    			o_254795 = options[i_254800_0]
    			if !o_254795.Specified {
    				gotoNext = 254834
    				_ = gotoNext == 254834
    				i_254800_0++
    				gotoNext = 255002
    				gotoNext = 254855
    			} else {
    				gotoNext = 254855
    			}
    			_ = gotoNext == 254855
    			if o_254795.Enable && !*o_254795.Feature {
    				gotoNext = 254882
    				_ = gotoNext == 254882
    				print("GODEBUG: can not enable \"", o_254795.Name, "\", missing CPU support\n")
    				i_254800_0++
    				gotoNext = 255002
    				gotoNext = 254979
    			} else {
    				gotoNext = 254979
    			}
    			_ = gotoNext == 254979
    			*o_254795.Feature = o_254795.Enable
    			i_254800_0++
    			gotoNext = 255002
    		} else {
    			gotoNext = 255004
    		}
    		gotoNext = 255004
    	} else {
    		gotoNext = 255004
    	}
    	_ = gotoNext == 255004
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
