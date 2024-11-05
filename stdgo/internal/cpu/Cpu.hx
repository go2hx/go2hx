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
    	gotoNext = 220514
    	_ = gotoNext == 220514
    	_ = 0
    	fieldBreak = false
    	gotoNext = 220522
    	_ = gotoNext == 220522
    	if !fieldBreak && (env != "") {
    		gotoNext = 220536
    		_ = gotoNext == 220536
    		field_220540 = ""
    		i_220554 = indexByte(env, 44)
    		if i_220554 < 0 {
    			gotoNext = 220590
    			_ = gotoNext == 220590
    			field_220540, env = env, ""
    			gotoNext = 220668
    		} else {
    			gotoNext = 220625
    			_ = gotoNext == 220625
    			field_220540, env = env[:i_220554], env[i_220554+1:]
    			gotoNext = 220668
    		}
    		_ = gotoNext == 220668
    		if len(field_220540) < 4 || field_220540[:4] != "cpu." {
    			gotoNext = 220709
    			_ = gotoNext == 220709
    			_ = 0
    			gotoNext = 220522
    			gotoNext = 220729
    		} else {
    			gotoNext = 220729
    		}
    		_ = gotoNext == 220729
    		i_220554 = indexByte(field_220540, 61)
    		if i_220554 < 0 {
    			gotoNext = 220766
    			_ = gotoNext == 220766
    			print("GODEBUG: no value specified for \"", field_220540, "\"\n")
    			_ = 0
    			gotoNext = 220522
    			gotoNext = 220848
    		} else {
    			gotoNext = 220848
    		}
    		_ = gotoNext == 220848
    		key_220848, value_220853 = field_220540[4:i_220554], field_220540[i_220554+1:]
    		_ = 0
    		gotoNext = 220928
    		_ = gotoNext == 220928
    		switch value_220853 {
    		case "on":
    			gotoNext = 220945
    			_ = gotoNext == 220945
    			enable_220914 = true
    			gotoNext = 221129
    		case "off":
    			gotoNext = 220975
    			_ = gotoNext == 220975
    			enable_220914 = false
    			gotoNext = 221129
    		default:
    			gotoNext = 221007
    			_ = gotoNext == 221007
    			print("GODEBUG: value \"", value_220853, "\" not supported for cpu option \"", key_220848, "\"\n")
    			gotoNext = 220522
    			gotoNext = 221129
    		}
    		_ = gotoNext == 221129
    		if key_220848 == "all" {
    			gotoNext = 221145
    			_ = gotoNext == 221145
    			if 0 < len(options) {
    				gotoNext = 221240
    				_ = gotoNext == 221240
    				i_221154 = 0
    				gotoNext = 221241
    				_ = gotoNext == 221241
    				if i_221154 < len(options) {
    					gotoNext = 221173
    					_ = gotoNext == 221173
    					options[i_221154].Specified = true
    					options[i_221154].Enable = enable_220914
    					i_221154++
    					gotoNext = 221241
    				} else {
    					gotoNext = 221246
    				}
    				gotoNext = 221246
    			} else {
    				gotoNext = 221246
    			}
    			_ = gotoNext == 221246
    			gotoNext = 220522
    			gotoNext = 221268
    		} else {
    			gotoNext = 221268
    		}
    		_ = gotoNext == 221268
    		if 0 < len(options) {
    			gotoNext = 221412
    			_ = gotoNext == 221412
    			i_221272 = 0
    			gotoNext = 221413
    			_ = gotoNext == 221413
    			if i_221272 < len(options) {
    				gotoNext = 221291
    				_ = gotoNext == 221291
    				if options[i_221272].Name == key_220848 {
    					gotoNext = 221322
    					_ = gotoNext == 221322
    					options[i_221272].Specified = true
    					options[i_221272].Enable = enable_220914
    					gotoNext = 220522
    					gotoNext = 221272
    				} else {
    					gotoNext = 221272
    				}
    				_ = gotoNext == 221272
    				i_221272++
    				gotoNext = 221413
    			} else {
    				gotoNext = 221418
    			}
    			gotoNext = 221418
    		} else {
    			gotoNext = 221418
    		}
    		_ = gotoNext == 221418
    		print("GODEBUG: unknown cpu feature \"", key_220848, "\"\n")
    		gotoNext = 220522
    	} else {
    		gotoNext = 221477
    	}
    	_ = gotoNext == 221477
    	if 0 < len(options) {
    		gotoNext = 221690
    		_ = gotoNext == 221690
    		i_221489_0, o_221484 = 0, options[0]
    		gotoNext = 221691
    		_ = gotoNext == 221691
    		if i_221489_0 < len(options) {
    			gotoNext = 221503
    			_ = gotoNext == 221503
    			o_221484 = options[i_221489_0]
    			if !o_221484.Specified {
    				gotoNext = 221523
    				_ = gotoNext == 221523
    				i_221489_0++
    				gotoNext = 221691
    				gotoNext = 221544
    			} else {
    				gotoNext = 221544
    			}
    			_ = gotoNext == 221544
    			if o_221484.Enable && !*o_221484.Feature {
    				gotoNext = 221571
    				_ = gotoNext == 221571
    				print("GODEBUG: can not enable \"", o_221484.Name, "\", missing CPU support\n")
    				i_221489_0++
    				gotoNext = 221691
    				gotoNext = 221668
    			} else {
    				gotoNext = 221668
    			}
    			_ = gotoNext == 221668
    			*o_221484.Feature = o_221484.Enable
    			i_221489_0++
    			gotoNext = 221691
    		} else {
    			gotoNext = 221693
    		}
    		gotoNext = 221693
    	} else {
    		gotoNext = 221693
    	}
    	_ = gotoNext == 221693
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
