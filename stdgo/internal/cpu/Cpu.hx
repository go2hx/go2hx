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
    	gotoNext = 5591
    	_ = gotoNext == 5591
    	_ = 0
    	fieldBreak = false
    	gotoNext = 5599
    	_ = gotoNext == 5599
    	if !fieldBreak && (env != "") {
    		gotoNext = 5613
    		_ = gotoNext == 5613
    		field_5617 = ""
    		i_5631 = indexByte(env, 44)
    		if i_5631 < 0 {
    			gotoNext = 5667
    			_ = gotoNext == 5667
    			field_5617, env = env, ""
    			gotoNext = 5745
    		} else {
    			gotoNext = 5702
    			_ = gotoNext == 5702
    			gotoNext = 5702
    			_ = gotoNext == 5702
    			field_5617, env = env[:i_5631], env[i_5631+1:]
    			_ = 0
    			gotoNext = 5745
    		}
    		_ = gotoNext == 5745
    		if len(field_5617) < 4 || field_5617[:4] != "cpu." {
    			gotoNext = 5786
    			_ = gotoNext == 5786
    			_ = 0
    			gotoNext = 5599
    			gotoNext = 5806
    		} else {
    			gotoNext = 5806
    		}
    		_ = gotoNext == 5806
    		i_5631 = indexByte(field_5617, 61)
    		if i_5631 < 0 {
    			gotoNext = 5843
    			_ = gotoNext == 5843
    			print("GODEBUG: no value specified for \"", field_5617, "\"\n")
    			_ = 0
    			gotoNext = 5599
    			gotoNext = 5925
    		} else {
    			gotoNext = 5925
    		}
    		_ = gotoNext == 5925
    		key_5925, value_5930 = field_5617[4:i_5631], field_5617[i_5631+1:]
    		gotoNext = 6005
    		_ = gotoNext == 6005
    		switch value_5930 {
    		case "on":
    			gotoNext = 6022
    			_ = gotoNext == 6022
    			enable_5991 = true
    			gotoNext = 6206
    		case "off":
    			gotoNext = 6052
    			_ = gotoNext == 6052
    			enable_5991 = false
    			gotoNext = 6206
    		default:
    			gotoNext = 6084
    			_ = gotoNext == 6084
    			print("GODEBUG: value \"", value_5930, "\" not supported for cpu option \"", key_5925, "\"\n")
    			gotoNext = 5599
    			gotoNext = 6206
    		}
    		_ = gotoNext == 6206
    		if key_5925 == "all" {
    			gotoNext = 6222
    			_ = gotoNext == 6222
    			if 0 < len(options) {
    				gotoNext = 6317
    				_ = gotoNext == 6317
    				i_6231 = 0
    				gotoNext = 6318
    				_ = gotoNext == 6318
    				if i_6231 < len(options) {
    					gotoNext = 6250
    					_ = gotoNext == 6250
    					options[i_6231].Specified = true
    					options[i_6231].Enable = enable_5991
    					i_6231++
    					gotoNext = 6318
    				} else {
    					gotoNext = 6323
    				}
    				gotoNext = 6323
    			} else {
    				gotoNext = 6323
    			}
    			_ = gotoNext == 6323
    			gotoNext = 5599
    			gotoNext = 6345
    		} else {
    			gotoNext = 6345
    		}
    		_ = gotoNext == 6345
    		if 0 < len(options) {
    			gotoNext = 6489
    			_ = gotoNext == 6489
    			i_6349 = 0
    			gotoNext = 6490
    			_ = gotoNext == 6490
    			if i_6349 < len(options) {
    				gotoNext = 6368
    				_ = gotoNext == 6368
    				if options[i_6349].Name == key_5925 {
    					gotoNext = 6399
    					_ = gotoNext == 6399
    					options[i_6349].Specified = true
    					options[i_6349].Enable = enable_5991
    					gotoNext = 5599
    					gotoNext = 6349
    				} else {
    					gotoNext = 6349
    				}
    				_ = gotoNext == 6349
    				i_6349++
    				gotoNext = 6490
    			} else {
    				gotoNext = 6495
    			}
    			gotoNext = 6495
    		} else {
    			gotoNext = 6495
    		}
    		_ = gotoNext == 6495
    		print("GODEBUG: unknown cpu feature \"", key_5925, "\"\n")
    		gotoNext = 5599
    	} else {
    		gotoNext = 6554
    	}
    	_ = gotoNext == 6554
    	if 0 < len(options) {
    		gotoNext = 6767
    		_ = gotoNext == 6767
    		i_6566_0, o_6561 = 0, options[0]
    		gotoNext = 6768
    		_ = gotoNext == 6768
    		if i_6566_0 < len(options) {
    			gotoNext = 6580
    			_ = gotoNext == 6580
    			o_6561 = options[i_6566_0]
    			if !o_6561.Specified {
    				gotoNext = 6600
    				_ = gotoNext == 6600
    				i_6566_0++
    				gotoNext = 6768
    				gotoNext = 6621
    			} else {
    				gotoNext = 6621
    			}
    			_ = gotoNext == 6621
    			if o_6561.Enable && !*o_6561.Feature {
    				gotoNext = 6648
    				_ = gotoNext == 6648
    				print("GODEBUG: can not enable \"", o_6561.Name, "\", missing CPU support\n")
    				i_6566_0++
    				gotoNext = 6768
    				gotoNext = 6745
    			} else {
    				gotoNext = 6745
    			}
    			_ = gotoNext == 6745
    			*o_6561.Feature = o_6561.Enable
    			i_6566_0++
    			gotoNext = 6768
    		} else {
    			gotoNext = 6770
    		}
    		gotoNext = 6770
    	} else {
    		gotoNext = 6770
    	}
    	_ = gotoNext == 6770
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
