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
    	gotoNext = 13945
    	_ = gotoNext == 13945
    	_ = 0
    	fieldBreak = false
    	gotoNext = 13953
    	_ = gotoNext == 13953
    	if !fieldBreak && (env != "") {
    		gotoNext = 13967
    		_ = gotoNext == 13967
    		field_13971 = ""
    		i_13985 = indexByte(env, 44)
    		if i_13985 < 0 {
    			gotoNext = 14021
    			_ = gotoNext == 14021
    			field_13971, env = env, ""
    			gotoNext = 14099
    		} else {
    			gotoNext = 14056
    			_ = gotoNext == 14056
    			field_13971, env = env[:i_13985], env[i_13985+1:]
    			gotoNext = 14099
    		}
    		_ = gotoNext == 14099
    		if len(field_13971) < 4 || field_13971[:4] != "cpu." {
    			gotoNext = 14140
    			_ = gotoNext == 14140
    			_ = 0
    			gotoNext = 13953
    			gotoNext = 14160
    		} else {
    			gotoNext = 14160
    		}
    		_ = gotoNext == 14160
    		i_13985 = indexByte(field_13971, 61)
    		if i_13985 < 0 {
    			gotoNext = 14197
    			_ = gotoNext == 14197
    			print("GODEBUG: no value specified for \"", field_13971, "\"\n")
    			_ = 0
    			gotoNext = 13953
    			gotoNext = 14279
    		} else {
    			gotoNext = 14279
    		}
    		_ = gotoNext == 14279
    		key_14279, value_14284 = field_13971[4:i_13985], field_13971[i_13985+1:]
    		_ = 0
    		gotoNext = 14359
    		_ = gotoNext == 14359
    		switch value_14284 {
    		case "on":
    			gotoNext = 14376
    			_ = gotoNext == 14376
    			enable_14345 = true
    			gotoNext = 14560
    		case "off":
    			gotoNext = 14406
    			_ = gotoNext == 14406
    			enable_14345 = false
    			gotoNext = 14560
    		default:
    			gotoNext = 14438
    			_ = gotoNext == 14438
    			print("GODEBUG: value \"", value_14284, "\" not supported for cpu option \"", key_14279, "\"\n")
    			gotoNext = 13953
    			gotoNext = 14560
    		}
    		_ = gotoNext == 14560
    		if key_14279 == "all" {
    			gotoNext = 14576
    			_ = gotoNext == 14576
    			if 0 < len(options) {
    				gotoNext = 14671
    				_ = gotoNext == 14671
    				i_14585 = 0
    				gotoNext = 14672
    				_ = gotoNext == 14672
    				if i_14585 < len(options) {
    					gotoNext = 14604
    					_ = gotoNext == 14604
    					options[i_14585].Specified = true
    					options[i_14585].Enable = enable_14345
    					i_14585++
    					gotoNext = 14672
    				} else {
    					gotoNext = 14677
    				}
    				gotoNext = 14677
    			} else {
    				gotoNext = 14677
    			}
    			_ = gotoNext == 14677
    			gotoNext = 13953
    			gotoNext = 14699
    		} else {
    			gotoNext = 14699
    		}
    		_ = gotoNext == 14699
    		if 0 < len(options) {
    			gotoNext = 14843
    			_ = gotoNext == 14843
    			i_14703 = 0
    			gotoNext = 14844
    			_ = gotoNext == 14844
    			if i_14703 < len(options) {
    				gotoNext = 14722
    				_ = gotoNext == 14722
    				if options[i_14703].Name == key_14279 {
    					gotoNext = 14753
    					_ = gotoNext == 14753
    					options[i_14703].Specified = true
    					options[i_14703].Enable = enable_14345
    					gotoNext = 13953
    					gotoNext = 14703
    				} else {
    					gotoNext = 14703
    				}
    				_ = gotoNext == 14703
    				i_14703++
    				gotoNext = 14844
    			} else {
    				gotoNext = 14849
    			}
    			gotoNext = 14849
    		} else {
    			gotoNext = 14849
    		}
    		_ = gotoNext == 14849
    		print("GODEBUG: unknown cpu feature \"", key_14279, "\"\n")
    		gotoNext = 13953
    	} else {
    		gotoNext = 14908
    	}
    	_ = gotoNext == 14908
    	if 0 < len(options) {
    		gotoNext = 15121
    		_ = gotoNext == 15121
    		i_14920_0, o_14915 = 0, options[0]
    		gotoNext = 15122
    		_ = gotoNext == 15122
    		if i_14920_0 < len(options) {
    			gotoNext = 14934
    			_ = gotoNext == 14934
    			o_14915 = options[i_14920_0]
    			if !o_14915.Specified {
    				gotoNext = 14954
    				_ = gotoNext == 14954
    				i_14920_0++
    				gotoNext = 15122
    				gotoNext = 14975
    			} else {
    				gotoNext = 14975
    			}
    			_ = gotoNext == 14975
    			if o_14915.Enable && !*o_14915.Feature {
    				gotoNext = 15002
    				_ = gotoNext == 15002
    				print("GODEBUG: can not enable \"", o_14915.Name, "\", missing CPU support\n")
    				i_14920_0++
    				gotoNext = 15122
    				gotoNext = 15099
    			} else {
    				gotoNext = 15099
    			}
    			_ = gotoNext == 15099
    			*o_14915.Feature = o_14915.Enable
    			i_14920_0++
    			gotoNext = 15122
    		} else {
    			gotoNext = 15124
    		}
    		gotoNext = 15124
    	} else {
    		gotoNext = 15124
    	}
    	_ = gotoNext == 15124
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
