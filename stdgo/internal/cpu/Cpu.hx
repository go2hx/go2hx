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
    	gotoNext = 79229
    	_ = gotoNext == 79229
    	_ = 0
    	fieldBreak = false
    	gotoNext = 79237
    	_ = gotoNext == 79237
    	if !fieldBreak && (env != "") {
    		gotoNext = 79251
    		_ = gotoNext == 79251
    		field_79255 = ""
    		i_79269 = indexByte(env, 44)
    		if i_79269 < 0 {
    			gotoNext = 79305
    			_ = gotoNext == 79305
    			field_79255, env = env, ""
    			gotoNext = 79383
    		} else {
    			gotoNext = 79340
    			_ = gotoNext == 79340
    			gotoNext = 79340
    			_ = gotoNext == 79340
    			field_79255, env = env[:i_79269], env[i_79269+1:]
    			_ = 0
    			gotoNext = 79383
    		}
    		_ = gotoNext == 79383
    		if len(field_79255) < 4 || field_79255[:4] != "cpu." {
    			gotoNext = 79424
    			_ = gotoNext == 79424
    			_ = 0
    			gotoNext = 79237
    			gotoNext = 79444
    		} else {
    			gotoNext = 79444
    		}
    		_ = gotoNext == 79444
    		i_79269 = indexByte(field_79255, 61)
    		if i_79269 < 0 {
    			gotoNext = 79481
    			_ = gotoNext == 79481
    			print("GODEBUG: no value specified for \"", field_79255, "\"\n")
    			_ = 0
    			gotoNext = 79237
    			gotoNext = 79563
    		} else {
    			gotoNext = 79563
    		}
    		_ = gotoNext == 79563
    		key_79563, value_79568 = field_79255[4:i_79269], field_79255[i_79269+1:]
    		gotoNext = 79643
    		_ = gotoNext == 79643
    		switch value_79568 {
    		case "on":
    			gotoNext = 79660
    			_ = gotoNext == 79660
    			enable_79629 = true
    			gotoNext = 79844
    		case "off":
    			gotoNext = 79690
    			_ = gotoNext == 79690
    			enable_79629 = false
    			gotoNext = 79844
    		default:
    			gotoNext = 79722
    			_ = gotoNext == 79722
    			print("GODEBUG: value \"", value_79568, "\" not supported for cpu option \"", key_79563, "\"\n")
    			gotoNext = 79237
    			gotoNext = 79844
    		}
    		_ = gotoNext == 79844
    		if key_79563 == "all" {
    			gotoNext = 79860
    			_ = gotoNext == 79860
    			if 0 < len(options) {
    				gotoNext = 79955
    				_ = gotoNext == 79955
    				i_79869 = 0
    				gotoNext = 79956
    				_ = gotoNext == 79956
    				if i_79869 < len(options) {
    					gotoNext = 79888
    					_ = gotoNext == 79888
    					options[i_79869].Specified = true
    					options[i_79869].Enable = enable_79629
    					i_79869++
    					gotoNext = 79956
    				} else {
    					gotoNext = 79961
    				}
    				gotoNext = 79961
    			} else {
    				gotoNext = 79961
    			}
    			_ = gotoNext == 79961
    			gotoNext = 79237
    			gotoNext = 79983
    		} else {
    			gotoNext = 79983
    		}
    		_ = gotoNext == 79983
    		if 0 < len(options) {
    			gotoNext = 80127
    			_ = gotoNext == 80127
    			i_79987 = 0
    			gotoNext = 80128
    			_ = gotoNext == 80128
    			if i_79987 < len(options) {
    				gotoNext = 80006
    				_ = gotoNext == 80006
    				if options[i_79987].Name == key_79563 {
    					gotoNext = 80037
    					_ = gotoNext == 80037
    					options[i_79987].Specified = true
    					options[i_79987].Enable = enable_79629
    					gotoNext = 79237
    					gotoNext = 79987
    				} else {
    					gotoNext = 79987
    				}
    				_ = gotoNext == 79987
    				i_79987++
    				gotoNext = 80128
    			} else {
    				gotoNext = 80133
    			}
    			gotoNext = 80133
    		} else {
    			gotoNext = 80133
    		}
    		_ = gotoNext == 80133
    		print("GODEBUG: unknown cpu feature \"", key_79563, "\"\n")
    		gotoNext = 79237
    	} else {
    		gotoNext = 80192
    	}
    	_ = gotoNext == 80192
    	if 0 < len(options) {
    		gotoNext = 80405
    		_ = gotoNext == 80405
    		i_80204_0, o_80199 = 0, options[0]
    		gotoNext = 80406
    		_ = gotoNext == 80406
    		if i_80204_0 < len(options) {
    			gotoNext = 80218
    			_ = gotoNext == 80218
    			o_80199 = options[i_80204_0]
    			if !o_80199.Specified {
    				gotoNext = 80238
    				_ = gotoNext == 80238
    				i_80204_0++
    				gotoNext = 80406
    				gotoNext = 80259
    			} else {
    				gotoNext = 80259
    			}
    			_ = gotoNext == 80259
    			if o_80199.Enable && !*o_80199.Feature {
    				gotoNext = 80286
    				_ = gotoNext == 80286
    				print("GODEBUG: can not enable \"", o_80199.Name, "\", missing CPU support\n")
    				i_80204_0++
    				gotoNext = 80406
    				gotoNext = 80383
    			} else {
    				gotoNext = 80383
    			}
    			_ = gotoNext == 80383
    			*o_80199.Feature = o_80199.Enable
    			i_80204_0++
    			gotoNext = 80406
    		} else {
    			gotoNext = 80408
    		}
    		gotoNext = 80408
    	} else {
    		gotoNext = 80408
    	}
    	_ = gotoNext == 80408
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
