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
    	gotoNext = 29794
    	_ = gotoNext == 29794
    	_ = 0
    	fieldBreak = false
    	gotoNext = 29802
    	_ = gotoNext == 29802
    	if !fieldBreak && (env != "") {
    		gotoNext = 29816
    		_ = gotoNext == 29816
    		field_29820 = ""
    		i_29834 = indexByte(env, 44)
    		if i_29834 < 0 {
    			gotoNext = 29870
    			_ = gotoNext == 29870
    			field_29820, env = env, ""
    			gotoNext = 29948
    		} else {
    			gotoNext = 29905
    			_ = gotoNext == 29905
    			field_29820, env = env[:i_29834], env[i_29834+1:]
    			gotoNext = 29948
    		}
    		_ = gotoNext == 29948
    		if len(field_29820) < 4 || field_29820[:4] != "cpu." {
    			gotoNext = 29989
    			_ = gotoNext == 29989
    			_ = 0
    			gotoNext = 29802
    			gotoNext = 30009
    		} else {
    			gotoNext = 30009
    		}
    		_ = gotoNext == 30009
    		i_29834 = indexByte(field_29820, 61)
    		if i_29834 < 0 {
    			gotoNext = 30046
    			_ = gotoNext == 30046
    			print("GODEBUG: no value specified for \"", field_29820, "\"\n")
    			_ = 0
    			gotoNext = 29802
    			gotoNext = 30128
    		} else {
    			gotoNext = 30128
    		}
    		_ = gotoNext == 30128
    		key_30128, value_30133 = field_29820[4:i_29834], field_29820[i_29834+1:]
    		_ = 0
    		gotoNext = 30208
    		_ = gotoNext == 30208
    		switch value_30133 {
    		case "on":
    			gotoNext = 30225
    			_ = gotoNext == 30225
    			enable_30194 = true
    			gotoNext = 30409
    		case "off":
    			gotoNext = 30255
    			_ = gotoNext == 30255
    			enable_30194 = false
    			gotoNext = 30409
    		default:
    			gotoNext = 30287
    			_ = gotoNext == 30287
    			print("GODEBUG: value \"", value_30133, "\" not supported for cpu option \"", key_30128, "\"\n")
    			gotoNext = 29802
    			gotoNext = 30409
    		}
    		_ = gotoNext == 30409
    		if key_30128 == "all" {
    			gotoNext = 30425
    			_ = gotoNext == 30425
    			if 0 < len(options) {
    				gotoNext = 30520
    				_ = gotoNext == 30520
    				i_30434 = 0
    				gotoNext = 30521
    				_ = gotoNext == 30521
    				if i_30434 < len(options) {
    					gotoNext = 30453
    					_ = gotoNext == 30453
    					options[i_30434].Specified = true
    					options[i_30434].Enable = enable_30194
    					i_30434++
    					gotoNext = 30521
    				} else {
    					gotoNext = 30526
    				}
    				gotoNext = 30526
    			} else {
    				gotoNext = 30526
    			}
    			_ = gotoNext == 30526
    			gotoNext = 29802
    			gotoNext = 30548
    		} else {
    			gotoNext = 30548
    		}
    		_ = gotoNext == 30548
    		if 0 < len(options) {
    			gotoNext = 30692
    			_ = gotoNext == 30692
    			i_30552 = 0
    			gotoNext = 30693
    			_ = gotoNext == 30693
    			if i_30552 < len(options) {
    				gotoNext = 30571
    				_ = gotoNext == 30571
    				if options[i_30552].Name == key_30128 {
    					gotoNext = 30602
    					_ = gotoNext == 30602
    					options[i_30552].Specified = true
    					options[i_30552].Enable = enable_30194
    					gotoNext = 29802
    					gotoNext = 30552
    				} else {
    					gotoNext = 30552
    				}
    				_ = gotoNext == 30552
    				i_30552++
    				gotoNext = 30693
    			} else {
    				gotoNext = 30698
    			}
    			gotoNext = 30698
    		} else {
    			gotoNext = 30698
    		}
    		_ = gotoNext == 30698
    		print("GODEBUG: unknown cpu feature \"", key_30128, "\"\n")
    		gotoNext = 29802
    	} else {
    		gotoNext = 30757
    	}
    	_ = gotoNext == 30757
    	if 0 < len(options) {
    		gotoNext = 30970
    		_ = gotoNext == 30970
    		i_30769_0, o_30764 = 0, options[0]
    		gotoNext = 30971
    		_ = gotoNext == 30971
    		if i_30769_0 < len(options) {
    			gotoNext = 30783
    			_ = gotoNext == 30783
    			o_30764 = options[i_30769_0]
    			if !o_30764.Specified {
    				gotoNext = 30803
    				_ = gotoNext == 30803
    				i_30769_0++
    				gotoNext = 30971
    				gotoNext = 30824
    			} else {
    				gotoNext = 30824
    			}
    			_ = gotoNext == 30824
    			if o_30764.Enable && !*o_30764.Feature {
    				gotoNext = 30851
    				_ = gotoNext == 30851
    				print("GODEBUG: can not enable \"", o_30764.Name, "\", missing CPU support\n")
    				i_30769_0++
    				gotoNext = 30971
    				gotoNext = 30948
    			} else {
    				gotoNext = 30948
    			}
    			_ = gotoNext == 30948
    			*o_30764.Feature = o_30764.Enable
    			i_30769_0++
    			gotoNext = 30971
    		} else {
    			gotoNext = 30973
    		}
    		gotoNext = 30973
    	} else {
    		gotoNext = 30973
    	}
    	_ = gotoNext == 30973
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
