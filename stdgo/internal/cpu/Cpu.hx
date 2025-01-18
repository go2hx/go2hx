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
    	gotoNext = 217094
    	_ = gotoNext == 217094
    	_ = 0
    	fieldBreak = false
    	gotoNext = 217102
    	_ = gotoNext == 217102
    	if !fieldBreak && (env != "") {
    		gotoNext = 217116
    		_ = gotoNext == 217116
    		field_217120 = ""
    		i_217134 = indexByte(env, 44)
    		if i_217134 < 0 {
    			gotoNext = 217170
    			_ = gotoNext == 217170
    			field_217120, env = env, ""
    			gotoNext = 217248
    		} else {
    			gotoNext = 217205
    			_ = gotoNext == 217205
    			gotoNext = 217205
    			_ = gotoNext == 217205
    			field_217120, env = env[:i_217134], env[i_217134+1:]
    			_ = 0
    			gotoNext = 217248
    		}
    		_ = gotoNext == 217248
    		if len(field_217120) < 4 || field_217120[:4] != "cpu." {
    			gotoNext = 217289
    			_ = gotoNext == 217289
    			_ = 0
    			gotoNext = 217102
    			gotoNext = 217309
    		} else {
    			gotoNext = 217309
    		}
    		_ = gotoNext == 217309
    		i_217134 = indexByte(field_217120, 61)
    		if i_217134 < 0 {
    			gotoNext = 217346
    			_ = gotoNext == 217346
    			print("GODEBUG: no value specified for \"", field_217120, "\"\n")
    			_ = 0
    			gotoNext = 217102
    			gotoNext = 217428
    		} else {
    			gotoNext = 217428
    		}
    		_ = gotoNext == 217428
    		key_217428, value_217433 = field_217120[4:i_217134], field_217120[i_217134+1:]
    		gotoNext = 217508
    		_ = gotoNext == 217508
    		switch value_217433 {
    		case "on":
    			gotoNext = 217525
    			_ = gotoNext == 217525
    			enable_217494 = true
    			gotoNext = 217709
    		case "off":
    			gotoNext = 217555
    			_ = gotoNext == 217555
    			enable_217494 = false
    			gotoNext = 217709
    		default:
    			gotoNext = 217587
    			_ = gotoNext == 217587
    			print("GODEBUG: value \"", value_217433, "\" not supported for cpu option \"", key_217428, "\"\n")
    			gotoNext = 217102
    			gotoNext = 217709
    		}
    		_ = gotoNext == 217709
    		if key_217428 == "all" {
    			gotoNext = 217725
    			_ = gotoNext == 217725
    			if 0 < len(options) {
    				gotoNext = 217820
    				_ = gotoNext == 217820
    				i_217734 = 0
    				gotoNext = 217821
    				_ = gotoNext == 217821
    				if i_217734 < len(options) {
    					gotoNext = 217753
    					_ = gotoNext == 217753
    					options[i_217734].Specified = true
    					options[i_217734].Enable = enable_217494
    					i_217734++
    					gotoNext = 217821
    				} else {
    					gotoNext = 217826
    				}
    				gotoNext = 217826
    			} else {
    				gotoNext = 217826
    			}
    			_ = gotoNext == 217826
    			gotoNext = 217102
    			gotoNext = 217848
    		} else {
    			gotoNext = 217848
    		}
    		_ = gotoNext == 217848
    		if 0 < len(options) {
    			gotoNext = 217992
    			_ = gotoNext == 217992
    			i_217852 = 0
    			gotoNext = 217993
    			_ = gotoNext == 217993
    			if i_217852 < len(options) {
    				gotoNext = 217871
    				_ = gotoNext == 217871
    				if options[i_217852].Name == key_217428 {
    					gotoNext = 217902
    					_ = gotoNext == 217902
    					options[i_217852].Specified = true
    					options[i_217852].Enable = enable_217494
    					gotoNext = 217102
    					gotoNext = 217852
    				} else {
    					gotoNext = 217852
    				}
    				_ = gotoNext == 217852
    				i_217852++
    				gotoNext = 217993
    			} else {
    				gotoNext = 217998
    			}
    			gotoNext = 217998
    		} else {
    			gotoNext = 217998
    		}
    		_ = gotoNext == 217998
    		print("GODEBUG: unknown cpu feature \"", key_217428, "\"\n")
    		gotoNext = 217102
    	} else {
    		gotoNext = 218057
    	}
    	_ = gotoNext == 218057
    	if 0 < len(options) {
    		gotoNext = 218270
    		_ = gotoNext == 218270
    		i_218069_0, o_218064 = 0, options[0]
    		gotoNext = 218271
    		_ = gotoNext == 218271
    		if i_218069_0 < len(options) {
    			gotoNext = 218083
    			_ = gotoNext == 218083
    			o_218064 = options[i_218069_0]
    			if !o_218064.Specified {
    				gotoNext = 218103
    				_ = gotoNext == 218103
    				i_218069_0++
    				gotoNext = 218271
    				gotoNext = 218124
    			} else {
    				gotoNext = 218124
    			}
    			_ = gotoNext == 218124
    			if o_218064.Enable && !*o_218064.Feature {
    				gotoNext = 218151
    				_ = gotoNext == 218151
    				print("GODEBUG: can not enable \"", o_218064.Name, "\", missing CPU support\n")
    				i_218069_0++
    				gotoNext = 218271
    				gotoNext = 218248
    			} else {
    				gotoNext = 218248
    			}
    			_ = gotoNext == 218248
    			*o_218064.Feature = o_218064.Enable
    			i_218069_0++
    			gotoNext = 218271
    		} else {
    			gotoNext = 218273
    		}
    		gotoNext = 218273
    	} else {
    		gotoNext = 218273
    	}
    	_ = gotoNext == 218273
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
