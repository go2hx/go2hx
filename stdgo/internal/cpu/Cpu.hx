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
    	gotoNext = 37987
    	_ = gotoNext == 37987
    	_ = 0
    	fieldBreak = false
    	gotoNext = 37995
    	_ = gotoNext == 37995
    	if !fieldBreak && (env != "") {
    		gotoNext = 38009
    		_ = gotoNext == 38009
    		field_38013 = ""
    		i_38027 = indexByte(env, 44)
    		if i_38027 < 0 {
    			gotoNext = 38063
    			_ = gotoNext == 38063
    			field_38013, env = env, ""
    			gotoNext = 38141
    		} else {
    			gotoNext = 38098
    			_ = gotoNext == 38098
    			gotoNext = 38098
    			_ = gotoNext == 38098
    			field_38013, env = env[:i_38027], env[i_38027+1:]
    			_ = 0
    			gotoNext = 38141
    		}
    		_ = gotoNext == 38141
    		if len(field_38013) < 4 || field_38013[:4] != "cpu." {
    			gotoNext = 38182
    			_ = gotoNext == 38182
    			_ = 0
    			gotoNext = 37995
    			gotoNext = 38202
    		} else {
    			gotoNext = 38202
    		}
    		_ = gotoNext == 38202
    		i_38027 = indexByte(field_38013, 61)
    		if i_38027 < 0 {
    			gotoNext = 38239
    			_ = gotoNext == 38239
    			print("GODEBUG: no value specified for \"", field_38013, "\"\n")
    			_ = 0
    			gotoNext = 37995
    			gotoNext = 38321
    		} else {
    			gotoNext = 38321
    		}
    		_ = gotoNext == 38321
    		key_38321, value_38326 = field_38013[4:i_38027], field_38013[i_38027+1:]
    		gotoNext = 38401
    		_ = gotoNext == 38401
    		switch value_38326 {
    		case "on":
    			gotoNext = 38418
    			_ = gotoNext == 38418
    			enable_38387 = true
    			gotoNext = 38602
    		case "off":
    			gotoNext = 38448
    			_ = gotoNext == 38448
    			enable_38387 = false
    			gotoNext = 38602
    		default:
    			gotoNext = 38480
    			_ = gotoNext == 38480
    			print("GODEBUG: value \"", value_38326, "\" not supported for cpu option \"", key_38321, "\"\n")
    			gotoNext = 37995
    			gotoNext = 38602
    		}
    		_ = gotoNext == 38602
    		if key_38321 == "all" {
    			gotoNext = 38618
    			_ = gotoNext == 38618
    			if 0 < len(options) {
    				gotoNext = 38713
    				_ = gotoNext == 38713
    				i_38627 = 0
    				gotoNext = 38714
    				_ = gotoNext == 38714
    				if i_38627 < len(options) {
    					gotoNext = 38646
    					_ = gotoNext == 38646
    					options[i_38627].Specified = true
    					options[i_38627].Enable = enable_38387
    					i_38627++
    					gotoNext = 38714
    				} else {
    					gotoNext = 38719
    				}
    				gotoNext = 38719
    			} else {
    				gotoNext = 38719
    			}
    			_ = gotoNext == 38719
    			gotoNext = 37995
    			gotoNext = 38741
    		} else {
    			gotoNext = 38741
    		}
    		_ = gotoNext == 38741
    		if 0 < len(options) {
    			gotoNext = 38885
    			_ = gotoNext == 38885
    			i_38745 = 0
    			gotoNext = 38886
    			_ = gotoNext == 38886
    			if i_38745 < len(options) {
    				gotoNext = 38764
    				_ = gotoNext == 38764
    				if options[i_38745].Name == key_38321 {
    					gotoNext = 38795
    					_ = gotoNext == 38795
    					options[i_38745].Specified = true
    					options[i_38745].Enable = enable_38387
    					gotoNext = 37995
    					gotoNext = 38745
    				} else {
    					gotoNext = 38745
    				}
    				_ = gotoNext == 38745
    				i_38745++
    				gotoNext = 38886
    			} else {
    				gotoNext = 38891
    			}
    			gotoNext = 38891
    		} else {
    			gotoNext = 38891
    		}
    		_ = gotoNext == 38891
    		print("GODEBUG: unknown cpu feature \"", key_38321, "\"\n")
    		gotoNext = 37995
    	} else {
    		gotoNext = 38950
    	}
    	_ = gotoNext == 38950
    	if 0 < len(options) {
    		gotoNext = 39163
    		_ = gotoNext == 39163
    		i_38962_0, o_38957 = 0, options[0]
    		gotoNext = 39164
    		_ = gotoNext == 39164
    		if i_38962_0 < len(options) {
    			gotoNext = 38976
    			_ = gotoNext == 38976
    			o_38957 = options[i_38962_0]
    			if !o_38957.Specified {
    				gotoNext = 38996
    				_ = gotoNext == 38996
    				i_38962_0++
    				gotoNext = 39164
    				gotoNext = 39017
    			} else {
    				gotoNext = 39017
    			}
    			_ = gotoNext == 39017
    			if o_38957.Enable && !*o_38957.Feature {
    				gotoNext = 39044
    				_ = gotoNext == 39044
    				print("GODEBUG: can not enable \"", o_38957.Name, "\", missing CPU support\n")
    				i_38962_0++
    				gotoNext = 39164
    				gotoNext = 39141
    			} else {
    				gotoNext = 39141
    			}
    			_ = gotoNext == 39141
    			*o_38957.Feature = o_38957.Enable
    			i_38962_0++
    			gotoNext = 39164
    		} else {
    			gotoNext = 39166
    		}
    		gotoNext = 39166
    	} else {
    		gotoNext = 39166
    	}
    	_ = gotoNext == 39166
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
