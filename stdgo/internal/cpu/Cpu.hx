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
    	gotoNext = 20757
    	_ = gotoNext == 20757
    	_ = 0
    	fieldBreak = false
    	gotoNext = 20765
    	_ = gotoNext == 20765
    	if !fieldBreak && (env != "") {
    		gotoNext = 20779
    		_ = gotoNext == 20779
    		field_20783 = ""
    		i_20797 = indexByte(env, 44)
    		if i_20797 < 0 {
    			gotoNext = 20833
    			_ = gotoNext == 20833
    			field_20783, env = env, ""
    			gotoNext = 20911
    		} else {
    			gotoNext = 20868
    			_ = gotoNext == 20868
    			gotoNext = 20868
    			_ = gotoNext == 20868
    			field_20783, env = env[:i_20797], env[i_20797+1:]
    			_ = 0
    			gotoNext = 20911
    		}
    		_ = gotoNext == 20911
    		if len(field_20783) < 4 || field_20783[:4] != "cpu." {
    			gotoNext = 20952
    			_ = gotoNext == 20952
    			_ = 0
    			gotoNext = 20765
    			gotoNext = 20972
    		} else {
    			gotoNext = 20972
    		}
    		_ = gotoNext == 20972
    		i_20797 = indexByte(field_20783, 61)
    		if i_20797 < 0 {
    			gotoNext = 21009
    			_ = gotoNext == 21009
    			print("GODEBUG: no value specified for \"", field_20783, "\"\n")
    			_ = 0
    			gotoNext = 20765
    			gotoNext = 21091
    		} else {
    			gotoNext = 21091
    		}
    		_ = gotoNext == 21091
    		key_21091, value_21096 = field_20783[4:i_20797], field_20783[i_20797+1:]
    		gotoNext = 21171
    		_ = gotoNext == 21171
    		switch value_21096 {
    		case "on":
    			gotoNext = 21188
    			_ = gotoNext == 21188
    			enable_21157 = true
    			gotoNext = 21372
    		case "off":
    			gotoNext = 21218
    			_ = gotoNext == 21218
    			enable_21157 = false
    			gotoNext = 21372
    		default:
    			gotoNext = 21250
    			_ = gotoNext == 21250
    			print("GODEBUG: value \"", value_21096, "\" not supported for cpu option \"", key_21091, "\"\n")
    			gotoNext = 20765
    			gotoNext = 21372
    		}
    		_ = gotoNext == 21372
    		if key_21091 == "all" {
    			gotoNext = 21388
    			_ = gotoNext == 21388
    			if 0 < len(options) {
    				gotoNext = 21483
    				_ = gotoNext == 21483
    				i_21397 = 0
    				gotoNext = 21484
    				_ = gotoNext == 21484
    				if i_21397 < len(options) {
    					gotoNext = 21416
    					_ = gotoNext == 21416
    					options[i_21397].Specified = true
    					options[i_21397].Enable = enable_21157
    					i_21397++
    					gotoNext = 21484
    				} else {
    					gotoNext = 21489
    				}
    				gotoNext = 21489
    			} else {
    				gotoNext = 21489
    			}
    			_ = gotoNext == 21489
    			gotoNext = 20765
    			gotoNext = 21511
    		} else {
    			gotoNext = 21511
    		}
    		_ = gotoNext == 21511
    		if 0 < len(options) {
    			gotoNext = 21655
    			_ = gotoNext == 21655
    			i_21515 = 0
    			gotoNext = 21656
    			_ = gotoNext == 21656
    			if i_21515 < len(options) {
    				gotoNext = 21534
    				_ = gotoNext == 21534
    				if options[i_21515].Name == key_21091 {
    					gotoNext = 21565
    					_ = gotoNext == 21565
    					options[i_21515].Specified = true
    					options[i_21515].Enable = enable_21157
    					gotoNext = 20765
    					gotoNext = 21515
    				} else {
    					gotoNext = 21515
    				}
    				_ = gotoNext == 21515
    				i_21515++
    				gotoNext = 21656
    			} else {
    				gotoNext = 21661
    			}
    			gotoNext = 21661
    		} else {
    			gotoNext = 21661
    		}
    		_ = gotoNext == 21661
    		print("GODEBUG: unknown cpu feature \"", key_21091, "\"\n")
    		gotoNext = 20765
    	} else {
    		gotoNext = 21720
    	}
    	_ = gotoNext == 21720
    	if 0 < len(options) {
    		gotoNext = 21933
    		_ = gotoNext == 21933
    		i_21732_0, o_21727 = 0, options[0]
    		gotoNext = 21934
    		_ = gotoNext == 21934
    		if i_21732_0 < len(options) {
    			gotoNext = 21746
    			_ = gotoNext == 21746
    			o_21727 = options[i_21732_0]
    			if !o_21727.Specified {
    				gotoNext = 21766
    				_ = gotoNext == 21766
    				i_21732_0++
    				gotoNext = 21934
    				gotoNext = 21787
    			} else {
    				gotoNext = 21787
    			}
    			_ = gotoNext == 21787
    			if o_21727.Enable && !*o_21727.Feature {
    				gotoNext = 21814
    				_ = gotoNext == 21814
    				print("GODEBUG: can not enable \"", o_21727.Name, "\", missing CPU support\n")
    				i_21732_0++
    				gotoNext = 21934
    				gotoNext = 21911
    			} else {
    				gotoNext = 21911
    			}
    			_ = gotoNext == 21911
    			*o_21727.Feature = o_21727.Enable
    			i_21732_0++
    			gotoNext = 21934
    		} else {
    			gotoNext = 21936
    		}
    		gotoNext = 21936
    	} else {
    		gotoNext = 21936
    	}
    	_ = gotoNext == 21936
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
