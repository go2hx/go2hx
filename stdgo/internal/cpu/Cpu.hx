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
var arm(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
private function get_arm():stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 return stdgo._internal.internal.cpu.Cpu_arm.arm;
private function set_arm(v:stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1):stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1 {
        stdgo._internal.internal.cpu.Cpu_arm.arm = v;
        return v;
    }
var arm64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
private function get_arm64():stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 return stdgo._internal.internal.cpu.Cpu_arm64.arm64;
private function set_arm64(v:stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2):stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2 {
        stdgo._internal.internal.cpu.Cpu_arm64.arm64 = v;
        return v;
    }
var mips64x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
private function get_mips64x():stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 return stdgo._internal.internal.cpu.Cpu_mips64x.mips64x;
private function set_mips64x(v:stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3):stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3 {
        stdgo._internal.internal.cpu.Cpu_mips64x.mips64x = v;
        return v;
    }
var ppc64(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
private function get_ppc64():stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 return stdgo._internal.internal.cpu.Cpu_ppc64.ppc64;
private function set_ppc64(v:stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4):stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4 {
        stdgo._internal.internal.cpu.Cpu_ppc64.ppc64 = v;
        return v;
    }
var s390x(get, set) : stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
private function get_s390x():stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 return stdgo._internal.internal.cpu.Cpu_s390x.s390x;
private function set_s390x(v:stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5):stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5 {
        stdgo._internal.internal.cpu.Cpu_s390x.s390x = v;
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
class T__struct_0_static_extension {

}
typedef T__struct_0 = stdgo._internal.internal.cpu.Cpu_T__struct_0.T__struct_0;
class T__struct_1_static_extension {

}
typedef T__struct_1 = stdgo._internal.internal.cpu.Cpu_T__struct_1.T__struct_1;
class T__struct_2_static_extension {

}
typedef T__struct_2 = stdgo._internal.internal.cpu.Cpu_T__struct_2.T__struct_2;
class T__struct_3_static_extension {

}
typedef T__struct_3 = stdgo._internal.internal.cpu.Cpu_T__struct_3.T__struct_3;
class T__struct_4_static_extension {

}
typedef T__struct_4 = stdgo._internal.internal.cpu.Cpu_T__struct_4.T__struct_4;
class T__struct_5_static_extension {

}
typedef T__struct_5 = stdgo._internal.internal.cpu.Cpu_T__struct_5.T__struct_5;
/**
    /|*{
    	gotoNext = 272838
    	_ = gotoNext == 272838
    	_ = 0
    	fieldBreak = false
    	gotoNext = 272846
    	_ = gotoNext == 272846
    	if !fieldBreak && (env != "") {
    		gotoNext = 272860
    		_ = gotoNext == 272860
    		field_272864 = ""
    		i_272878 = indexByte(env, 44)
    		if i_272878 < 0 {
    			gotoNext = 272914
    			_ = gotoNext == 272914
    			field_272864, env = env, ""
    			gotoNext = 272992
    		} else {
    			gotoNext = 272949
    			_ = gotoNext == 272949
    			field_272864, env = env[:i_272878], env[i_272878+1:]
    			gotoNext = 272992
    		}
    		_ = gotoNext == 272992
    		if len(field_272864) < 4 || field_272864[:4] != "cpu." {
    			gotoNext = 273033
    			_ = gotoNext == 273033
    			_ = 0
    			gotoNext = 272846
    			gotoNext = 273053
    		} else {
    			gotoNext = 273053
    		}
    		_ = gotoNext == 273053
    		i_272878 = indexByte(field_272864, 61)
    		if i_272878 < 0 {
    			gotoNext = 273090
    			_ = gotoNext == 273090
    			print("GODEBUG: no value specified for \"", field_272864, "\"\n")
    			_ = 0
    			gotoNext = 272846
    			gotoNext = 273172
    		} else {
    			gotoNext = 273172
    		}
    		_ = gotoNext == 273172
    		key_273172, value_273177 = field_272864[4:i_272878], field_272864[i_272878+1:]
    		_ = 0
    		gotoNext = 273252
    		_ = gotoNext == 273252
    		switch value_273177 {
    		case "on":
    			gotoNext = 273269
    			_ = gotoNext == 273269
    			enable_273238 = true
    			gotoNext = 273453
    		case "off":
    			gotoNext = 273299
    			_ = gotoNext == 273299
    			enable_273238 = false
    			gotoNext = 273453
    		default:
    			gotoNext = 273331
    			_ = gotoNext == 273331
    			print("GODEBUG: value \"", value_273177, "\" not supported for cpu option \"", key_273172, "\"\n")
    			gotoNext = 272846
    			gotoNext = 273453
    		}
    		_ = gotoNext == 273453
    		if key_273172 == "all" {
    			gotoNext = 273469
    			_ = gotoNext == 273469
    			if 0 < len(options) {
    				gotoNext = 273564
    				_ = gotoNext == 273564
    				i_273478 = 0
    				gotoNext = 273565
    				_ = gotoNext == 273565
    				if i_273478 < len(options) {
    					gotoNext = 273497
    					_ = gotoNext == 273497
    					options[i_273478].Specified = true
    					options[i_273478].Enable = enable_273238
    					i_273478++
    					gotoNext = 273565
    				} else {
    					gotoNext = 273570
    				}
    				gotoNext = 273570
    			} else {
    				gotoNext = 273570
    			}
    			_ = gotoNext == 273570
    			gotoNext = 272846
    			gotoNext = 273592
    		} else {
    			gotoNext = 273592
    		}
    		_ = gotoNext == 273592
    		if 0 < len(options) {
    			gotoNext = 273736
    			_ = gotoNext == 273736
    			i_273596 = 0
    			gotoNext = 273737
    			_ = gotoNext == 273737
    			if i_273596 < len(options) {
    				gotoNext = 273615
    				_ = gotoNext == 273615
    				if options[i_273596].Name == key_273172 {
    					gotoNext = 273646
    					_ = gotoNext == 273646
    					options[i_273596].Specified = true
    					options[i_273596].Enable = enable_273238
    					gotoNext = 272846
    					gotoNext = 273596
    				} else {
    					gotoNext = 273596
    				}
    				_ = gotoNext == 273596
    				i_273596++
    				gotoNext = 273737
    			} else {
    				gotoNext = 273742
    			}
    			gotoNext = 273742
    		} else {
    			gotoNext = 273742
    		}
    		_ = gotoNext == 273742
    		print("GODEBUG: unknown cpu feature \"", key_273172, "\"\n")
    		gotoNext = 272846
    	} else {
    		gotoNext = 273801
    	}
    	_ = gotoNext == 273801
    	if 0 < len(options) {
    		gotoNext = 274014
    		_ = gotoNext == 274014
    		i_273813_0, o_273808 = 0, options[0]
    		gotoNext = 274015
    		_ = gotoNext == 274015
    		if i_273813_0 < len(options) {
    			gotoNext = 273827
    			_ = gotoNext == 273827
    			o_273808 = options[i_273813_0]
    			if !o_273808.Specified {
    				gotoNext = 273847
    				_ = gotoNext == 273847
    				i_273813_0++
    				gotoNext = 274015
    				gotoNext = 273868
    			} else {
    				gotoNext = 273868
    			}
    			_ = gotoNext == 273868
    			if o_273808.Enable && !*o_273808.Feature {
    				gotoNext = 273895
    				_ = gotoNext == 273895
    				print("GODEBUG: can not enable \"", o_273808.Name, "\", missing CPU support\n")
    				i_273813_0++
    				gotoNext = 274015
    				gotoNext = 273992
    			} else {
    				gotoNext = 273992
    			}
    			_ = gotoNext == 273992
    			*o_273808.Feature = o_273808.Enable
    			i_273813_0++
    			gotoNext = 274015
    		} else {
    			gotoNext = 274017
    		}
    		gotoNext = 274017
    	} else {
    		gotoNext = 274017
    	}
    	_ = gotoNext == 274017
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
