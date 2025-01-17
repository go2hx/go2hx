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
    	gotoNext = 24857
    	_ = gotoNext == 24857
    	_ = 0
    	fieldBreak = false
    	gotoNext = 24865
    	_ = gotoNext == 24865
    	if !fieldBreak && (env != "") {
    		gotoNext = 24879
    		_ = gotoNext == 24879
    		field_24883 = ""
    		i_24897 = indexByte(env, 44)
    		if i_24897 < 0 {
    			gotoNext = 24933
    			_ = gotoNext == 24933
    			field_24883, env = env, ""
    			gotoNext = 25011
    		} else {
    			gotoNext = 24968
    			_ = gotoNext == 24968
    			gotoNext = 24968
    			_ = gotoNext == 24968
    			field_24883, env = env[:i_24897], env[i_24897+1:]
    			_ = 0
    			gotoNext = 25011
    		}
    		_ = gotoNext == 25011
    		if len(field_24883) < 4 || field_24883[:4] != "cpu." {
    			gotoNext = 25052
    			_ = gotoNext == 25052
    			_ = 0
    			gotoNext = 24865
    			gotoNext = 25072
    		} else {
    			gotoNext = 25072
    		}
    		_ = gotoNext == 25072
    		i_24897 = indexByte(field_24883, 61)
    		if i_24897 < 0 {
    			gotoNext = 25109
    			_ = gotoNext == 25109
    			print("GODEBUG: no value specified for \"", field_24883, "\"\n")
    			_ = 0
    			gotoNext = 24865
    			gotoNext = 25191
    		} else {
    			gotoNext = 25191
    		}
    		_ = gotoNext == 25191
    		key_25191, value_25196 = field_24883[4:i_24897], field_24883[i_24897+1:]
    		gotoNext = 25271
    		_ = gotoNext == 25271
    		switch value_25196 {
    		case "on":
    			gotoNext = 25288
    			_ = gotoNext == 25288
    			enable_25257 = true
    			gotoNext = 25472
    		case "off":
    			gotoNext = 25318
    			_ = gotoNext == 25318
    			enable_25257 = false
    			gotoNext = 25472
    		default:
    			gotoNext = 25350
    			_ = gotoNext == 25350
    			print("GODEBUG: value \"", value_25196, "\" not supported for cpu option \"", key_25191, "\"\n")
    			gotoNext = 24865
    			gotoNext = 25472
    		}
    		_ = gotoNext == 25472
    		if key_25191 == "all" {
    			gotoNext = 25488
    			_ = gotoNext == 25488
    			if 0 < len(options) {
    				gotoNext = 25583
    				_ = gotoNext == 25583
    				i_25497 = 0
    				gotoNext = 25584
    				_ = gotoNext == 25584
    				if i_25497 < len(options) {
    					gotoNext = 25516
    					_ = gotoNext == 25516
    					options[i_25497].Specified = true
    					options[i_25497].Enable = enable_25257
    					i_25497++
    					gotoNext = 25584
    				} else {
    					gotoNext = 25589
    				}
    				gotoNext = 25589
    			} else {
    				gotoNext = 25589
    			}
    			_ = gotoNext == 25589
    			gotoNext = 24865
    			gotoNext = 25611
    		} else {
    			gotoNext = 25611
    		}
    		_ = gotoNext == 25611
    		if 0 < len(options) {
    			gotoNext = 25755
    			_ = gotoNext == 25755
    			i_25615 = 0
    			gotoNext = 25756
    			_ = gotoNext == 25756
    			if i_25615 < len(options) {
    				gotoNext = 25634
    				_ = gotoNext == 25634
    				if options[i_25615].Name == key_25191 {
    					gotoNext = 25665
    					_ = gotoNext == 25665
    					options[i_25615].Specified = true
    					options[i_25615].Enable = enable_25257
    					gotoNext = 24865
    					gotoNext = 25615
    				} else {
    					gotoNext = 25615
    				}
    				_ = gotoNext == 25615
    				i_25615++
    				gotoNext = 25756
    			} else {
    				gotoNext = 25761
    			}
    			gotoNext = 25761
    		} else {
    			gotoNext = 25761
    		}
    		_ = gotoNext == 25761
    		print("GODEBUG: unknown cpu feature \"", key_25191, "\"\n")
    		gotoNext = 24865
    	} else {
    		gotoNext = 25820
    	}
    	_ = gotoNext == 25820
    	if 0 < len(options) {
    		gotoNext = 26033
    		_ = gotoNext == 26033
    		i_25832_0, o_25827 = 0, options[0]
    		gotoNext = 26034
    		_ = gotoNext == 26034
    		if i_25832_0 < len(options) {
    			gotoNext = 25846
    			_ = gotoNext == 25846
    			o_25827 = options[i_25832_0]
    			if !o_25827.Specified {
    				gotoNext = 25866
    				_ = gotoNext == 25866
    				i_25832_0++
    				gotoNext = 26034
    				gotoNext = 25887
    			} else {
    				gotoNext = 25887
    			}
    			_ = gotoNext == 25887
    			if o_25827.Enable && !*o_25827.Feature {
    				gotoNext = 25914
    				_ = gotoNext == 25914
    				print("GODEBUG: can not enable \"", o_25827.Name, "\", missing CPU support\n")
    				i_25832_0++
    				gotoNext = 26034
    				gotoNext = 26011
    			} else {
    				gotoNext = 26011
    			}
    			_ = gotoNext == 26011
    			*o_25827.Feature = o_25827.Enable
    			i_25832_0++
    			gotoNext = 26034
    		} else {
    			gotoNext = 26036
    		}
    		gotoNext = 26036
    	} else {
    		gotoNext = 26036
    	}
    	_ = gotoNext == 26036
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
