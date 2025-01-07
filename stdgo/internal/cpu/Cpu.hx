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
    	gotoNext = 8387
    	_ = gotoNext == 8387
    	_ = 0
    	fieldBreak = false
    	gotoNext = 8395
    	_ = gotoNext == 8395
    	if !fieldBreak && (env != "") {
    		gotoNext = 8409
    		_ = gotoNext == 8409
    		field_8413 = ""
    		i_8427 = indexByte(env, 44)
    		if i_8427 < 0 {
    			gotoNext = 8463
    			_ = gotoNext == 8463
    			field_8413, env = env, ""
    			gotoNext = 8541
    		} else {
    			gotoNext = 8498
    			_ = gotoNext == 8498
    			gotoNext = 8498
    			_ = gotoNext == 8498
    			field_8413, env = env[:i_8427], env[i_8427+1:]
    			_ = 0
    			gotoNext = 8541
    		}
    		_ = gotoNext == 8541
    		if len(field_8413) < 4 || field_8413[:4] != "cpu." {
    			gotoNext = 8582
    			_ = gotoNext == 8582
    			_ = 0
    			gotoNext = 8395
    			gotoNext = 8602
    		} else {
    			gotoNext = 8602
    		}
    		_ = gotoNext == 8602
    		i_8427 = indexByte(field_8413, 61)
    		if i_8427 < 0 {
    			gotoNext = 8639
    			_ = gotoNext == 8639
    			print("GODEBUG: no value specified for \"", field_8413, "\"\n")
    			_ = 0
    			gotoNext = 8395
    			gotoNext = 8721
    		} else {
    			gotoNext = 8721
    		}
    		_ = gotoNext == 8721
    		key_8721, value_8726 = field_8413[4:i_8427], field_8413[i_8427+1:]
    		gotoNext = 8801
    		_ = gotoNext == 8801
    		switch value_8726 {
    		case "on":
    			gotoNext = 8818
    			_ = gotoNext == 8818
    			enable_8787 = true
    			gotoNext = 9002
    		case "off":
    			gotoNext = 8848
    			_ = gotoNext == 8848
    			enable_8787 = false
    			gotoNext = 9002
    		default:
    			gotoNext = 8880
    			_ = gotoNext == 8880
    			print("GODEBUG: value \"", value_8726, "\" not supported for cpu option \"", key_8721, "\"\n")
    			gotoNext = 8395
    			gotoNext = 9002
    		}
    		_ = gotoNext == 9002
    		if key_8721 == "all" {
    			gotoNext = 9018
    			_ = gotoNext == 9018
    			if 0 < len(options) {
    				gotoNext = 9113
    				_ = gotoNext == 9113
    				i_9027 = 0
    				gotoNext = 9114
    				_ = gotoNext == 9114
    				if i_9027 < len(options) {
    					gotoNext = 9046
    					_ = gotoNext == 9046
    					options[i_9027].Specified = true
    					options[i_9027].Enable = enable_8787
    					i_9027++
    					gotoNext = 9114
    				} else {
    					gotoNext = 9119
    				}
    				gotoNext = 9119
    			} else {
    				gotoNext = 9119
    			}
    			_ = gotoNext == 9119
    			gotoNext = 8395
    			gotoNext = 9141
    		} else {
    			gotoNext = 9141
    		}
    		_ = gotoNext == 9141
    		if 0 < len(options) {
    			gotoNext = 9285
    			_ = gotoNext == 9285
    			i_9145 = 0
    			gotoNext = 9286
    			_ = gotoNext == 9286
    			if i_9145 < len(options) {
    				gotoNext = 9164
    				_ = gotoNext == 9164
    				if options[i_9145].Name == key_8721 {
    					gotoNext = 9195
    					_ = gotoNext == 9195
    					options[i_9145].Specified = true
    					options[i_9145].Enable = enable_8787
    					gotoNext = 8395
    					gotoNext = 9145
    				} else {
    					gotoNext = 9145
    				}
    				_ = gotoNext == 9145
    				i_9145++
    				gotoNext = 9286
    			} else {
    				gotoNext = 9291
    			}
    			gotoNext = 9291
    		} else {
    			gotoNext = 9291
    		}
    		_ = gotoNext == 9291
    		print("GODEBUG: unknown cpu feature \"", key_8721, "\"\n")
    		gotoNext = 8395
    	} else {
    		gotoNext = 9350
    	}
    	_ = gotoNext == 9350
    	if 0 < len(options) {
    		gotoNext = 9563
    		_ = gotoNext == 9563
    		i_9362_0, o_9357 = 0, options[0]
    		gotoNext = 9564
    		_ = gotoNext == 9564
    		if i_9362_0 < len(options) {
    			gotoNext = 9376
    			_ = gotoNext == 9376
    			o_9357 = options[i_9362_0]
    			if !o_9357.Specified {
    				gotoNext = 9396
    				_ = gotoNext == 9396
    				i_9362_0++
    				gotoNext = 9564
    				gotoNext = 9417
    			} else {
    				gotoNext = 9417
    			}
    			_ = gotoNext == 9417
    			if o_9357.Enable && !*o_9357.Feature {
    				gotoNext = 9444
    				_ = gotoNext == 9444
    				print("GODEBUG: can not enable \"", o_9357.Name, "\", missing CPU support\n")
    				i_9362_0++
    				gotoNext = 9564
    				gotoNext = 9541
    			} else {
    				gotoNext = 9541
    			}
    			_ = gotoNext == 9541
    			*o_9357.Feature = o_9357.Enable
    			i_9362_0++
    			gotoNext = 9564
    		} else {
    			gotoNext = 9566
    		}
    		gotoNext = 9566
    	} else {
    		gotoNext = 9566
    	}
    	_ = gotoNext == 9566
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
