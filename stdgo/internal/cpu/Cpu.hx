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
    	gotoNext = 39861
    	_ = gotoNext == 39861
    	_ = 0
    	fieldBreak = false
    	gotoNext = 39869
    	_ = gotoNext == 39869
    	if !fieldBreak && (env != "") {
    		gotoNext = 39883
    		_ = gotoNext == 39883
    		field_39887 = ""
    		i_39901 = indexByte(env, 44)
    		if i_39901 < 0 {
    			gotoNext = 39937
    			_ = gotoNext == 39937
    			field_39887, env = env, ""
    			gotoNext = 40015
    		} else {
    			gotoNext = 39972
    			_ = gotoNext == 39972
    			gotoNext = 39972
    			_ = gotoNext == 39972
    			field_39887, env = env[:i_39901], env[i_39901+1:]
    			_ = 0
    			gotoNext = 40015
    		}
    		_ = gotoNext == 40015
    		if len(field_39887) < 4 || field_39887[:4] != "cpu." {
    			gotoNext = 40056
    			_ = gotoNext == 40056
    			_ = 0
    			gotoNext = 39869
    			gotoNext = 40076
    		} else {
    			gotoNext = 40076
    		}
    		_ = gotoNext == 40076
    		i_39901 = indexByte(field_39887, 61)
    		if i_39901 < 0 {
    			gotoNext = 40113
    			_ = gotoNext == 40113
    			print("GODEBUG: no value specified for \"", field_39887, "\"\n")
    			_ = 0
    			gotoNext = 39869
    			gotoNext = 40195
    		} else {
    			gotoNext = 40195
    		}
    		_ = gotoNext == 40195
    		key_40195, value_40200 = field_39887[4:i_39901], field_39887[i_39901+1:]
    		gotoNext = 40275
    		_ = gotoNext == 40275
    		switch value_40200 {
    		case "on":
    			gotoNext = 40292
    			_ = gotoNext == 40292
    			enable_40261 = true
    			gotoNext = 40476
    		case "off":
    			gotoNext = 40322
    			_ = gotoNext == 40322
    			enable_40261 = false
    			gotoNext = 40476
    		default:
    			gotoNext = 40354
    			_ = gotoNext == 40354
    			print("GODEBUG: value \"", value_40200, "\" not supported for cpu option \"", key_40195, "\"\n")
    			gotoNext = 39869
    			gotoNext = 40476
    		}
    		_ = gotoNext == 40476
    		if key_40195 == "all" {
    			gotoNext = 40492
    			_ = gotoNext == 40492
    			if 0 < len(options) {
    				gotoNext = 40587
    				_ = gotoNext == 40587
    				i_40501 = 0
    				gotoNext = 40588
    				_ = gotoNext == 40588
    				if i_40501 < len(options) {
    					gotoNext = 40520
    					_ = gotoNext == 40520
    					options[i_40501].Specified = true
    					options[i_40501].Enable = enable_40261
    					i_40501++
    					gotoNext = 40588
    				} else {
    					gotoNext = 40593
    				}
    				gotoNext = 40593
    			} else {
    				gotoNext = 40593
    			}
    			_ = gotoNext == 40593
    			gotoNext = 39869
    			gotoNext = 40615
    		} else {
    			gotoNext = 40615
    		}
    		_ = gotoNext == 40615
    		if 0 < len(options) {
    			gotoNext = 40759
    			_ = gotoNext == 40759
    			i_40619 = 0
    			gotoNext = 40760
    			_ = gotoNext == 40760
    			if i_40619 < len(options) {
    				gotoNext = 40638
    				_ = gotoNext == 40638
    				if options[i_40619].Name == key_40195 {
    					gotoNext = 40669
    					_ = gotoNext == 40669
    					options[i_40619].Specified = true
    					options[i_40619].Enable = enable_40261
    					gotoNext = 39869
    					gotoNext = 40619
    				} else {
    					gotoNext = 40619
    				}
    				_ = gotoNext == 40619
    				i_40619++
    				gotoNext = 40760
    			} else {
    				gotoNext = 40765
    			}
    			gotoNext = 40765
    		} else {
    			gotoNext = 40765
    		}
    		_ = gotoNext == 40765
    		print("GODEBUG: unknown cpu feature \"", key_40195, "\"\n")
    		gotoNext = 39869
    	} else {
    		gotoNext = 40824
    	}
    	_ = gotoNext == 40824
    	if 0 < len(options) {
    		gotoNext = 41037
    		_ = gotoNext == 41037
    		i_40836_0, o_40831 = 0, options[0]
    		gotoNext = 41038
    		_ = gotoNext == 41038
    		if i_40836_0 < len(options) {
    			gotoNext = 40850
    			_ = gotoNext == 40850
    			o_40831 = options[i_40836_0]
    			if !o_40831.Specified {
    				gotoNext = 40870
    				_ = gotoNext == 40870
    				i_40836_0++
    				gotoNext = 41038
    				gotoNext = 40891
    			} else {
    				gotoNext = 40891
    			}
    			_ = gotoNext == 40891
    			if o_40831.Enable && !*o_40831.Feature {
    				gotoNext = 40918
    				_ = gotoNext == 40918
    				print("GODEBUG: can not enable \"", o_40831.Name, "\", missing CPU support\n")
    				i_40836_0++
    				gotoNext = 41038
    				gotoNext = 41015
    			} else {
    				gotoNext = 41015
    			}
    			_ = gotoNext == 41015
    			*o_40831.Feature = o_40831.Enable
    			i_40836_0++
    			gotoNext = 41038
    		} else {
    			gotoNext = 41040
    		}
    		gotoNext = 41040
    	} else {
    		gotoNext = 41040
    	}
    	_ = gotoNext == 41040
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
