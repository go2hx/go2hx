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
    	gotoNext = 245966
    	_ = gotoNext == 245966
    	_ = 0
    	fieldBreak = false
    	gotoNext = 245974
    	_ = gotoNext == 245974
    	if !fieldBreak && (env != "") {
    		gotoNext = 245988
    		_ = gotoNext == 245988
    		field_245992 = ""
    		i_246006 = indexByte(env, 44)
    		if i_246006 < 0 {
    			gotoNext = 246042
    			_ = gotoNext == 246042
    			field_245992, env = env, ""
    			gotoNext = 246120
    		} else {
    			gotoNext = 246077
    			_ = gotoNext == 246077
    			gotoNext = 246077
    			_ = gotoNext == 246077
    			field_245992, env = env[:i_246006], env[i_246006+1:]
    			_ = 0
    			gotoNext = 246120
    		}
    		_ = gotoNext == 246120
    		if len(field_245992) < 4 || field_245992[:4] != "cpu." {
    			gotoNext = 246161
    			_ = gotoNext == 246161
    			_ = 0
    			gotoNext = 245974
    			gotoNext = 246181
    		} else {
    			gotoNext = 246181
    		}
    		_ = gotoNext == 246181
    		i_246006 = indexByte(field_245992, 61)
    		if i_246006 < 0 {
    			gotoNext = 246218
    			_ = gotoNext == 246218
    			print("GODEBUG: no value specified for \"", field_245992, "\"\n")
    			_ = 0
    			gotoNext = 245974
    			gotoNext = 246300
    		} else {
    			gotoNext = 246300
    		}
    		_ = gotoNext == 246300
    		key_246300, value_246305 = field_245992[4:i_246006], field_245992[i_246006+1:]
    		gotoNext = 246380
    		_ = gotoNext == 246380
    		switch value_246305 {
    		case "on":
    			gotoNext = 246397
    			_ = gotoNext == 246397
    			enable_246366 = true
    			gotoNext = 246581
    		case "off":
    			gotoNext = 246427
    			_ = gotoNext == 246427
    			enable_246366 = false
    			gotoNext = 246581
    		default:
    			gotoNext = 246459
    			_ = gotoNext == 246459
    			print("GODEBUG: value \"", value_246305, "\" not supported for cpu option \"", key_246300, "\"\n")
    			gotoNext = 245974
    			gotoNext = 246581
    		}
    		_ = gotoNext == 246581
    		if key_246300 == "all" {
    			gotoNext = 246597
    			_ = gotoNext == 246597
    			if 0 < len(options) {
    				gotoNext = 246692
    				_ = gotoNext == 246692
    				i_246606 = 0
    				gotoNext = 246693
    				_ = gotoNext == 246693
    				if i_246606 < len(options) {
    					gotoNext = 246625
    					_ = gotoNext == 246625
    					options[i_246606].Specified = true
    					options[i_246606].Enable = enable_246366
    					i_246606++
    					gotoNext = 246693
    				} else {
    					gotoNext = 246698
    				}
    				gotoNext = 246698
    			} else {
    				gotoNext = 246698
    			}
    			_ = gotoNext == 246698
    			gotoNext = 245974
    			gotoNext = 246720
    		} else {
    			gotoNext = 246720
    		}
    		_ = gotoNext == 246720
    		if 0 < len(options) {
    			gotoNext = 246864
    			_ = gotoNext == 246864
    			i_246724 = 0
    			gotoNext = 246865
    			_ = gotoNext == 246865
    			if i_246724 < len(options) {
    				gotoNext = 246743
    				_ = gotoNext == 246743
    				if options[i_246724].Name == key_246300 {
    					gotoNext = 246774
    					_ = gotoNext == 246774
    					options[i_246724].Specified = true
    					options[i_246724].Enable = enable_246366
    					gotoNext = 245974
    					gotoNext = 246724
    				} else {
    					gotoNext = 246724
    				}
    				_ = gotoNext == 246724
    				i_246724++
    				gotoNext = 246865
    			} else {
    				gotoNext = 246870
    			}
    			gotoNext = 246870
    		} else {
    			gotoNext = 246870
    		}
    		_ = gotoNext == 246870
    		print("GODEBUG: unknown cpu feature \"", key_246300, "\"\n")
    		gotoNext = 245974
    	} else {
    		gotoNext = 246929
    	}
    	_ = gotoNext == 246929
    	if 0 < len(options) {
    		gotoNext = 247142
    		_ = gotoNext == 247142
    		i_246941_0, o_246936 = 0, options[0]
    		gotoNext = 247143
    		_ = gotoNext == 247143
    		if i_246941_0 < len(options) {
    			gotoNext = 246955
    			_ = gotoNext == 246955
    			o_246936 = options[i_246941_0]
    			if !o_246936.Specified {
    				gotoNext = 246975
    				_ = gotoNext == 246975
    				i_246941_0++
    				gotoNext = 247143
    				gotoNext = 246996
    			} else {
    				gotoNext = 246996
    			}
    			_ = gotoNext == 246996
    			if o_246936.Enable && !*o_246936.Feature {
    				gotoNext = 247023
    				_ = gotoNext == 247023
    				print("GODEBUG: can not enable \"", o_246936.Name, "\", missing CPU support\n")
    				i_246941_0++
    				gotoNext = 247143
    				gotoNext = 247120
    			} else {
    				gotoNext = 247120
    			}
    			_ = gotoNext == 247120
    			*o_246936.Feature = o_246936.Enable
    			i_246941_0++
    			gotoNext = 247143
    		} else {
    			gotoNext = 247145
    		}
    		gotoNext = 247145
    	} else {
    		gotoNext = 247145
    	}
    	_ = gotoNext == 247145
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
