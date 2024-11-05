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
    	gotoNext = 43110
    	_ = gotoNext == 43110
    	_ = 0
    	fieldBreak = false
    	gotoNext = 43118
    	_ = gotoNext == 43118
    	if !fieldBreak && (env != "") {
    		gotoNext = 43132
    		_ = gotoNext == 43132
    		field_43136 = ""
    		i_43150 = indexByte(env, 44)
    		if i_43150 < 0 {
    			gotoNext = 43186
    			_ = gotoNext == 43186
    			field_43136, env = env, ""
    			gotoNext = 43264
    		} else {
    			gotoNext = 43221
    			_ = gotoNext == 43221
    			field_43136, env = env[:i_43150], env[i_43150+1:]
    			gotoNext = 43264
    		}
    		_ = gotoNext == 43264
    		if len(field_43136) < 4 || field_43136[:4] != "cpu." {
    			gotoNext = 43305
    			_ = gotoNext == 43305
    			_ = 0
    			gotoNext = 43118
    			gotoNext = 43325
    		} else {
    			gotoNext = 43325
    		}
    		_ = gotoNext == 43325
    		i_43150 = indexByte(field_43136, 61)
    		if i_43150 < 0 {
    			gotoNext = 43362
    			_ = gotoNext == 43362
    			print("GODEBUG: no value specified for \"", field_43136, "\"\n")
    			_ = 0
    			gotoNext = 43118
    			gotoNext = 43444
    		} else {
    			gotoNext = 43444
    		}
    		_ = gotoNext == 43444
    		key_43444, value_43449 = field_43136[4:i_43150], field_43136[i_43150+1:]
    		_ = 0
    		gotoNext = 43524
    		_ = gotoNext == 43524
    		switch value_43449 {
    		case "on":
    			gotoNext = 43541
    			_ = gotoNext == 43541
    			enable_43510 = true
    			gotoNext = 43725
    		case "off":
    			gotoNext = 43571
    			_ = gotoNext == 43571
    			enable_43510 = false
    			gotoNext = 43725
    		default:
    			gotoNext = 43603
    			_ = gotoNext == 43603
    			print("GODEBUG: value \"", value_43449, "\" not supported for cpu option \"", key_43444, "\"\n")
    			gotoNext = 43118
    			gotoNext = 43725
    		}
    		_ = gotoNext == 43725
    		if key_43444 == "all" {
    			gotoNext = 43741
    			_ = gotoNext == 43741
    			if 0 < len(options) {
    				gotoNext = 43836
    				_ = gotoNext == 43836
    				i_43750 = 0
    				gotoNext = 43837
    				_ = gotoNext == 43837
    				if i_43750 < len(options) {
    					gotoNext = 43769
    					_ = gotoNext == 43769
    					options[i_43750].Specified = true
    					options[i_43750].Enable = enable_43510
    					i_43750++
    					gotoNext = 43837
    				} else {
    					gotoNext = 43842
    				}
    				gotoNext = 43842
    			} else {
    				gotoNext = 43842
    			}
    			_ = gotoNext == 43842
    			gotoNext = 43118
    			gotoNext = 43864
    		} else {
    			gotoNext = 43864
    		}
    		_ = gotoNext == 43864
    		if 0 < len(options) {
    			gotoNext = 44008
    			_ = gotoNext == 44008
    			i_43868 = 0
    			gotoNext = 44009
    			_ = gotoNext == 44009
    			if i_43868 < len(options) {
    				gotoNext = 43887
    				_ = gotoNext == 43887
    				if options[i_43868].Name == key_43444 {
    					gotoNext = 43918
    					_ = gotoNext == 43918
    					options[i_43868].Specified = true
    					options[i_43868].Enable = enable_43510
    					gotoNext = 43118
    					gotoNext = 43868
    				} else {
    					gotoNext = 43868
    				}
    				_ = gotoNext == 43868
    				i_43868++
    				gotoNext = 44009
    			} else {
    				gotoNext = 44014
    			}
    			gotoNext = 44014
    		} else {
    			gotoNext = 44014
    		}
    		_ = gotoNext == 44014
    		print("GODEBUG: unknown cpu feature \"", key_43444, "\"\n")
    		gotoNext = 43118
    	} else {
    		gotoNext = 44073
    	}
    	_ = gotoNext == 44073
    	if 0 < len(options) {
    		gotoNext = 44286
    		_ = gotoNext == 44286
    		i_44085_0, o_44080 = 0, options[0]
    		gotoNext = 44287
    		_ = gotoNext == 44287
    		if i_44085_0 < len(options) {
    			gotoNext = 44099
    			_ = gotoNext == 44099
    			o_44080 = options[i_44085_0]
    			if !o_44080.Specified {
    				gotoNext = 44119
    				_ = gotoNext == 44119
    				i_44085_0++
    				gotoNext = 44287
    				gotoNext = 44140
    			} else {
    				gotoNext = 44140
    			}
    			_ = gotoNext == 44140
    			if o_44080.Enable && !*o_44080.Feature {
    				gotoNext = 44167
    				_ = gotoNext == 44167
    				print("GODEBUG: can not enable \"", o_44080.Name, "\", missing CPU support\n")
    				i_44085_0++
    				gotoNext = 44287
    				gotoNext = 44264
    			} else {
    				gotoNext = 44264
    			}
    			_ = gotoNext == 44264
    			*o_44080.Feature = o_44080.Enable
    			i_44085_0++
    			gotoNext = 44287
    		} else {
    			gotoNext = 44289
    		}
    		gotoNext = 44289
    	} else {
    		gotoNext = 44289
    	}
    	_ = gotoNext == 44289
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
