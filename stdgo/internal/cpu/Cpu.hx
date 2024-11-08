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
    	gotoNext = 250021
    	_ = gotoNext == 250021
    	_ = 0
    	fieldBreak = false
    	gotoNext = 250029
    	_ = gotoNext == 250029
    	if !fieldBreak && (env != "") {
    		gotoNext = 250043
    		_ = gotoNext == 250043
    		field_250047 = ""
    		i_250061 = indexByte(env, 44)
    		if i_250061 < 0 {
    			gotoNext = 250097
    			_ = gotoNext == 250097
    			field_250047, env = env, ""
    			gotoNext = 250175
    		} else {
    			gotoNext = 250132
    			_ = gotoNext == 250132
    			field_250047, env = env[:i_250061], env[i_250061+1:]
    			gotoNext = 250175
    		}
    		_ = gotoNext == 250175
    		if len(field_250047) < 4 || field_250047[:4] != "cpu." {
    			gotoNext = 250216
    			_ = gotoNext == 250216
    			_ = 0
    			gotoNext = 250029
    			gotoNext = 250236
    		} else {
    			gotoNext = 250236
    		}
    		_ = gotoNext == 250236
    		i_250061 = indexByte(field_250047, 61)
    		if i_250061 < 0 {
    			gotoNext = 250273
    			_ = gotoNext == 250273
    			print("GODEBUG: no value specified for \"", field_250047, "\"\n")
    			_ = 0
    			gotoNext = 250029
    			gotoNext = 250355
    		} else {
    			gotoNext = 250355
    		}
    		_ = gotoNext == 250355
    		key_250355, value_250360 = field_250047[4:i_250061], field_250047[i_250061+1:]
    		_ = 0
    		gotoNext = 250435
    		_ = gotoNext == 250435
    		switch value_250360 {
    		case "on":
    			gotoNext = 250452
    			_ = gotoNext == 250452
    			enable_250421 = true
    			gotoNext = 250636
    		case "off":
    			gotoNext = 250482
    			_ = gotoNext == 250482
    			enable_250421 = false
    			gotoNext = 250636
    		default:
    			gotoNext = 250514
    			_ = gotoNext == 250514
    			print("GODEBUG: value \"", value_250360, "\" not supported for cpu option \"", key_250355, "\"\n")
    			gotoNext = 250029
    			gotoNext = 250636
    		}
    		_ = gotoNext == 250636
    		if key_250355 == "all" {
    			gotoNext = 250652
    			_ = gotoNext == 250652
    			if 0 < len(options) {
    				gotoNext = 250747
    				_ = gotoNext == 250747
    				i_250661 = 0
    				gotoNext = 250748
    				_ = gotoNext == 250748
    				if i_250661 < len(options) {
    					gotoNext = 250680
    					_ = gotoNext == 250680
    					options[i_250661].Specified = true
    					options[i_250661].Enable = enable_250421
    					i_250661++
    					gotoNext = 250748
    				} else {
    					gotoNext = 250753
    				}
    				gotoNext = 250753
    			} else {
    				gotoNext = 250753
    			}
    			_ = gotoNext == 250753
    			gotoNext = 250029
    			gotoNext = 250775
    		} else {
    			gotoNext = 250775
    		}
    		_ = gotoNext == 250775
    		if 0 < len(options) {
    			gotoNext = 250919
    			_ = gotoNext == 250919
    			i_250779 = 0
    			gotoNext = 250920
    			_ = gotoNext == 250920
    			if i_250779 < len(options) {
    				gotoNext = 250798
    				_ = gotoNext == 250798
    				if options[i_250779].Name == key_250355 {
    					gotoNext = 250829
    					_ = gotoNext == 250829
    					options[i_250779].Specified = true
    					options[i_250779].Enable = enable_250421
    					gotoNext = 250029
    					gotoNext = 250779
    				} else {
    					gotoNext = 250779
    				}
    				_ = gotoNext == 250779
    				i_250779++
    				gotoNext = 250920
    			} else {
    				gotoNext = 250925
    			}
    			gotoNext = 250925
    		} else {
    			gotoNext = 250925
    		}
    		_ = gotoNext == 250925
    		print("GODEBUG: unknown cpu feature \"", key_250355, "\"\n")
    		gotoNext = 250029
    	} else {
    		gotoNext = 250984
    	}
    	_ = gotoNext == 250984
    	if 0 < len(options) {
    		gotoNext = 251197
    		_ = gotoNext == 251197
    		i_250996_0, o_250991 = 0, options[0]
    		gotoNext = 251198
    		_ = gotoNext == 251198
    		if i_250996_0 < len(options) {
    			gotoNext = 251010
    			_ = gotoNext == 251010
    			o_250991 = options[i_250996_0]
    			if !o_250991.Specified {
    				gotoNext = 251030
    				_ = gotoNext == 251030
    				i_250996_0++
    				gotoNext = 251198
    				gotoNext = 251051
    			} else {
    				gotoNext = 251051
    			}
    			_ = gotoNext == 251051
    			if o_250991.Enable && !*o_250991.Feature {
    				gotoNext = 251078
    				_ = gotoNext == 251078
    				print("GODEBUG: can not enable \"", o_250991.Name, "\", missing CPU support\n")
    				i_250996_0++
    				gotoNext = 251198
    				gotoNext = 251175
    			} else {
    				gotoNext = 251175
    			}
    			_ = gotoNext == 251175
    			*o_250991.Feature = o_250991.Enable
    			i_250996_0++
    			gotoNext = 251198
    		} else {
    			gotoNext = 251200
    		}
    		gotoNext = 251200
    	} else {
    		gotoNext = 251200
    	}
    	_ = gotoNext == 251200
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
