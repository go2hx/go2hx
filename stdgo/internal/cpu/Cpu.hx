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
    	gotoNext = 239678
    	_ = gotoNext == 239678
    	_ = 0
    	fieldBreak = false
    	gotoNext = 239686
    	_ = gotoNext == 239686
    	if !fieldBreak && (env != "") {
    		gotoNext = 239700
    		_ = gotoNext == 239700
    		field_239704 = ""
    		i_239718 = indexByte(env, 44)
    		if i_239718 < 0 {
    			gotoNext = 239754
    			_ = gotoNext == 239754
    			field_239704, env = env, ""
    			gotoNext = 239832
    		} else {
    			gotoNext = 239789
    			_ = gotoNext == 239789
    			gotoNext = 239789
    			_ = gotoNext == 239789
    			field_239704, env = env[:i_239718], env[i_239718+1:]
    			_ = 0
    			gotoNext = 239832
    		}
    		_ = gotoNext == 239832
    		if len(field_239704) < 4 || field_239704[:4] != "cpu." {
    			gotoNext = 239873
    			_ = gotoNext == 239873
    			_ = 0
    			gotoNext = 239686
    			gotoNext = 239893
    		} else {
    			gotoNext = 239893
    		}
    		_ = gotoNext == 239893
    		i_239718 = indexByte(field_239704, 61)
    		if i_239718 < 0 {
    			gotoNext = 239930
    			_ = gotoNext == 239930
    			print("GODEBUG: no value specified for \"", field_239704, "\"\n")
    			_ = 0
    			gotoNext = 239686
    			gotoNext = 240012
    		} else {
    			gotoNext = 240012
    		}
    		_ = gotoNext == 240012
    		key_240012, value_240017 = field_239704[4:i_239718], field_239704[i_239718+1:]
    		gotoNext = 240092
    		_ = gotoNext == 240092
    		switch value_240017 {
    		case "on":
    			gotoNext = 240109
    			_ = gotoNext == 240109
    			enable_240078 = true
    			gotoNext = 240293
    		case "off":
    			gotoNext = 240139
    			_ = gotoNext == 240139
    			enable_240078 = false
    			gotoNext = 240293
    		default:
    			gotoNext = 240171
    			_ = gotoNext == 240171
    			print("GODEBUG: value \"", value_240017, "\" not supported for cpu option \"", key_240012, "\"\n")
    			gotoNext = 239686
    			gotoNext = 240293
    		}
    		_ = gotoNext == 240293
    		if key_240012 == "all" {
    			gotoNext = 240309
    			_ = gotoNext == 240309
    			if 0 < len(options) {
    				gotoNext = 240404
    				_ = gotoNext == 240404
    				i_240318 = 0
    				gotoNext = 240405
    				_ = gotoNext == 240405
    				if i_240318 < len(options) {
    					gotoNext = 240337
    					_ = gotoNext == 240337
    					options[i_240318].Specified = true
    					options[i_240318].Enable = enable_240078
    					i_240318++
    					gotoNext = 240405
    				} else {
    					gotoNext = 240410
    				}
    				gotoNext = 240410
    			} else {
    				gotoNext = 240410
    			}
    			_ = gotoNext == 240410
    			gotoNext = 239686
    			gotoNext = 240432
    		} else {
    			gotoNext = 240432
    		}
    		_ = gotoNext == 240432
    		if 0 < len(options) {
    			gotoNext = 240576
    			_ = gotoNext == 240576
    			i_240436 = 0
    			gotoNext = 240577
    			_ = gotoNext == 240577
    			if i_240436 < len(options) {
    				gotoNext = 240455
    				_ = gotoNext == 240455
    				if options[i_240436].Name == key_240012 {
    					gotoNext = 240486
    					_ = gotoNext == 240486
    					options[i_240436].Specified = true
    					options[i_240436].Enable = enable_240078
    					gotoNext = 239686
    					gotoNext = 240436
    				} else {
    					gotoNext = 240436
    				}
    				_ = gotoNext == 240436
    				i_240436++
    				gotoNext = 240577
    			} else {
    				gotoNext = 240582
    			}
    			gotoNext = 240582
    		} else {
    			gotoNext = 240582
    		}
    		_ = gotoNext == 240582
    		print("GODEBUG: unknown cpu feature \"", key_240012, "\"\n")
    		gotoNext = 239686
    	} else {
    		gotoNext = 240641
    	}
    	_ = gotoNext == 240641
    	if 0 < len(options) {
    		gotoNext = 240854
    		_ = gotoNext == 240854
    		i_240653_0, o_240648 = 0, options[0]
    		gotoNext = 240855
    		_ = gotoNext == 240855
    		if i_240653_0 < len(options) {
    			gotoNext = 240667
    			_ = gotoNext == 240667
    			o_240648 = options[i_240653_0]
    			if !o_240648.Specified {
    				gotoNext = 240687
    				_ = gotoNext == 240687
    				i_240653_0++
    				gotoNext = 240855
    				gotoNext = 240708
    			} else {
    				gotoNext = 240708
    			}
    			_ = gotoNext == 240708
    			if o_240648.Enable && !*o_240648.Feature {
    				gotoNext = 240735
    				_ = gotoNext == 240735
    				print("GODEBUG: can not enable \"", o_240648.Name, "\", missing CPU support\n")
    				i_240653_0++
    				gotoNext = 240855
    				gotoNext = 240832
    			} else {
    				gotoNext = 240832
    			}
    			_ = gotoNext == 240832
    			*o_240648.Feature = o_240648.Enable
    			i_240653_0++
    			gotoNext = 240855
    		} else {
    			gotoNext = 240857
    		}
    		gotoNext = 240857
    	} else {
    		gotoNext = 240857
    	}
    	_ = gotoNext == 240857
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
