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
    	gotoNext = 261848
    	_ = gotoNext == 261848
    	_ = 0
    	fieldBreak = false
    	gotoNext = 261856
    	_ = gotoNext == 261856
    	if !fieldBreak && (env != "") {
    		gotoNext = 261870
    		_ = gotoNext == 261870
    		field_261874 = ""
    		i_261888 = indexByte(env, 44)
    		if i_261888 < 0 {
    			gotoNext = 261924
    			_ = gotoNext == 261924
    			field_261874, env = env, ""
    			gotoNext = 262002
    		} else {
    			gotoNext = 261959
    			_ = gotoNext == 261959
    			gotoNext = 261959
    			_ = gotoNext == 261959
    			field_261874, env = env[:i_261888], env[i_261888+1:]
    			_ = 0
    			gotoNext = 262002
    		}
    		_ = gotoNext == 262002
    		if len(field_261874) < 4 || field_261874[:4] != "cpu." {
    			gotoNext = 262043
    			_ = gotoNext == 262043
    			_ = 0
    			gotoNext = 261856
    			gotoNext = 262063
    		} else {
    			gotoNext = 262063
    		}
    		_ = gotoNext == 262063
    		i_261888 = indexByte(field_261874, 61)
    		if i_261888 < 0 {
    			gotoNext = 262100
    			_ = gotoNext == 262100
    			print("GODEBUG: no value specified for \"", field_261874, "\"\n")
    			_ = 0
    			gotoNext = 261856
    			gotoNext = 262182
    		} else {
    			gotoNext = 262182
    		}
    		_ = gotoNext == 262182
    		key_262182, value_262187 = field_261874[4:i_261888], field_261874[i_261888+1:]
    		gotoNext = 262262
    		_ = gotoNext == 262262
    		switch value_262187 {
    		case "on":
    			gotoNext = 262279
    			_ = gotoNext == 262279
    			enable_262248 = true
    			gotoNext = 262463
    		case "off":
    			gotoNext = 262309
    			_ = gotoNext == 262309
    			enable_262248 = false
    			gotoNext = 262463
    		default:
    			gotoNext = 262341
    			_ = gotoNext == 262341
    			print("GODEBUG: value \"", value_262187, "\" not supported for cpu option \"", key_262182, "\"\n")
    			gotoNext = 261856
    			gotoNext = 262463
    		}
    		_ = gotoNext == 262463
    		if key_262182 == "all" {
    			gotoNext = 262479
    			_ = gotoNext == 262479
    			if 0 < len(options) {
    				gotoNext = 262574
    				_ = gotoNext == 262574
    				i_262488 = 0
    				gotoNext = 262575
    				_ = gotoNext == 262575
    				if i_262488 < len(options) {
    					gotoNext = 262507
    					_ = gotoNext == 262507
    					options[i_262488].Specified = true
    					options[i_262488].Enable = enable_262248
    					i_262488++
    					gotoNext = 262575
    				} else {
    					gotoNext = 262580
    				}
    				gotoNext = 262580
    			} else {
    				gotoNext = 262580
    			}
    			_ = gotoNext == 262580
    			gotoNext = 261856
    			gotoNext = 262602
    		} else {
    			gotoNext = 262602
    		}
    		_ = gotoNext == 262602
    		if 0 < len(options) {
    			gotoNext = 262746
    			_ = gotoNext == 262746
    			i_262606 = 0
    			gotoNext = 262747
    			_ = gotoNext == 262747
    			if i_262606 < len(options) {
    				gotoNext = 262625
    				_ = gotoNext == 262625
    				if options[i_262606].Name == key_262182 {
    					gotoNext = 262656
    					_ = gotoNext == 262656
    					options[i_262606].Specified = true
    					options[i_262606].Enable = enable_262248
    					gotoNext = 261856
    					gotoNext = 262606
    				} else {
    					gotoNext = 262606
    				}
    				_ = gotoNext == 262606
    				i_262606++
    				gotoNext = 262747
    			} else {
    				gotoNext = 262752
    			}
    			gotoNext = 262752
    		} else {
    			gotoNext = 262752
    		}
    		_ = gotoNext == 262752
    		print("GODEBUG: unknown cpu feature \"", key_262182, "\"\n")
    		gotoNext = 261856
    	} else {
    		gotoNext = 262811
    	}
    	_ = gotoNext == 262811
    	if 0 < len(options) {
    		gotoNext = 263024
    		_ = gotoNext == 263024
    		i_262823_0, o_262818 = 0, options[0]
    		gotoNext = 263025
    		_ = gotoNext == 263025
    		if i_262823_0 < len(options) {
    			gotoNext = 262837
    			_ = gotoNext == 262837
    			o_262818 = options[i_262823_0]
    			if !o_262818.Specified {
    				gotoNext = 262857
    				_ = gotoNext == 262857
    				i_262823_0++
    				gotoNext = 263025
    				gotoNext = 262878
    			} else {
    				gotoNext = 262878
    			}
    			_ = gotoNext == 262878
    			if o_262818.Enable && !*o_262818.Feature {
    				gotoNext = 262905
    				_ = gotoNext == 262905
    				print("GODEBUG: can not enable \"", o_262818.Name, "\", missing CPU support\n")
    				i_262823_0++
    				gotoNext = 263025
    				gotoNext = 263002
    			} else {
    				gotoNext = 263002
    			}
    			_ = gotoNext == 263002
    			*o_262818.Feature = o_262818.Enable
    			i_262823_0++
    			gotoNext = 263025
    		} else {
    			gotoNext = 263027
    		}
    		gotoNext = 263027
    	} else {
    		gotoNext = 263027
    	}
    	_ = gotoNext == 263027
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
