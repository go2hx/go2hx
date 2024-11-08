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
    	gotoNext = 294963
    	_ = gotoNext == 294963
    	_ = 0
    	fieldBreak = false
    	gotoNext = 294971
    	_ = gotoNext == 294971
    	if !fieldBreak && (env != "") {
    		gotoNext = 294985
    		_ = gotoNext == 294985
    		field_294989 = ""
    		i_295003 = indexByte(env, 44)
    		if i_295003 < 0 {
    			gotoNext = 295039
    			_ = gotoNext == 295039
    			field_294989, env = env, ""
    			gotoNext = 295117
    		} else {
    			gotoNext = 295074
    			_ = gotoNext == 295074
    			field_294989, env = env[:i_295003], env[i_295003+1:]
    			_ = 0
    			gotoNext = 295117
    		}
    		_ = gotoNext == 295117
    		if len(field_294989) < 4 || field_294989[:4] != "cpu." {
    			gotoNext = 295158
    			_ = gotoNext == 295158
    			_ = 0
    			gotoNext = 294971
    			gotoNext = 295178
    		} else {
    			gotoNext = 295178
    		}
    		_ = gotoNext == 295178
    		i_295003 = indexByte(field_294989, 61)
    		if i_295003 < 0 {
    			gotoNext = 295215
    			_ = gotoNext == 295215
    			print("GODEBUG: no value specified for \"", field_294989, "\"\n")
    			_ = 0
    			gotoNext = 294971
    			gotoNext = 295297
    		} else {
    			gotoNext = 295297
    		}
    		_ = gotoNext == 295297
    		key_295297, value_295302 = field_294989[4:i_295003], field_294989[i_295003+1:]
    		_ = 0
    		gotoNext = 295377
    		_ = gotoNext == 295377
    		switch value_295302 {
    		case "on":
    			gotoNext = 295394
    			_ = gotoNext == 295394
    			enable_295363 = true
    			gotoNext = 295578
    		case "off":
    			gotoNext = 295424
    			_ = gotoNext == 295424
    			enable_295363 = false
    			gotoNext = 295578
    		default:
    			gotoNext = 295456
    			_ = gotoNext == 295456
    			print("GODEBUG: value \"", value_295302, "\" not supported for cpu option \"", key_295297, "\"\n")
    			gotoNext = 294971
    			gotoNext = 295578
    		}
    		_ = gotoNext == 295578
    		if key_295297 == "all" {
    			gotoNext = 295594
    			_ = gotoNext == 295594
    			if 0 < len(options) {
    				gotoNext = 295689
    				_ = gotoNext == 295689
    				i_295603 = 0
    				gotoNext = 295690
    				_ = gotoNext == 295690
    				if i_295603 < len(options) {
    					gotoNext = 295622
    					_ = gotoNext == 295622
    					options[i_295603].Specified = true
    					options[i_295603].Enable = enable_295363
    					i_295603++
    					gotoNext = 295690
    				} else {
    					gotoNext = 295695
    				}
    				gotoNext = 295695
    			} else {
    				gotoNext = 295695
    			}
    			_ = gotoNext == 295695
    			gotoNext = 294971
    			gotoNext = 295717
    		} else {
    			gotoNext = 295717
    		}
    		_ = gotoNext == 295717
    		if 0 < len(options) {
    			gotoNext = 295861
    			_ = gotoNext == 295861
    			i_295721 = 0
    			gotoNext = 295862
    			_ = gotoNext == 295862
    			if i_295721 < len(options) {
    				gotoNext = 295740
    				_ = gotoNext == 295740
    				if options[i_295721].Name == key_295297 {
    					gotoNext = 295771
    					_ = gotoNext == 295771
    					options[i_295721].Specified = true
    					options[i_295721].Enable = enable_295363
    					gotoNext = 294971
    					gotoNext = 295721
    				} else {
    					gotoNext = 295721
    				}
    				_ = gotoNext == 295721
    				i_295721++
    				gotoNext = 295862
    			} else {
    				gotoNext = 295867
    			}
    			gotoNext = 295867
    		} else {
    			gotoNext = 295867
    		}
    		_ = gotoNext == 295867
    		print("GODEBUG: unknown cpu feature \"", key_295297, "\"\n")
    		gotoNext = 294971
    	} else {
    		gotoNext = 295926
    	}
    	_ = gotoNext == 295926
    	if 0 < len(options) {
    		gotoNext = 296139
    		_ = gotoNext == 296139
    		i_295938_0, o_295933 = 0, options[0]
    		gotoNext = 296140
    		_ = gotoNext == 296140
    		if i_295938_0 < len(options) {
    			gotoNext = 295952
    			_ = gotoNext == 295952
    			o_295933 = options[i_295938_0]
    			if !o_295933.Specified {
    				gotoNext = 295972
    				_ = gotoNext == 295972
    				i_295938_0++
    				gotoNext = 296140
    				gotoNext = 295993
    			} else {
    				gotoNext = 295993
    			}
    			_ = gotoNext == 295993
    			if o_295933.Enable && !*o_295933.Feature {
    				gotoNext = 296020
    				_ = gotoNext == 296020
    				print("GODEBUG: can not enable \"", o_295933.Name, "\", missing CPU support\n")
    				i_295938_0++
    				gotoNext = 296140
    				gotoNext = 296117
    			} else {
    				gotoNext = 296117
    			}
    			_ = gotoNext == 296117
    			*o_295933.Feature = o_295933.Enable
    			i_295938_0++
    			gotoNext = 296140
    		} else {
    			gotoNext = 296142
    		}
    		gotoNext = 296142
    	} else {
    		gotoNext = 296142
    	}
    	_ = gotoNext == 296142
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
