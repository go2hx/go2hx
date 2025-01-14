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
var aRM(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
private function get_aRM():stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 return stdgo._internal.internal.cpu.Cpu_aRM.aRM;
private function set_aRM(v:stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1):stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 {
        stdgo._internal.internal.cpu.Cpu_aRM.aRM = v;
        return v;
    }
var aRM64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
private function get_aRM64():stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 return stdgo._internal.internal.cpu.Cpu_aRM64.aRM64;
private function set_aRM64(v:stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2):stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 {
        stdgo._internal.internal.cpu.Cpu_aRM64.aRM64 = v;
        return v;
    }
var mIPS64X(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
private function get_mIPS64X():stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 return stdgo._internal.internal.cpu.Cpu_mIPS64X.mIPS64X;
private function set_mIPS64X(v:stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3):stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 {
        stdgo._internal.internal.cpu.Cpu_mIPS64X.mIPS64X = v;
        return v;
    }
var pPC64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
private function get_pPC64():stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 return stdgo._internal.internal.cpu.Cpu_pPC64.pPC64;
private function set_pPC64(v:stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4):stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 {
        stdgo._internal.internal.cpu.Cpu_pPC64.pPC64 = v;
        return v;
    }
var s390X(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
private function get_s390X():stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 return stdgo._internal.internal.cpu.Cpu_s390X.s390X;
private function set_s390X(v:stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5):stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 {
        stdgo._internal.internal.cpu.Cpu_s390X.s390X = v;
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
typedef T__struct_0Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_0Pointer.T__struct_0Pointer;
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
typedef T__struct_1Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_1Pointer.T__struct_1Pointer;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
typedef T__struct_2Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_2Pointer.T__struct_2Pointer;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
typedef T__struct_3Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_3Pointer.T__struct_3Pointer;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
typedef T__struct_4Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_4Pointer.T__struct_4Pointer;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
typedef T__struct_5Pointer = stdgo._internal.internal.cpu.Cpu_T__struct_5Pointer.T__struct_5Pointer;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
/**
    /|*{
    	gotoNext = 51456
    	_ = gotoNext == 51456
    	_ = 0
    	fieldBreak = false
    	gotoNext = 51464
    	_ = gotoNext == 51464
    	if !fieldBreak && (env != "") {
    		gotoNext = 51478
    		_ = gotoNext == 51478
    		field_51482 = ""
    		i_51496 = indexByte(env, 44)
    		if i_51496 < 0 {
    			gotoNext = 51532
    			_ = gotoNext == 51532
    			field_51482, env = env, ""
    			gotoNext = 51610
    		} else {
    			gotoNext = 51567
    			_ = gotoNext == 51567
    			gotoNext = 51567
    			_ = gotoNext == 51567
    			field_51482, env = env[:i_51496], env[i_51496+1:]
    			_ = 0
    			gotoNext = 51610
    		}
    		_ = gotoNext == 51610
    		if len(field_51482) < 4 || field_51482[:4] != "cpu." {
    			gotoNext = 51651
    			_ = gotoNext == 51651
    			_ = 0
    			gotoNext = 51464
    			gotoNext = 51671
    		} else {
    			gotoNext = 51671
    		}
    		_ = gotoNext == 51671
    		i_51496 = indexByte(field_51482, 61)
    		if i_51496 < 0 {
    			gotoNext = 51708
    			_ = gotoNext == 51708
    			print("GODEBUG: no value specified for \"", field_51482, "\"\n")
    			_ = 0
    			gotoNext = 51464
    			gotoNext = 51790
    		} else {
    			gotoNext = 51790
    		}
    		_ = gotoNext == 51790
    		key_51790, value_51795 = field_51482[4:i_51496], field_51482[i_51496+1:]
    		gotoNext = 51870
    		_ = gotoNext == 51870
    		switch value_51795 {
    		case "on":
    			gotoNext = 51887
    			_ = gotoNext == 51887
    			enable_51856 = true
    			gotoNext = 52071
    		case "off":
    			gotoNext = 51917
    			_ = gotoNext == 51917
    			enable_51856 = false
    			gotoNext = 52071
    		default:
    			gotoNext = 51949
    			_ = gotoNext == 51949
    			print("GODEBUG: value \"", value_51795, "\" not supported for cpu option \"", key_51790, "\"\n")
    			gotoNext = 51464
    			gotoNext = 52071
    		}
    		_ = gotoNext == 52071
    		if key_51790 == "all" {
    			gotoNext = 52087
    			_ = gotoNext == 52087
    			if 0 < len(options) {
    				gotoNext = 52182
    				_ = gotoNext == 52182
    				i_52096 = 0
    				gotoNext = 52183
    				_ = gotoNext == 52183
    				if i_52096 < len(options) {
    					gotoNext = 52115
    					_ = gotoNext == 52115
    					options[i_52096].Specified = true
    					options[i_52096].Enable = enable_51856
    					i_52096++
    					gotoNext = 52183
    				} else {
    					gotoNext = 52188
    				}
    				gotoNext = 52188
    			} else {
    				gotoNext = 52188
    			}
    			_ = gotoNext == 52188
    			gotoNext = 51464
    			gotoNext = 52210
    		} else {
    			gotoNext = 52210
    		}
    		_ = gotoNext == 52210
    		if 0 < len(options) {
    			gotoNext = 52354
    			_ = gotoNext == 52354
    			i_52214 = 0
    			gotoNext = 52355
    			_ = gotoNext == 52355
    			if i_52214 < len(options) {
    				gotoNext = 52233
    				_ = gotoNext == 52233
    				if options[i_52214].Name == key_51790 {
    					gotoNext = 52264
    					_ = gotoNext == 52264
    					options[i_52214].Specified = true
    					options[i_52214].Enable = enable_51856
    					gotoNext = 51464
    					gotoNext = 52214
    				} else {
    					gotoNext = 52214
    				}
    				_ = gotoNext == 52214
    				i_52214++
    				gotoNext = 52355
    			} else {
    				gotoNext = 52360
    			}
    			gotoNext = 52360
    		} else {
    			gotoNext = 52360
    		}
    		_ = gotoNext == 52360
    		print("GODEBUG: unknown cpu feature \"", key_51790, "\"\n")
    		gotoNext = 51464
    	} else {
    		gotoNext = 52419
    	}
    	_ = gotoNext == 52419
    	if 0 < len(options) {
    		gotoNext = 52632
    		_ = gotoNext == 52632
    		i_52431_0, o_52426 = 0, options[0]
    		gotoNext = 52633
    		_ = gotoNext == 52633
    		if i_52431_0 < len(options) {
    			gotoNext = 52445
    			_ = gotoNext == 52445
    			o_52426 = options[i_52431_0]
    			if !o_52426.Specified {
    				gotoNext = 52465
    				_ = gotoNext == 52465
    				i_52431_0++
    				gotoNext = 52633
    				gotoNext = 52486
    			} else {
    				gotoNext = 52486
    			}
    			_ = gotoNext == 52486
    			if o_52426.Enable && !*o_52426.Feature {
    				gotoNext = 52513
    				_ = gotoNext == 52513
    				print("GODEBUG: can not enable \"", o_52426.Name, "\", missing CPU support\n")
    				i_52431_0++
    				gotoNext = 52633
    				gotoNext = 52610
    			} else {
    				gotoNext = 52610
    			}
    			_ = gotoNext == 52610
    			*o_52426.Feature = o_52426.Enable
    			i_52431_0++
    			gotoNext = 52633
    		} else {
    			gotoNext = 52635
    		}
    		gotoNext = 52635
    	} else {
    		gotoNext = 52635
    	}
    	_ = gotoNext == 52635
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
