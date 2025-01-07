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
    	gotoNext = 13646
    	_ = gotoNext == 13646
    	_ = 0
    	fieldBreak = false
    	gotoNext = 13654
    	_ = gotoNext == 13654
    	if !fieldBreak && (env != "") {
    		gotoNext = 13668
    		_ = gotoNext == 13668
    		field_13672 = ""
    		i_13686 = indexByte(env, 44)
    		if i_13686 < 0 {
    			gotoNext = 13722
    			_ = gotoNext == 13722
    			field_13672, env = env, ""
    			gotoNext = 13800
    		} else {
    			gotoNext = 13757
    			_ = gotoNext == 13757
    			gotoNext = 13757
    			_ = gotoNext == 13757
    			field_13672, env = env[:i_13686], env[i_13686+1:]
    			_ = 0
    			gotoNext = 13800
    		}
    		_ = gotoNext == 13800
    		if len(field_13672) < 4 || field_13672[:4] != "cpu." {
    			gotoNext = 13841
    			_ = gotoNext == 13841
    			_ = 0
    			gotoNext = 13654
    			gotoNext = 13861
    		} else {
    			gotoNext = 13861
    		}
    		_ = gotoNext == 13861
    		i_13686 = indexByte(field_13672, 61)
    		if i_13686 < 0 {
    			gotoNext = 13898
    			_ = gotoNext == 13898
    			print("GODEBUG: no value specified for \"", field_13672, "\"\n")
    			_ = 0
    			gotoNext = 13654
    			gotoNext = 13980
    		} else {
    			gotoNext = 13980
    		}
    		_ = gotoNext == 13980
    		key_13980, value_13985 = field_13672[4:i_13686], field_13672[i_13686+1:]
    		gotoNext = 14060
    		_ = gotoNext == 14060
    		switch value_13985 {
    		case "on":
    			gotoNext = 14077
    			_ = gotoNext == 14077
    			enable_14046 = true
    			gotoNext = 14261
    		case "off":
    			gotoNext = 14107
    			_ = gotoNext == 14107
    			enable_14046 = false
    			gotoNext = 14261
    		default:
    			gotoNext = 14139
    			_ = gotoNext == 14139
    			print("GODEBUG: value \"", value_13985, "\" not supported for cpu option \"", key_13980, "\"\n")
    			gotoNext = 13654
    			gotoNext = 14261
    		}
    		_ = gotoNext == 14261
    		if key_13980 == "all" {
    			gotoNext = 14277
    			_ = gotoNext == 14277
    			if 0 < len(options) {
    				gotoNext = 14372
    				_ = gotoNext == 14372
    				i_14286 = 0
    				gotoNext = 14373
    				_ = gotoNext == 14373
    				if i_14286 < len(options) {
    					gotoNext = 14305
    					_ = gotoNext == 14305
    					options[i_14286].Specified = true
    					options[i_14286].Enable = enable_14046
    					i_14286++
    					gotoNext = 14373
    				} else {
    					gotoNext = 14378
    				}
    				gotoNext = 14378
    			} else {
    				gotoNext = 14378
    			}
    			_ = gotoNext == 14378
    			gotoNext = 13654
    			gotoNext = 14400
    		} else {
    			gotoNext = 14400
    		}
    		_ = gotoNext == 14400
    		if 0 < len(options) {
    			gotoNext = 14544
    			_ = gotoNext == 14544
    			i_14404 = 0
    			gotoNext = 14545
    			_ = gotoNext == 14545
    			if i_14404 < len(options) {
    				gotoNext = 14423
    				_ = gotoNext == 14423
    				if options[i_14404].Name == key_13980 {
    					gotoNext = 14454
    					_ = gotoNext == 14454
    					options[i_14404].Specified = true
    					options[i_14404].Enable = enable_14046
    					gotoNext = 13654
    					gotoNext = 14404
    				} else {
    					gotoNext = 14404
    				}
    				_ = gotoNext == 14404
    				i_14404++
    				gotoNext = 14545
    			} else {
    				gotoNext = 14550
    			}
    			gotoNext = 14550
    		} else {
    			gotoNext = 14550
    		}
    		_ = gotoNext == 14550
    		print("GODEBUG: unknown cpu feature \"", key_13980, "\"\n")
    		gotoNext = 13654
    	} else {
    		gotoNext = 14609
    	}
    	_ = gotoNext == 14609
    	if 0 < len(options) {
    		gotoNext = 14822
    		_ = gotoNext == 14822
    		i_14621_0, o_14616 = 0, options[0]
    		gotoNext = 14823
    		_ = gotoNext == 14823
    		if i_14621_0 < len(options) {
    			gotoNext = 14635
    			_ = gotoNext == 14635
    			o_14616 = options[i_14621_0]
    			if !o_14616.Specified {
    				gotoNext = 14655
    				_ = gotoNext == 14655
    				i_14621_0++
    				gotoNext = 14823
    				gotoNext = 14676
    			} else {
    				gotoNext = 14676
    			}
    			_ = gotoNext == 14676
    			if o_14616.Enable && !*o_14616.Feature {
    				gotoNext = 14703
    				_ = gotoNext == 14703
    				print("GODEBUG: can not enable \"", o_14616.Name, "\", missing CPU support\n")
    				i_14621_0++
    				gotoNext = 14823
    				gotoNext = 14800
    			} else {
    				gotoNext = 14800
    			}
    			_ = gotoNext == 14800
    			*o_14616.Feature = o_14616.Enable
    			i_14621_0++
    			gotoNext = 14823
    		} else {
    			gotoNext = 14825
    		}
    		gotoNext = 14825
    	} else {
    		gotoNext = 14825
    	}
    	_ = gotoNext == 14825
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
