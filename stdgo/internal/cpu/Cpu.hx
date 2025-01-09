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
    	gotoNext = 30206
    	_ = gotoNext == 30206
    	_ = 0
    	fieldBreak = false
    	gotoNext = 30214
    	_ = gotoNext == 30214
    	if !fieldBreak && (env != "") {
    		gotoNext = 30228
    		_ = gotoNext == 30228
    		field_30232 = ""
    		i_30246 = indexByte(env, 44)
    		if i_30246 < 0 {
    			gotoNext = 30282
    			_ = gotoNext == 30282
    			field_30232, env = env, ""
    			gotoNext = 30360
    		} else {
    			gotoNext = 30317
    			_ = gotoNext == 30317
    			gotoNext = 30317
    			_ = gotoNext == 30317
    			field_30232, env = env[:i_30246], env[i_30246+1:]
    			_ = 0
    			gotoNext = 30360
    		}
    		_ = gotoNext == 30360
    		if len(field_30232) < 4 || field_30232[:4] != "cpu." {
    			gotoNext = 30401
    			_ = gotoNext == 30401
    			_ = 0
    			gotoNext = 30214
    			gotoNext = 30421
    		} else {
    			gotoNext = 30421
    		}
    		_ = gotoNext == 30421
    		i_30246 = indexByte(field_30232, 61)
    		if i_30246 < 0 {
    			gotoNext = 30458
    			_ = gotoNext == 30458
    			print("GODEBUG: no value specified for \"", field_30232, "\"\n")
    			_ = 0
    			gotoNext = 30214
    			gotoNext = 30540
    		} else {
    			gotoNext = 30540
    		}
    		_ = gotoNext == 30540
    		key_30540, value_30545 = field_30232[4:i_30246], field_30232[i_30246+1:]
    		gotoNext = 30620
    		_ = gotoNext == 30620
    		switch value_30545 {
    		case "on":
    			gotoNext = 30637
    			_ = gotoNext == 30637
    			enable_30606 = true
    			gotoNext = 30821
    		case "off":
    			gotoNext = 30667
    			_ = gotoNext == 30667
    			enable_30606 = false
    			gotoNext = 30821
    		default:
    			gotoNext = 30699
    			_ = gotoNext == 30699
    			print("GODEBUG: value \"", value_30545, "\" not supported for cpu option \"", key_30540, "\"\n")
    			gotoNext = 30214
    			gotoNext = 30821
    		}
    		_ = gotoNext == 30821
    		if key_30540 == "all" {
    			gotoNext = 30837
    			_ = gotoNext == 30837
    			if 0 < len(options) {
    				gotoNext = 30932
    				_ = gotoNext == 30932
    				i_30846 = 0
    				gotoNext = 30933
    				_ = gotoNext == 30933
    				if i_30846 < len(options) {
    					gotoNext = 30865
    					_ = gotoNext == 30865
    					options[i_30846].Specified = true
    					options[i_30846].Enable = enable_30606
    					i_30846++
    					gotoNext = 30933
    				} else {
    					gotoNext = 30938
    				}
    				gotoNext = 30938
    			} else {
    				gotoNext = 30938
    			}
    			_ = gotoNext == 30938
    			gotoNext = 30214
    			gotoNext = 30960
    		} else {
    			gotoNext = 30960
    		}
    		_ = gotoNext == 30960
    		if 0 < len(options) {
    			gotoNext = 31104
    			_ = gotoNext == 31104
    			i_30964 = 0
    			gotoNext = 31105
    			_ = gotoNext == 31105
    			if i_30964 < len(options) {
    				gotoNext = 30983
    				_ = gotoNext == 30983
    				if options[i_30964].Name == key_30540 {
    					gotoNext = 31014
    					_ = gotoNext == 31014
    					options[i_30964].Specified = true
    					options[i_30964].Enable = enable_30606
    					gotoNext = 30214
    					gotoNext = 30964
    				} else {
    					gotoNext = 30964
    				}
    				_ = gotoNext == 30964
    				i_30964++
    				gotoNext = 31105
    			} else {
    				gotoNext = 31110
    			}
    			gotoNext = 31110
    		} else {
    			gotoNext = 31110
    		}
    		_ = gotoNext == 31110
    		print("GODEBUG: unknown cpu feature \"", key_30540, "\"\n")
    		gotoNext = 30214
    	} else {
    		gotoNext = 31169
    	}
    	_ = gotoNext == 31169
    	if 0 < len(options) {
    		gotoNext = 31382
    		_ = gotoNext == 31382
    		i_31181_0, o_31176 = 0, options[0]
    		gotoNext = 31383
    		_ = gotoNext == 31383
    		if i_31181_0 < len(options) {
    			gotoNext = 31195
    			_ = gotoNext == 31195
    			o_31176 = options[i_31181_0]
    			if !o_31176.Specified {
    				gotoNext = 31215
    				_ = gotoNext == 31215
    				i_31181_0++
    				gotoNext = 31383
    				gotoNext = 31236
    			} else {
    				gotoNext = 31236
    			}
    			_ = gotoNext == 31236
    			if o_31176.Enable && !*o_31176.Feature {
    				gotoNext = 31263
    				_ = gotoNext == 31263
    				print("GODEBUG: can not enable \"", o_31176.Name, "\", missing CPU support\n")
    				i_31181_0++
    				gotoNext = 31383
    				gotoNext = 31360
    			} else {
    				gotoNext = 31360
    			}
    			_ = gotoNext == 31360
    			*o_31176.Feature = o_31176.Enable
    			i_31181_0++
    			gotoNext = 31383
    		} else {
    			gotoNext = 31385
    		}
    		gotoNext = 31385
    	} else {
    		gotoNext = 31385
    	}
    	_ = gotoNext == 31385
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
