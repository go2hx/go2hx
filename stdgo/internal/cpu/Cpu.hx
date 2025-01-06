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
    	gotoNext = 6325
    	_ = gotoNext == 6325
    	_ = 0
    	fieldBreak = false
    	gotoNext = 6333
    	_ = gotoNext == 6333
    	if !fieldBreak && (env != "") {
    		gotoNext = 6347
    		_ = gotoNext == 6347
    		field_6351 = ""
    		i_6365 = indexByte(env, 44)
    		if i_6365 < 0 {
    			gotoNext = 6401
    			_ = gotoNext == 6401
    			field_6351, env = env, ""
    			gotoNext = 6479
    		} else {
    			gotoNext = 6436
    			_ = gotoNext == 6436
    			gotoNext = 6436
    			_ = gotoNext == 6436
    			field_6351, env = env[:i_6365], env[i_6365+1:]
    			_ = 0
    			gotoNext = 6479
    		}
    		_ = gotoNext == 6479
    		if len(field_6351) < 4 || field_6351[:4] != "cpu." {
    			gotoNext = 6520
    			_ = gotoNext == 6520
    			_ = 0
    			gotoNext = 6333
    			gotoNext = 6540
    		} else {
    			gotoNext = 6540
    		}
    		_ = gotoNext == 6540
    		i_6365 = indexByte(field_6351, 61)
    		if i_6365 < 0 {
    			gotoNext = 6577
    			_ = gotoNext == 6577
    			print("GODEBUG: no value specified for \"", field_6351, "\"\n")
    			_ = 0
    			gotoNext = 6333
    			gotoNext = 6659
    		} else {
    			gotoNext = 6659
    		}
    		_ = gotoNext == 6659
    		key_6659, value_6664 = field_6351[4:i_6365], field_6351[i_6365+1:]
    		gotoNext = 6739
    		_ = gotoNext == 6739
    		switch value_6664 {
    		case "on":
    			gotoNext = 6756
    			_ = gotoNext == 6756
    			enable_6725 = true
    			gotoNext = 6940
    		case "off":
    			gotoNext = 6786
    			_ = gotoNext == 6786
    			enable_6725 = false
    			gotoNext = 6940
    		default:
    			gotoNext = 6818
    			_ = gotoNext == 6818
    			print("GODEBUG: value \"", value_6664, "\" not supported for cpu option \"", key_6659, "\"\n")
    			gotoNext = 6333
    			gotoNext = 6940
    		}
    		_ = gotoNext == 6940
    		if key_6659 == "all" {
    			gotoNext = 6956
    			_ = gotoNext == 6956
    			if 0 < len(options) {
    				gotoNext = 7051
    				_ = gotoNext == 7051
    				i_6965 = 0
    				gotoNext = 7052
    				_ = gotoNext == 7052
    				if i_6965 < len(options) {
    					gotoNext = 6984
    					_ = gotoNext == 6984
    					options[i_6965].Specified = true
    					options[i_6965].Enable = enable_6725
    					i_6965++
    					gotoNext = 7052
    				} else {
    					gotoNext = 7057
    				}
    				gotoNext = 7057
    			} else {
    				gotoNext = 7057
    			}
    			_ = gotoNext == 7057
    			gotoNext = 6333
    			gotoNext = 7079
    		} else {
    			gotoNext = 7079
    		}
    		_ = gotoNext == 7079
    		if 0 < len(options) {
    			gotoNext = 7223
    			_ = gotoNext == 7223
    			i_7083 = 0
    			gotoNext = 7224
    			_ = gotoNext == 7224
    			if i_7083 < len(options) {
    				gotoNext = 7102
    				_ = gotoNext == 7102
    				if options[i_7083].Name == key_6659 {
    					gotoNext = 7133
    					_ = gotoNext == 7133
    					options[i_7083].Specified = true
    					options[i_7083].Enable = enable_6725
    					gotoNext = 6333
    					gotoNext = 7083
    				} else {
    					gotoNext = 7083
    				}
    				_ = gotoNext == 7083
    				i_7083++
    				gotoNext = 7224
    			} else {
    				gotoNext = 7229
    			}
    			gotoNext = 7229
    		} else {
    			gotoNext = 7229
    		}
    		_ = gotoNext == 7229
    		print("GODEBUG: unknown cpu feature \"", key_6659, "\"\n")
    		gotoNext = 6333
    	} else {
    		gotoNext = 7288
    	}
    	_ = gotoNext == 7288
    	if 0 < len(options) {
    		gotoNext = 7501
    		_ = gotoNext == 7501
    		i_7300_0, o_7295 = 0, options[0]
    		gotoNext = 7502
    		_ = gotoNext == 7502
    		if i_7300_0 < len(options) {
    			gotoNext = 7314
    			_ = gotoNext == 7314
    			o_7295 = options[i_7300_0]
    			if !o_7295.Specified {
    				gotoNext = 7334
    				_ = gotoNext == 7334
    				i_7300_0++
    				gotoNext = 7502
    				gotoNext = 7355
    			} else {
    				gotoNext = 7355
    			}
    			_ = gotoNext == 7355
    			if o_7295.Enable && !*o_7295.Feature {
    				gotoNext = 7382
    				_ = gotoNext == 7382
    				print("GODEBUG: can not enable \"", o_7295.Name, "\", missing CPU support\n")
    				i_7300_0++
    				gotoNext = 7502
    				gotoNext = 7479
    			} else {
    				gotoNext = 7479
    			}
    			_ = gotoNext == 7479
    			*o_7295.Feature = o_7295.Enable
    			i_7300_0++
    			gotoNext = 7502
    		} else {
    			gotoNext = 7504
    		}
    		gotoNext = 7504
    	} else {
    		gotoNext = 7504
    	}
    	_ = gotoNext == 7504
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
