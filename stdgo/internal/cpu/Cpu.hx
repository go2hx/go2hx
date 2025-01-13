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
    	gotoNext = 261749
    	_ = gotoNext == 261749
    	_ = 0
    	fieldBreak = false
    	gotoNext = 261757
    	_ = gotoNext == 261757
    	if !fieldBreak && (env != "") {
    		gotoNext = 261771
    		_ = gotoNext == 261771
    		field_261775 = ""
    		i_261789 = indexByte(env, 44)
    		if i_261789 < 0 {
    			gotoNext = 261825
    			_ = gotoNext == 261825
    			field_261775, env = env, ""
    			gotoNext = 261903
    		} else {
    			gotoNext = 261860
    			_ = gotoNext == 261860
    			gotoNext = 261860
    			_ = gotoNext == 261860
    			field_261775, env = env[:i_261789], env[i_261789+1:]
    			_ = 0
    			gotoNext = 261903
    		}
    		_ = gotoNext == 261903
    		if len(field_261775) < 4 || field_261775[:4] != "cpu." {
    			gotoNext = 261944
    			_ = gotoNext == 261944
    			_ = 0
    			gotoNext = 261757
    			gotoNext = 261964
    		} else {
    			gotoNext = 261964
    		}
    		_ = gotoNext == 261964
    		i_261789 = indexByte(field_261775, 61)
    		if i_261789 < 0 {
    			gotoNext = 262001
    			_ = gotoNext == 262001
    			print("GODEBUG: no value specified for \"", field_261775, "\"\n")
    			_ = 0
    			gotoNext = 261757
    			gotoNext = 262083
    		} else {
    			gotoNext = 262083
    		}
    		_ = gotoNext == 262083
    		key_262083, value_262088 = field_261775[4:i_261789], field_261775[i_261789+1:]
    		gotoNext = 262163
    		_ = gotoNext == 262163
    		switch value_262088 {
    		case "on":
    			gotoNext = 262180
    			_ = gotoNext == 262180
    			enable_262149 = true
    			gotoNext = 262364
    		case "off":
    			gotoNext = 262210
    			_ = gotoNext == 262210
    			enable_262149 = false
    			gotoNext = 262364
    		default:
    			gotoNext = 262242
    			_ = gotoNext == 262242
    			print("GODEBUG: value \"", value_262088, "\" not supported for cpu option \"", key_262083, "\"\n")
    			gotoNext = 261757
    			gotoNext = 262364
    		}
    		_ = gotoNext == 262364
    		if key_262083 == "all" {
    			gotoNext = 262380
    			_ = gotoNext == 262380
    			if 0 < len(options) {
    				gotoNext = 262475
    				_ = gotoNext == 262475
    				i_262389 = 0
    				gotoNext = 262476
    				_ = gotoNext == 262476
    				if i_262389 < len(options) {
    					gotoNext = 262408
    					_ = gotoNext == 262408
    					options[i_262389].Specified = true
    					options[i_262389].Enable = enable_262149
    					i_262389++
    					gotoNext = 262476
    				} else {
    					gotoNext = 262481
    				}
    				gotoNext = 262481
    			} else {
    				gotoNext = 262481
    			}
    			_ = gotoNext == 262481
    			gotoNext = 261757
    			gotoNext = 262503
    		} else {
    			gotoNext = 262503
    		}
    		_ = gotoNext == 262503
    		if 0 < len(options) {
    			gotoNext = 262647
    			_ = gotoNext == 262647
    			i_262507 = 0
    			gotoNext = 262648
    			_ = gotoNext == 262648
    			if i_262507 < len(options) {
    				gotoNext = 262526
    				_ = gotoNext == 262526
    				if options[i_262507].Name == key_262083 {
    					gotoNext = 262557
    					_ = gotoNext == 262557
    					options[i_262507].Specified = true
    					options[i_262507].Enable = enable_262149
    					gotoNext = 261757
    					gotoNext = 262507
    				} else {
    					gotoNext = 262507
    				}
    				_ = gotoNext == 262507
    				i_262507++
    				gotoNext = 262648
    			} else {
    				gotoNext = 262653
    			}
    			gotoNext = 262653
    		} else {
    			gotoNext = 262653
    		}
    		_ = gotoNext == 262653
    		print("GODEBUG: unknown cpu feature \"", key_262083, "\"\n")
    		gotoNext = 261757
    	} else {
    		gotoNext = 262712
    	}
    	_ = gotoNext == 262712
    	if 0 < len(options) {
    		gotoNext = 262925
    		_ = gotoNext == 262925
    		i_262724_0, o_262719 = 0, options[0]
    		gotoNext = 262926
    		_ = gotoNext == 262926
    		if i_262724_0 < len(options) {
    			gotoNext = 262738
    			_ = gotoNext == 262738
    			o_262719 = options[i_262724_0]
    			if !o_262719.Specified {
    				gotoNext = 262758
    				_ = gotoNext == 262758
    				i_262724_0++
    				gotoNext = 262926
    				gotoNext = 262779
    			} else {
    				gotoNext = 262779
    			}
    			_ = gotoNext == 262779
    			if o_262719.Enable && !*o_262719.Feature {
    				gotoNext = 262806
    				_ = gotoNext == 262806
    				print("GODEBUG: can not enable \"", o_262719.Name, "\", missing CPU support\n")
    				i_262724_0++
    				gotoNext = 262926
    				gotoNext = 262903
    			} else {
    				gotoNext = 262903
    			}
    			_ = gotoNext == 262903
    			*o_262719.Feature = o_262719.Enable
    			i_262724_0++
    			gotoNext = 262926
    		} else {
    			gotoNext = 262928
    		}
    		gotoNext = 262928
    	} else {
    		gotoNext = 262928
    	}
    	_ = gotoNext == 262928
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
