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
    	gotoNext = 28493
    	_ = gotoNext == 28493
    	_ = 0
    	fieldBreak = false
    	gotoNext = 28501
    	_ = gotoNext == 28501
    	if !fieldBreak && (env != "") {
    		gotoNext = 28515
    		_ = gotoNext == 28515
    		field_28519 = ""
    		i_28533 = indexByte(env, 44)
    		if i_28533 < 0 {
    			gotoNext = 28569
    			_ = gotoNext == 28569
    			field_28519, env = env, ""
    			gotoNext = 28647
    		} else {
    			gotoNext = 28604
    			_ = gotoNext == 28604
    			gotoNext = 28604
    			_ = gotoNext == 28604
    			field_28519, env = env[:i_28533], env[i_28533+1:]
    			_ = 0
    			gotoNext = 28647
    		}
    		_ = gotoNext == 28647
    		if len(field_28519) < 4 || field_28519[:4] != "cpu." {
    			gotoNext = 28688
    			_ = gotoNext == 28688
    			_ = 0
    			gotoNext = 28501
    			gotoNext = 28708
    		} else {
    			gotoNext = 28708
    		}
    		_ = gotoNext == 28708
    		i_28533 = indexByte(field_28519, 61)
    		if i_28533 < 0 {
    			gotoNext = 28745
    			_ = gotoNext == 28745
    			print("GODEBUG: no value specified for \"", field_28519, "\"\n")
    			_ = 0
    			gotoNext = 28501
    			gotoNext = 28827
    		} else {
    			gotoNext = 28827
    		}
    		_ = gotoNext == 28827
    		key_28827, value_28832 = field_28519[4:i_28533], field_28519[i_28533+1:]
    		gotoNext = 28907
    		_ = gotoNext == 28907
    		switch value_28832 {
    		case "on":
    			gotoNext = 28924
    			_ = gotoNext == 28924
    			enable_28893 = true
    			gotoNext = 29108
    		case "off":
    			gotoNext = 28954
    			_ = gotoNext == 28954
    			enable_28893 = false
    			gotoNext = 29108
    		default:
    			gotoNext = 28986
    			_ = gotoNext == 28986
    			print("GODEBUG: value \"", value_28832, "\" not supported for cpu option \"", key_28827, "\"\n")
    			gotoNext = 28501
    			gotoNext = 29108
    		}
    		_ = gotoNext == 29108
    		if key_28827 == "all" {
    			gotoNext = 29124
    			_ = gotoNext == 29124
    			if 0 < len(options) {
    				gotoNext = 29219
    				_ = gotoNext == 29219
    				i_29133 = 0
    				gotoNext = 29220
    				_ = gotoNext == 29220
    				if i_29133 < len(options) {
    					gotoNext = 29152
    					_ = gotoNext == 29152
    					options[i_29133].Specified = true
    					options[i_29133].Enable = enable_28893
    					i_29133++
    					gotoNext = 29220
    				} else {
    					gotoNext = 29225
    				}
    				gotoNext = 29225
    			} else {
    				gotoNext = 29225
    			}
    			_ = gotoNext == 29225
    			gotoNext = 28501
    			gotoNext = 29247
    		} else {
    			gotoNext = 29247
    		}
    		_ = gotoNext == 29247
    		if 0 < len(options) {
    			gotoNext = 29391
    			_ = gotoNext == 29391
    			i_29251 = 0
    			gotoNext = 29392
    			_ = gotoNext == 29392
    			if i_29251 < len(options) {
    				gotoNext = 29270
    				_ = gotoNext == 29270
    				if options[i_29251].Name == key_28827 {
    					gotoNext = 29301
    					_ = gotoNext == 29301
    					options[i_29251].Specified = true
    					options[i_29251].Enable = enable_28893
    					gotoNext = 28501
    					gotoNext = 29251
    				} else {
    					gotoNext = 29251
    				}
    				_ = gotoNext == 29251
    				i_29251++
    				gotoNext = 29392
    			} else {
    				gotoNext = 29397
    			}
    			gotoNext = 29397
    		} else {
    			gotoNext = 29397
    		}
    		_ = gotoNext == 29397
    		print("GODEBUG: unknown cpu feature \"", key_28827, "\"\n")
    		gotoNext = 28501
    	} else {
    		gotoNext = 29456
    	}
    	_ = gotoNext == 29456
    	if 0 < len(options) {
    		gotoNext = 29669
    		_ = gotoNext == 29669
    		i_29468_0, o_29463 = 0, options[0]
    		gotoNext = 29670
    		_ = gotoNext == 29670
    		if i_29468_0 < len(options) {
    			gotoNext = 29482
    			_ = gotoNext == 29482
    			o_29463 = options[i_29468_0]
    			if !o_29463.Specified {
    				gotoNext = 29502
    				_ = gotoNext == 29502
    				i_29468_0++
    				gotoNext = 29670
    				gotoNext = 29523
    			} else {
    				gotoNext = 29523
    			}
    			_ = gotoNext == 29523
    			if o_29463.Enable && !*o_29463.Feature {
    				gotoNext = 29550
    				_ = gotoNext == 29550
    				print("GODEBUG: can not enable \"", o_29463.Name, "\", missing CPU support\n")
    				i_29468_0++
    				gotoNext = 29670
    				gotoNext = 29647
    			} else {
    				gotoNext = 29647
    			}
    			_ = gotoNext == 29647
    			*o_29463.Feature = o_29463.Enable
    			i_29468_0++
    			gotoNext = 29670
    		} else {
    			gotoNext = 29672
    		}
    		gotoNext = 29672
    	} else {
    		gotoNext = 29672
    	}
    	_ = gotoNext == 29672
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
