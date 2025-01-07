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
    	gotoNext = 38235
    	_ = gotoNext == 38235
    	_ = 0
    	fieldBreak = false
    	gotoNext = 38243
    	_ = gotoNext == 38243
    	if !fieldBreak && (env != "") {
    		gotoNext = 38257
    		_ = gotoNext == 38257
    		field_38261 = ""
    		i_38275 = indexByte(env, 44)
    		if i_38275 < 0 {
    			gotoNext = 38311
    			_ = gotoNext == 38311
    			field_38261, env = env, ""
    			gotoNext = 38389
    		} else {
    			gotoNext = 38346
    			_ = gotoNext == 38346
    			gotoNext = 38346
    			_ = gotoNext == 38346
    			field_38261, env = env[:i_38275], env[i_38275+1:]
    			_ = 0
    			gotoNext = 38389
    		}
    		_ = gotoNext == 38389
    		if len(field_38261) < 4 || field_38261[:4] != "cpu." {
    			gotoNext = 38430
    			_ = gotoNext == 38430
    			_ = 0
    			gotoNext = 38243
    			gotoNext = 38450
    		} else {
    			gotoNext = 38450
    		}
    		_ = gotoNext == 38450
    		i_38275 = indexByte(field_38261, 61)
    		if i_38275 < 0 {
    			gotoNext = 38487
    			_ = gotoNext == 38487
    			print("GODEBUG: no value specified for \"", field_38261, "\"\n")
    			_ = 0
    			gotoNext = 38243
    			gotoNext = 38569
    		} else {
    			gotoNext = 38569
    		}
    		_ = gotoNext == 38569
    		key_38569, value_38574 = field_38261[4:i_38275], field_38261[i_38275+1:]
    		gotoNext = 38649
    		_ = gotoNext == 38649
    		switch value_38574 {
    		case "on":
    			gotoNext = 38666
    			_ = gotoNext == 38666
    			enable_38635 = true
    			gotoNext = 38850
    		case "off":
    			gotoNext = 38696
    			_ = gotoNext == 38696
    			enable_38635 = false
    			gotoNext = 38850
    		default:
    			gotoNext = 38728
    			_ = gotoNext == 38728
    			print("GODEBUG: value \"", value_38574, "\" not supported for cpu option \"", key_38569, "\"\n")
    			gotoNext = 38243
    			gotoNext = 38850
    		}
    		_ = gotoNext == 38850
    		if key_38569 == "all" {
    			gotoNext = 38866
    			_ = gotoNext == 38866
    			if 0 < len(options) {
    				gotoNext = 38961
    				_ = gotoNext == 38961
    				i_38875 = 0
    				gotoNext = 38962
    				_ = gotoNext == 38962
    				if i_38875 < len(options) {
    					gotoNext = 38894
    					_ = gotoNext == 38894
    					options[i_38875].Specified = true
    					options[i_38875].Enable = enable_38635
    					i_38875++
    					gotoNext = 38962
    				} else {
    					gotoNext = 38967
    				}
    				gotoNext = 38967
    			} else {
    				gotoNext = 38967
    			}
    			_ = gotoNext == 38967
    			gotoNext = 38243
    			gotoNext = 38989
    		} else {
    			gotoNext = 38989
    		}
    		_ = gotoNext == 38989
    		if 0 < len(options) {
    			gotoNext = 39133
    			_ = gotoNext == 39133
    			i_38993 = 0
    			gotoNext = 39134
    			_ = gotoNext == 39134
    			if i_38993 < len(options) {
    				gotoNext = 39012
    				_ = gotoNext == 39012
    				if options[i_38993].Name == key_38569 {
    					gotoNext = 39043
    					_ = gotoNext == 39043
    					options[i_38993].Specified = true
    					options[i_38993].Enable = enable_38635
    					gotoNext = 38243
    					gotoNext = 38993
    				} else {
    					gotoNext = 38993
    				}
    				_ = gotoNext == 38993
    				i_38993++
    				gotoNext = 39134
    			} else {
    				gotoNext = 39139
    			}
    			gotoNext = 39139
    		} else {
    			gotoNext = 39139
    		}
    		_ = gotoNext == 39139
    		print("GODEBUG: unknown cpu feature \"", key_38569, "\"\n")
    		gotoNext = 38243
    	} else {
    		gotoNext = 39198
    	}
    	_ = gotoNext == 39198
    	if 0 < len(options) {
    		gotoNext = 39411
    		_ = gotoNext == 39411
    		i_39210_0, o_39205 = 0, options[0]
    		gotoNext = 39412
    		_ = gotoNext == 39412
    		if i_39210_0 < len(options) {
    			gotoNext = 39224
    			_ = gotoNext == 39224
    			o_39205 = options[i_39210_0]
    			if !o_39205.Specified {
    				gotoNext = 39244
    				_ = gotoNext == 39244
    				i_39210_0++
    				gotoNext = 39412
    				gotoNext = 39265
    			} else {
    				gotoNext = 39265
    			}
    			_ = gotoNext == 39265
    			if o_39205.Enable && !*o_39205.Feature {
    				gotoNext = 39292
    				_ = gotoNext == 39292
    				print("GODEBUG: can not enable \"", o_39205.Name, "\", missing CPU support\n")
    				i_39210_0++
    				gotoNext = 39412
    				gotoNext = 39389
    			} else {
    				gotoNext = 39389
    			}
    			_ = gotoNext == 39389
    			*o_39205.Feature = o_39205.Enable
    			i_39210_0++
    			gotoNext = 39412
    		} else {
    			gotoNext = 39414
    		}
    		gotoNext = 39414
    	} else {
    		gotoNext = 39414
    	}
    	_ = gotoNext == 39414
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
