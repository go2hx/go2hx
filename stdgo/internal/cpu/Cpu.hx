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
    	gotoNext = 14138
    	_ = gotoNext == 14138
    	_ = 0
    	fieldBreak = false
    	gotoNext = 14146
    	_ = gotoNext == 14146
    	if !fieldBreak && (env != "") {
    		gotoNext = 14160
    		_ = gotoNext == 14160
    		field_14164 = ""
    		i_14178 = indexByte(env, 44)
    		if i_14178 < 0 {
    			gotoNext = 14214
    			_ = gotoNext == 14214
    			field_14164, env = env, ""
    			gotoNext = 14292
    		} else {
    			gotoNext = 14249
    			_ = gotoNext == 14249
    			gotoNext = 14249
    			_ = gotoNext == 14249
    			field_14164, env = env[:i_14178], env[i_14178+1:]
    			_ = 0
    			gotoNext = 14292
    		}
    		_ = gotoNext == 14292
    		if len(field_14164) < 4 || field_14164[:4] != "cpu." {
    			gotoNext = 14333
    			_ = gotoNext == 14333
    			_ = 0
    			gotoNext = 14146
    			gotoNext = 14353
    		} else {
    			gotoNext = 14353
    		}
    		_ = gotoNext == 14353
    		i_14178 = indexByte(field_14164, 61)
    		if i_14178 < 0 {
    			gotoNext = 14390
    			_ = gotoNext == 14390
    			print("GODEBUG: no value specified for \"", field_14164, "\"\n")
    			_ = 0
    			gotoNext = 14146
    			gotoNext = 14472
    		} else {
    			gotoNext = 14472
    		}
    		_ = gotoNext == 14472
    		key_14472, value_14477 = field_14164[4:i_14178], field_14164[i_14178+1:]
    		gotoNext = 14552
    		_ = gotoNext == 14552
    		switch value_14477 {
    		case "on":
    			gotoNext = 14569
    			_ = gotoNext == 14569
    			enable_14538 = true
    			gotoNext = 14753
    		case "off":
    			gotoNext = 14599
    			_ = gotoNext == 14599
    			enable_14538 = false
    			gotoNext = 14753
    		default:
    			gotoNext = 14631
    			_ = gotoNext == 14631
    			print("GODEBUG: value \"", value_14477, "\" not supported for cpu option \"", key_14472, "\"\n")
    			gotoNext = 14146
    			gotoNext = 14753
    		}
    		_ = gotoNext == 14753
    		if key_14472 == "all" {
    			gotoNext = 14769
    			_ = gotoNext == 14769
    			if 0 < len(options) {
    				gotoNext = 14864
    				_ = gotoNext == 14864
    				i_14778 = 0
    				gotoNext = 14865
    				_ = gotoNext == 14865
    				if i_14778 < len(options) {
    					gotoNext = 14797
    					_ = gotoNext == 14797
    					options[i_14778].Specified = true
    					options[i_14778].Enable = enable_14538
    					i_14778++
    					gotoNext = 14865
    				} else {
    					gotoNext = 14870
    				}
    				gotoNext = 14870
    			} else {
    				gotoNext = 14870
    			}
    			_ = gotoNext == 14870
    			gotoNext = 14146
    			gotoNext = 14892
    		} else {
    			gotoNext = 14892
    		}
    		_ = gotoNext == 14892
    		if 0 < len(options) {
    			gotoNext = 15036
    			_ = gotoNext == 15036
    			i_14896 = 0
    			gotoNext = 15037
    			_ = gotoNext == 15037
    			if i_14896 < len(options) {
    				gotoNext = 14915
    				_ = gotoNext == 14915
    				if options[i_14896].Name == key_14472 {
    					gotoNext = 14946
    					_ = gotoNext == 14946
    					options[i_14896].Specified = true
    					options[i_14896].Enable = enable_14538
    					gotoNext = 14146
    					gotoNext = 14896
    				} else {
    					gotoNext = 14896
    				}
    				_ = gotoNext == 14896
    				i_14896++
    				gotoNext = 15037
    			} else {
    				gotoNext = 15042
    			}
    			gotoNext = 15042
    		} else {
    			gotoNext = 15042
    		}
    		_ = gotoNext == 15042
    		print("GODEBUG: unknown cpu feature \"", key_14472, "\"\n")
    		gotoNext = 14146
    	} else {
    		gotoNext = 15101
    	}
    	_ = gotoNext == 15101
    	if 0 < len(options) {
    		gotoNext = 15314
    		_ = gotoNext == 15314
    		i_15113_0, o_15108 = 0, options[0]
    		gotoNext = 15315
    		_ = gotoNext == 15315
    		if i_15113_0 < len(options) {
    			gotoNext = 15127
    			_ = gotoNext == 15127
    			o_15108 = options[i_15113_0]
    			if !o_15108.Specified {
    				gotoNext = 15147
    				_ = gotoNext == 15147
    				i_15113_0++
    				gotoNext = 15315
    				gotoNext = 15168
    			} else {
    				gotoNext = 15168
    			}
    			_ = gotoNext == 15168
    			if o_15108.Enable && !*o_15108.Feature {
    				gotoNext = 15195
    				_ = gotoNext == 15195
    				print("GODEBUG: can not enable \"", o_15108.Name, "\", missing CPU support\n")
    				i_15113_0++
    				gotoNext = 15315
    				gotoNext = 15292
    			} else {
    				gotoNext = 15292
    			}
    			_ = gotoNext == 15292
    			*o_15108.Feature = o_15108.Enable
    			i_15113_0++
    			gotoNext = 15315
    		} else {
    			gotoNext = 15317
    		}
    		gotoNext = 15317
    	} else {
    		gotoNext = 15317
    	}
    	_ = gotoNext == 15317
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
