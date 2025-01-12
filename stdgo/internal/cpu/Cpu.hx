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
    	gotoNext = 237931
    	_ = gotoNext == 237931
    	_ = 0
    	fieldBreak = false
    	gotoNext = 237939
    	_ = gotoNext == 237939
    	if !fieldBreak && (env != "") {
    		gotoNext = 237953
    		_ = gotoNext == 237953
    		field_237957 = ""
    		i_237971 = indexByte(env, 44)
    		if i_237971 < 0 {
    			gotoNext = 238007
    			_ = gotoNext == 238007
    			field_237957, env = env, ""
    			gotoNext = 238085
    		} else {
    			gotoNext = 238042
    			_ = gotoNext == 238042
    			gotoNext = 238042
    			_ = gotoNext == 238042
    			field_237957, env = env[:i_237971], env[i_237971+1:]
    			_ = 0
    			gotoNext = 238085
    		}
    		_ = gotoNext == 238085
    		if len(field_237957) < 4 || field_237957[:4] != "cpu." {
    			gotoNext = 238126
    			_ = gotoNext == 238126
    			_ = 0
    			gotoNext = 237939
    			gotoNext = 238146
    		} else {
    			gotoNext = 238146
    		}
    		_ = gotoNext == 238146
    		i_237971 = indexByte(field_237957, 61)
    		if i_237971 < 0 {
    			gotoNext = 238183
    			_ = gotoNext == 238183
    			print("GODEBUG: no value specified for \"", field_237957, "\"\n")
    			_ = 0
    			gotoNext = 237939
    			gotoNext = 238265
    		} else {
    			gotoNext = 238265
    		}
    		_ = gotoNext == 238265
    		key_238265, value_238270 = field_237957[4:i_237971], field_237957[i_237971+1:]
    		gotoNext = 238345
    		_ = gotoNext == 238345
    		switch value_238270 {
    		case "on":
    			gotoNext = 238362
    			_ = gotoNext == 238362
    			enable_238331 = true
    			gotoNext = 238546
    		case "off":
    			gotoNext = 238392
    			_ = gotoNext == 238392
    			enable_238331 = false
    			gotoNext = 238546
    		default:
    			gotoNext = 238424
    			_ = gotoNext == 238424
    			print("GODEBUG: value \"", value_238270, "\" not supported for cpu option \"", key_238265, "\"\n")
    			gotoNext = 237939
    			gotoNext = 238546
    		}
    		_ = gotoNext == 238546
    		if key_238265 == "all" {
    			gotoNext = 238562
    			_ = gotoNext == 238562
    			if 0 < len(options) {
    				gotoNext = 238657
    				_ = gotoNext == 238657
    				i_238571 = 0
    				gotoNext = 238658
    				_ = gotoNext == 238658
    				if i_238571 < len(options) {
    					gotoNext = 238590
    					_ = gotoNext == 238590
    					options[i_238571].Specified = true
    					options[i_238571].Enable = enable_238331
    					i_238571++
    					gotoNext = 238658
    				} else {
    					gotoNext = 238663
    				}
    				gotoNext = 238663
    			} else {
    				gotoNext = 238663
    			}
    			_ = gotoNext == 238663
    			gotoNext = 237939
    			gotoNext = 238685
    		} else {
    			gotoNext = 238685
    		}
    		_ = gotoNext == 238685
    		if 0 < len(options) {
    			gotoNext = 238829
    			_ = gotoNext == 238829
    			i_238689 = 0
    			gotoNext = 238830
    			_ = gotoNext == 238830
    			if i_238689 < len(options) {
    				gotoNext = 238708
    				_ = gotoNext == 238708
    				if options[i_238689].Name == key_238265 {
    					gotoNext = 238739
    					_ = gotoNext == 238739
    					options[i_238689].Specified = true
    					options[i_238689].Enable = enable_238331
    					gotoNext = 237939
    					gotoNext = 238689
    				} else {
    					gotoNext = 238689
    				}
    				_ = gotoNext == 238689
    				i_238689++
    				gotoNext = 238830
    			} else {
    				gotoNext = 238835
    			}
    			gotoNext = 238835
    		} else {
    			gotoNext = 238835
    		}
    		_ = gotoNext == 238835
    		print("GODEBUG: unknown cpu feature \"", key_238265, "\"\n")
    		gotoNext = 237939
    	} else {
    		gotoNext = 238894
    	}
    	_ = gotoNext == 238894
    	if 0 < len(options) {
    		gotoNext = 239107
    		_ = gotoNext == 239107
    		i_238906_0, o_238901 = 0, options[0]
    		gotoNext = 239108
    		_ = gotoNext == 239108
    		if i_238906_0 < len(options) {
    			gotoNext = 238920
    			_ = gotoNext == 238920
    			o_238901 = options[i_238906_0]
    			if !o_238901.Specified {
    				gotoNext = 238940
    				_ = gotoNext == 238940
    				i_238906_0++
    				gotoNext = 239108
    				gotoNext = 238961
    			} else {
    				gotoNext = 238961
    			}
    			_ = gotoNext == 238961
    			if o_238901.Enable && !*o_238901.Feature {
    				gotoNext = 238988
    				_ = gotoNext == 238988
    				print("GODEBUG: can not enable \"", o_238901.Name, "\", missing CPU support\n")
    				i_238906_0++
    				gotoNext = 239108
    				gotoNext = 239085
    			} else {
    				gotoNext = 239085
    			}
    			_ = gotoNext == 239085
    			*o_238901.Feature = o_238901.Enable
    			i_238906_0++
    			gotoNext = 239108
    		} else {
    			gotoNext = 239110
    		}
    		gotoNext = 239110
    	} else {
    		gotoNext = 239110
    	}
    	_ = gotoNext == 239110
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
