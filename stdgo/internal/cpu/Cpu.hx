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
    	gotoNext = 36152
    	_ = gotoNext == 36152
    	_ = 0
    	fieldBreak = false
    	gotoNext = 36160
    	_ = gotoNext == 36160
    	if !fieldBreak && (env != "") {
    		gotoNext = 36174
    		_ = gotoNext == 36174
    		field_36178 = ""
    		i_36192 = indexByte(env, 44)
    		if i_36192 < 0 {
    			gotoNext = 36228
    			_ = gotoNext == 36228
    			field_36178, env = env, ""
    			gotoNext = 36306
    		} else {
    			gotoNext = 36263
    			_ = gotoNext == 36263
    			gotoNext = 36263
    			_ = gotoNext == 36263
    			field_36178, env = env[:i_36192], env[i_36192+1:]
    			_ = 0
    			gotoNext = 36306
    		}
    		_ = gotoNext == 36306
    		if len(field_36178) < 4 || field_36178[:4] != "cpu." {
    			gotoNext = 36347
    			_ = gotoNext == 36347
    			_ = 0
    			gotoNext = 36160
    			gotoNext = 36367
    		} else {
    			gotoNext = 36367
    		}
    		_ = gotoNext == 36367
    		i_36192 = indexByte(field_36178, 61)
    		if i_36192 < 0 {
    			gotoNext = 36404
    			_ = gotoNext == 36404
    			print("GODEBUG: no value specified for \"", field_36178, "\"\n")
    			_ = 0
    			gotoNext = 36160
    			gotoNext = 36486
    		} else {
    			gotoNext = 36486
    		}
    		_ = gotoNext == 36486
    		key_36486, value_36491 = field_36178[4:i_36192], field_36178[i_36192+1:]
    		gotoNext = 36566
    		_ = gotoNext == 36566
    		switch value_36491 {
    		case "on":
    			gotoNext = 36583
    			_ = gotoNext == 36583
    			enable_36552 = true
    			gotoNext = 36767
    		case "off":
    			gotoNext = 36613
    			_ = gotoNext == 36613
    			enable_36552 = false
    			gotoNext = 36767
    		default:
    			gotoNext = 36645
    			_ = gotoNext == 36645
    			print("GODEBUG: value \"", value_36491, "\" not supported for cpu option \"", key_36486, "\"\n")
    			gotoNext = 36160
    			gotoNext = 36767
    		}
    		_ = gotoNext == 36767
    		if key_36486 == "all" {
    			gotoNext = 36783
    			_ = gotoNext == 36783
    			if 0 < len(options) {
    				gotoNext = 36878
    				_ = gotoNext == 36878
    				i_36792 = 0
    				gotoNext = 36879
    				_ = gotoNext == 36879
    				if i_36792 < len(options) {
    					gotoNext = 36811
    					_ = gotoNext == 36811
    					options[i_36792].Specified = true
    					options[i_36792].Enable = enable_36552
    					i_36792++
    					gotoNext = 36879
    				} else {
    					gotoNext = 36884
    				}
    				gotoNext = 36884
    			} else {
    				gotoNext = 36884
    			}
    			_ = gotoNext == 36884
    			gotoNext = 36160
    			gotoNext = 36906
    		} else {
    			gotoNext = 36906
    		}
    		_ = gotoNext == 36906
    		if 0 < len(options) {
    			gotoNext = 37050
    			_ = gotoNext == 37050
    			i_36910 = 0
    			gotoNext = 37051
    			_ = gotoNext == 37051
    			if i_36910 < len(options) {
    				gotoNext = 36929
    				_ = gotoNext == 36929
    				if options[i_36910].Name == key_36486 {
    					gotoNext = 36960
    					_ = gotoNext == 36960
    					options[i_36910].Specified = true
    					options[i_36910].Enable = enable_36552
    					gotoNext = 36160
    					gotoNext = 36910
    				} else {
    					gotoNext = 36910
    				}
    				_ = gotoNext == 36910
    				i_36910++
    				gotoNext = 37051
    			} else {
    				gotoNext = 37056
    			}
    			gotoNext = 37056
    		} else {
    			gotoNext = 37056
    		}
    		_ = gotoNext == 37056
    		print("GODEBUG: unknown cpu feature \"", key_36486, "\"\n")
    		gotoNext = 36160
    	} else {
    		gotoNext = 37115
    	}
    	_ = gotoNext == 37115
    	if 0 < len(options) {
    		gotoNext = 37328
    		_ = gotoNext == 37328
    		i_37127_0, o_37122 = 0, options[0]
    		gotoNext = 37329
    		_ = gotoNext == 37329
    		if i_37127_0 < len(options) {
    			gotoNext = 37141
    			_ = gotoNext == 37141
    			o_37122 = options[i_37127_0]
    			if !o_37122.Specified {
    				gotoNext = 37161
    				_ = gotoNext == 37161
    				i_37127_0++
    				gotoNext = 37329
    				gotoNext = 37182
    			} else {
    				gotoNext = 37182
    			}
    			_ = gotoNext == 37182
    			if o_37122.Enable && !*o_37122.Feature {
    				gotoNext = 37209
    				_ = gotoNext == 37209
    				print("GODEBUG: can not enable \"", o_37122.Name, "\", missing CPU support\n")
    				i_37127_0++
    				gotoNext = 37329
    				gotoNext = 37306
    			} else {
    				gotoNext = 37306
    			}
    			_ = gotoNext == 37306
    			*o_37122.Feature = o_37122.Enable
    			i_37127_0++
    			gotoNext = 37329
    		} else {
    			gotoNext = 37331
    		}
    		gotoNext = 37331
    	} else {
    		gotoNext = 37331
    	}
    	_ = gotoNext == 37331
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
