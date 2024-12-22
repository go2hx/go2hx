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
    	gotoNext = 22962
    	_ = gotoNext == 22962
    	_ = 0
    	fieldBreak = false
    	gotoNext = 22970
    	_ = gotoNext == 22970
    	if !fieldBreak && (env != "") {
    		gotoNext = 22984
    		_ = gotoNext == 22984
    		field_22988 = ""
    		i_23002 = indexByte(env, 44)
    		if i_23002 < 0 {
    			gotoNext = 23038
    			_ = gotoNext == 23038
    			field_22988, env = env, ""
    			gotoNext = 23116
    		} else {
    			gotoNext = 23073
    			_ = gotoNext == 23073
    			gotoNext = 23073
    			_ = gotoNext == 23073
    			field_22988, env = env[:i_23002], env[i_23002+1:]
    			_ = 0
    			gotoNext = 23116
    		}
    		_ = gotoNext == 23116
    		if len(field_22988) < 4 || field_22988[:4] != "cpu." {
    			gotoNext = 23157
    			_ = gotoNext == 23157
    			_ = 0
    			gotoNext = 22970
    			gotoNext = 23177
    		} else {
    			gotoNext = 23177
    		}
    		_ = gotoNext == 23177
    		i_23002 = indexByte(field_22988, 61)
    		if i_23002 < 0 {
    			gotoNext = 23214
    			_ = gotoNext == 23214
    			print("GODEBUG: no value specified for \"", field_22988, "\"\n")
    			_ = 0
    			gotoNext = 22970
    			gotoNext = 23296
    		} else {
    			gotoNext = 23296
    		}
    		_ = gotoNext == 23296
    		key_23296, value_23301 = field_22988[4:i_23002], field_22988[i_23002+1:]
    		gotoNext = 23376
    		_ = gotoNext == 23376
    		switch value_23301 {
    		case "on":
    			gotoNext = 23393
    			_ = gotoNext == 23393
    			enable_23362 = true
    			gotoNext = 23577
    		case "off":
    			gotoNext = 23423
    			_ = gotoNext == 23423
    			enable_23362 = false
    			gotoNext = 23577
    		default:
    			gotoNext = 23455
    			_ = gotoNext == 23455
    			print("GODEBUG: value \"", value_23301, "\" not supported for cpu option \"", key_23296, "\"\n")
    			gotoNext = 22970
    			gotoNext = 23577
    		}
    		_ = gotoNext == 23577
    		if key_23296 == "all" {
    			gotoNext = 23593
    			_ = gotoNext == 23593
    			if 0 < len(options) {
    				gotoNext = 23688
    				_ = gotoNext == 23688
    				i_23602 = 0
    				gotoNext = 23689
    				_ = gotoNext == 23689
    				if i_23602 < len(options) {
    					gotoNext = 23621
    					_ = gotoNext == 23621
    					options[i_23602].Specified = true
    					options[i_23602].Enable = enable_23362
    					i_23602++
    					gotoNext = 23689
    				} else {
    					gotoNext = 23694
    				}
    				gotoNext = 23694
    			} else {
    				gotoNext = 23694
    			}
    			_ = gotoNext == 23694
    			gotoNext = 22970
    			gotoNext = 23716
    		} else {
    			gotoNext = 23716
    		}
    		_ = gotoNext == 23716
    		if 0 < len(options) {
    			gotoNext = 23860
    			_ = gotoNext == 23860
    			i_23720 = 0
    			gotoNext = 23861
    			_ = gotoNext == 23861
    			if i_23720 < len(options) {
    				gotoNext = 23739
    				_ = gotoNext == 23739
    				if options[i_23720].Name == key_23296 {
    					gotoNext = 23770
    					_ = gotoNext == 23770
    					options[i_23720].Specified = true
    					options[i_23720].Enable = enable_23362
    					gotoNext = 22970
    					gotoNext = 23720
    				} else {
    					gotoNext = 23720
    				}
    				_ = gotoNext == 23720
    				i_23720++
    				gotoNext = 23861
    			} else {
    				gotoNext = 23866
    			}
    			gotoNext = 23866
    		} else {
    			gotoNext = 23866
    		}
    		_ = gotoNext == 23866
    		print("GODEBUG: unknown cpu feature \"", key_23296, "\"\n")
    		gotoNext = 22970
    	} else {
    		gotoNext = 23925
    	}
    	_ = gotoNext == 23925
    	if 0 < len(options) {
    		gotoNext = 24138
    		_ = gotoNext == 24138
    		i_23937_0, o_23932 = 0, options[0]
    		gotoNext = 24139
    		_ = gotoNext == 24139
    		if i_23937_0 < len(options) {
    			gotoNext = 23951
    			_ = gotoNext == 23951
    			o_23932 = options[i_23937_0]
    			if !o_23932.Specified {
    				gotoNext = 23971
    				_ = gotoNext == 23971
    				i_23937_0++
    				gotoNext = 24139
    				gotoNext = 23992
    			} else {
    				gotoNext = 23992
    			}
    			_ = gotoNext == 23992
    			if o_23932.Enable && !*o_23932.Feature {
    				gotoNext = 24019
    				_ = gotoNext == 24019
    				print("GODEBUG: can not enable \"", o_23932.Name, "\", missing CPU support\n")
    				i_23937_0++
    				gotoNext = 24139
    				gotoNext = 24116
    			} else {
    				gotoNext = 24116
    			}
    			_ = gotoNext == 24116
    			*o_23932.Feature = o_23932.Enable
    			i_23937_0++
    			gotoNext = 24139
    		} else {
    			gotoNext = 24141
    		}
    		gotoNext = 24141
    	} else {
    		gotoNext = 24141
    	}
    	_ = gotoNext == 24141
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
