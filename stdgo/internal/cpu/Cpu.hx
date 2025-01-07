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
    	gotoNext = 6369
    	_ = gotoNext == 6369
    	_ = 0
    	fieldBreak = false
    	gotoNext = 6377
    	_ = gotoNext == 6377
    	if !fieldBreak && (env != "") {
    		gotoNext = 6391
    		_ = gotoNext == 6391
    		field_6395 = ""
    		i_6409 = indexByte(env, 44)
    		if i_6409 < 0 {
    			gotoNext = 6445
    			_ = gotoNext == 6445
    			field_6395, env = env, ""
    			gotoNext = 6523
    		} else {
    			gotoNext = 6480
    			_ = gotoNext == 6480
    			gotoNext = 6480
    			_ = gotoNext == 6480
    			field_6395, env = env[:i_6409], env[i_6409+1:]
    			_ = 0
    			gotoNext = 6523
    		}
    		_ = gotoNext == 6523
    		if len(field_6395) < 4 || field_6395[:4] != "cpu." {
    			gotoNext = 6564
    			_ = gotoNext == 6564
    			_ = 0
    			gotoNext = 6377
    			gotoNext = 6584
    		} else {
    			gotoNext = 6584
    		}
    		_ = gotoNext == 6584
    		i_6409 = indexByte(field_6395, 61)
    		if i_6409 < 0 {
    			gotoNext = 6621
    			_ = gotoNext == 6621
    			print("GODEBUG: no value specified for \"", field_6395, "\"\n")
    			_ = 0
    			gotoNext = 6377
    			gotoNext = 6703
    		} else {
    			gotoNext = 6703
    		}
    		_ = gotoNext == 6703
    		key_6703, value_6708 = field_6395[4:i_6409], field_6395[i_6409+1:]
    		gotoNext = 6783
    		_ = gotoNext == 6783
    		switch value_6708 {
    		case "on":
    			gotoNext = 6800
    			_ = gotoNext == 6800
    			enable_6769 = true
    			gotoNext = 6984
    		case "off":
    			gotoNext = 6830
    			_ = gotoNext == 6830
    			enable_6769 = false
    			gotoNext = 6984
    		default:
    			gotoNext = 6862
    			_ = gotoNext == 6862
    			print("GODEBUG: value \"", value_6708, "\" not supported for cpu option \"", key_6703, "\"\n")
    			gotoNext = 6377
    			gotoNext = 6984
    		}
    		_ = gotoNext == 6984
    		if key_6703 == "all" {
    			gotoNext = 7000
    			_ = gotoNext == 7000
    			if 0 < len(options) {
    				gotoNext = 7095
    				_ = gotoNext == 7095
    				i_7009 = 0
    				gotoNext = 7096
    				_ = gotoNext == 7096
    				if i_7009 < len(options) {
    					gotoNext = 7028
    					_ = gotoNext == 7028
    					options[i_7009].Specified = true
    					options[i_7009].Enable = enable_6769
    					i_7009++
    					gotoNext = 7096
    				} else {
    					gotoNext = 7101
    				}
    				gotoNext = 7101
    			} else {
    				gotoNext = 7101
    			}
    			_ = gotoNext == 7101
    			gotoNext = 6377
    			gotoNext = 7123
    		} else {
    			gotoNext = 7123
    		}
    		_ = gotoNext == 7123
    		if 0 < len(options) {
    			gotoNext = 7267
    			_ = gotoNext == 7267
    			i_7127 = 0
    			gotoNext = 7268
    			_ = gotoNext == 7268
    			if i_7127 < len(options) {
    				gotoNext = 7146
    				_ = gotoNext == 7146
    				if options[i_7127].Name == key_6703 {
    					gotoNext = 7177
    					_ = gotoNext == 7177
    					options[i_7127].Specified = true
    					options[i_7127].Enable = enable_6769
    					gotoNext = 6377
    					gotoNext = 7127
    				} else {
    					gotoNext = 7127
    				}
    				_ = gotoNext == 7127
    				i_7127++
    				gotoNext = 7268
    			} else {
    				gotoNext = 7273
    			}
    			gotoNext = 7273
    		} else {
    			gotoNext = 7273
    		}
    		_ = gotoNext == 7273
    		print("GODEBUG: unknown cpu feature \"", key_6703, "\"\n")
    		gotoNext = 6377
    	} else {
    		gotoNext = 7332
    	}
    	_ = gotoNext == 7332
    	if 0 < len(options) {
    		gotoNext = 7545
    		_ = gotoNext == 7545
    		i_7344_0, o_7339 = 0, options[0]
    		gotoNext = 7546
    		_ = gotoNext == 7546
    		if i_7344_0 < len(options) {
    			gotoNext = 7358
    			_ = gotoNext == 7358
    			o_7339 = options[i_7344_0]
    			if !o_7339.Specified {
    				gotoNext = 7378
    				_ = gotoNext == 7378
    				i_7344_0++
    				gotoNext = 7546
    				gotoNext = 7399
    			} else {
    				gotoNext = 7399
    			}
    			_ = gotoNext == 7399
    			if o_7339.Enable && !*o_7339.Feature {
    				gotoNext = 7426
    				_ = gotoNext == 7426
    				print("GODEBUG: can not enable \"", o_7339.Name, "\", missing CPU support\n")
    				i_7344_0++
    				gotoNext = 7546
    				gotoNext = 7523
    			} else {
    				gotoNext = 7523
    			}
    			_ = gotoNext == 7523
    			*o_7339.Feature = o_7339.Enable
    			i_7344_0++
    			gotoNext = 7546
    		} else {
    			gotoNext = 7548
    		}
    		gotoNext = 7548
    	} else {
    		gotoNext = 7548
    	}
    	_ = gotoNext == 7548
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
