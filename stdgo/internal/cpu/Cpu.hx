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
    	gotoNext = 264140
    	_ = gotoNext == 264140
    	_ = 0
    	fieldBreak = false
    	gotoNext = 264148
    	_ = gotoNext == 264148
    	if !fieldBreak && (env != "") {
    		gotoNext = 264162
    		_ = gotoNext == 264162
    		field_264166 = ""
    		i_264180 = indexByte(env, 44)
    		if i_264180 < 0 {
    			gotoNext = 264216
    			_ = gotoNext == 264216
    			field_264166, env = env, ""
    			gotoNext = 264294
    		} else {
    			gotoNext = 264251
    			_ = gotoNext == 264251
    			field_264166, env = env[:i_264180], env[i_264180+1:]
    			gotoNext = 264294
    		}
    		_ = gotoNext == 264294
    		if len(field_264166) < 4 || field_264166[:4] != "cpu." {
    			gotoNext = 264335
    			_ = gotoNext == 264335
    			_ = 0
    			gotoNext = 264148
    			gotoNext = 264355
    		} else {
    			gotoNext = 264355
    		}
    		_ = gotoNext == 264355
    		i_264180 = indexByte(field_264166, 61)
    		if i_264180 < 0 {
    			gotoNext = 264392
    			_ = gotoNext == 264392
    			print("GODEBUG: no value specified for \"", field_264166, "\"\n")
    			_ = 0
    			gotoNext = 264148
    			gotoNext = 264474
    		} else {
    			gotoNext = 264474
    		}
    		_ = gotoNext == 264474
    		key_264474, value_264479 = field_264166[4:i_264180], field_264166[i_264180+1:]
    		_ = 0
    		gotoNext = 264554
    		_ = gotoNext == 264554
    		switch value_264479 {
    		case "on":
    			gotoNext = 264571
    			_ = gotoNext == 264571
    			enable_264540 = true
    			gotoNext = 264755
    		case "off":
    			gotoNext = 264601
    			_ = gotoNext == 264601
    			enable_264540 = false
    			gotoNext = 264755
    		default:
    			gotoNext = 264633
    			_ = gotoNext == 264633
    			print("GODEBUG: value \"", value_264479, "\" not supported for cpu option \"", key_264474, "\"\n")
    			gotoNext = 264148
    			gotoNext = 264755
    		}
    		_ = gotoNext == 264755
    		if key_264474 == "all" {
    			gotoNext = 264771
    			_ = gotoNext == 264771
    			if 0 < len(options) {
    				gotoNext = 264866
    				_ = gotoNext == 264866
    				i_264780 = 0
    				gotoNext = 264867
    				_ = gotoNext == 264867
    				if i_264780 < len(options) {
    					gotoNext = 264799
    					_ = gotoNext == 264799
    					options[i_264780].Specified = true
    					options[i_264780].Enable = enable_264540
    					i_264780++
    					gotoNext = 264867
    				} else {
    					gotoNext = 264872
    				}
    				gotoNext = 264872
    			} else {
    				gotoNext = 264872
    			}
    			_ = gotoNext == 264872
    			gotoNext = 264148
    			gotoNext = 264894
    		} else {
    			gotoNext = 264894
    		}
    		_ = gotoNext == 264894
    		if 0 < len(options) {
    			gotoNext = 265038
    			_ = gotoNext == 265038
    			i_264898 = 0
    			gotoNext = 265039
    			_ = gotoNext == 265039
    			if i_264898 < len(options) {
    				gotoNext = 264917
    				_ = gotoNext == 264917
    				if options[i_264898].Name == key_264474 {
    					gotoNext = 264948
    					_ = gotoNext == 264948
    					options[i_264898].Specified = true
    					options[i_264898].Enable = enable_264540
    					gotoNext = 264148
    					gotoNext = 264898
    				} else {
    					gotoNext = 264898
    				}
    				_ = gotoNext == 264898
    				i_264898++
    				gotoNext = 265039
    			} else {
    				gotoNext = 265044
    			}
    			gotoNext = 265044
    		} else {
    			gotoNext = 265044
    		}
    		_ = gotoNext == 265044
    		print("GODEBUG: unknown cpu feature \"", key_264474, "\"\n")
    		gotoNext = 264148
    	} else {
    		gotoNext = 265103
    	}
    	_ = gotoNext == 265103
    	if 0 < len(options) {
    		gotoNext = 265316
    		_ = gotoNext == 265316
    		i_265115_0, o_265110 = 0, options[0]
    		gotoNext = 265317
    		_ = gotoNext == 265317
    		if i_265115_0 < len(options) {
    			gotoNext = 265129
    			_ = gotoNext == 265129
    			o_265110 = options[i_265115_0]
    			if !o_265110.Specified {
    				gotoNext = 265149
    				_ = gotoNext == 265149
    				i_265115_0++
    				gotoNext = 265317
    				gotoNext = 265170
    			} else {
    				gotoNext = 265170
    			}
    			_ = gotoNext == 265170
    			if o_265110.Enable && !*o_265110.Feature {
    				gotoNext = 265197
    				_ = gotoNext == 265197
    				print("GODEBUG: can not enable \"", o_265110.Name, "\", missing CPU support\n")
    				i_265115_0++
    				gotoNext = 265317
    				gotoNext = 265294
    			} else {
    				gotoNext = 265294
    			}
    			_ = gotoNext == 265294
    			*o_265110.Feature = o_265110.Enable
    			i_265115_0++
    			gotoNext = 265317
    		} else {
    			gotoNext = 265319
    		}
    		gotoNext = 265319
    	} else {
    		gotoNext = 265319
    	}
    	_ = gotoNext == 265319
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
