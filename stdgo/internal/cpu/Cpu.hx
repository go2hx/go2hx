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
    	gotoNext = 239884
    	_ = gotoNext == 239884
    	_ = 0
    	fieldBreak = false
    	gotoNext = 239892
    	_ = gotoNext == 239892
    	if !fieldBreak && (env != "") {
    		gotoNext = 239906
    		_ = gotoNext == 239906
    		field_239910 = ""
    		i_239924 = indexByte(env, 44)
    		if i_239924 < 0 {
    			gotoNext = 239960
    			_ = gotoNext == 239960
    			field_239910, env = env, ""
    			gotoNext = 240038
    		} else {
    			gotoNext = 239995
    			_ = gotoNext == 239995
    			field_239910, env = env[:i_239924], env[i_239924+1:]
    			gotoNext = 240038
    		}
    		_ = gotoNext == 240038
    		if len(field_239910) < 4 || field_239910[:4] != "cpu." {
    			gotoNext = 240079
    			_ = gotoNext == 240079
    			_ = 0
    			gotoNext = 239892
    			gotoNext = 240099
    		} else {
    			gotoNext = 240099
    		}
    		_ = gotoNext == 240099
    		i_239924 = indexByte(field_239910, 61)
    		if i_239924 < 0 {
    			gotoNext = 240136
    			_ = gotoNext == 240136
    			print("GODEBUG: no value specified for \"", field_239910, "\"\n")
    			_ = 0
    			gotoNext = 239892
    			gotoNext = 240218
    		} else {
    			gotoNext = 240218
    		}
    		_ = gotoNext == 240218
    		key_240218, value_240223 = field_239910[4:i_239924], field_239910[i_239924+1:]
    		_ = 0
    		gotoNext = 240298
    		_ = gotoNext == 240298
    		switch value_240223 {
    		case "on":
    			gotoNext = 240315
    			_ = gotoNext == 240315
    			enable_240284 = true
    			gotoNext = 240499
    		case "off":
    			gotoNext = 240345
    			_ = gotoNext == 240345
    			enable_240284 = false
    			gotoNext = 240499
    		default:
    			gotoNext = 240377
    			_ = gotoNext == 240377
    			print("GODEBUG: value \"", value_240223, "\" not supported for cpu option \"", key_240218, "\"\n")
    			gotoNext = 239892
    			gotoNext = 240499
    		}
    		_ = gotoNext == 240499
    		if key_240218 == "all" {
    			gotoNext = 240515
    			_ = gotoNext == 240515
    			if 0 < len(options) {
    				gotoNext = 240610
    				_ = gotoNext == 240610
    				i_240524 = 0
    				gotoNext = 240611
    				_ = gotoNext == 240611
    				if i_240524 < len(options) {
    					gotoNext = 240543
    					_ = gotoNext == 240543
    					options[i_240524].Specified = true
    					options[i_240524].Enable = enable_240284
    					i_240524++
    					gotoNext = 240611
    				} else {
    					gotoNext = 240616
    				}
    				gotoNext = 240616
    			} else {
    				gotoNext = 240616
    			}
    			_ = gotoNext == 240616
    			gotoNext = 239892
    			gotoNext = 240638
    		} else {
    			gotoNext = 240638
    		}
    		_ = gotoNext == 240638
    		if 0 < len(options) {
    			gotoNext = 240782
    			_ = gotoNext == 240782
    			i_240642 = 0
    			gotoNext = 240783
    			_ = gotoNext == 240783
    			if i_240642 < len(options) {
    				gotoNext = 240661
    				_ = gotoNext == 240661
    				if options[i_240642].Name == key_240218 {
    					gotoNext = 240692
    					_ = gotoNext == 240692
    					options[i_240642].Specified = true
    					options[i_240642].Enable = enable_240284
    					gotoNext = 239892
    					gotoNext = 240642
    				} else {
    					gotoNext = 240642
    				}
    				_ = gotoNext == 240642
    				i_240642++
    				gotoNext = 240783
    			} else {
    				gotoNext = 240788
    			}
    			gotoNext = 240788
    		} else {
    			gotoNext = 240788
    		}
    		_ = gotoNext == 240788
    		print("GODEBUG: unknown cpu feature \"", key_240218, "\"\n")
    		gotoNext = 239892
    	} else {
    		gotoNext = 240847
    	}
    	_ = gotoNext == 240847
    	if 0 < len(options) {
    		gotoNext = 241060
    		_ = gotoNext == 241060
    		i_240859_0, o_240854 = 0, options[0]
    		gotoNext = 241061
    		_ = gotoNext == 241061
    		if i_240859_0 < len(options) {
    			gotoNext = 240873
    			_ = gotoNext == 240873
    			o_240854 = options[i_240859_0]
    			if !o_240854.Specified {
    				gotoNext = 240893
    				_ = gotoNext == 240893
    				i_240859_0++
    				gotoNext = 241061
    				gotoNext = 240914
    			} else {
    				gotoNext = 240914
    			}
    			_ = gotoNext == 240914
    			if o_240854.Enable && !*o_240854.Feature {
    				gotoNext = 240941
    				_ = gotoNext == 240941
    				print("GODEBUG: can not enable \"", o_240854.Name, "\", missing CPU support\n")
    				i_240859_0++
    				gotoNext = 241061
    				gotoNext = 241038
    			} else {
    				gotoNext = 241038
    			}
    			_ = gotoNext == 241038
    			*o_240854.Feature = o_240854.Enable
    			i_240859_0++
    			gotoNext = 241061
    		} else {
    			gotoNext = 241063
    		}
    		gotoNext = 241063
    	} else {
    		gotoNext = 241063
    	}
    	_ = gotoNext == 241063
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
