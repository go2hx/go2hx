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
    	gotoNext = 36260
    	_ = gotoNext == 36260
    	_ = 0
    	fieldBreak = false
    	gotoNext = 36268
    	_ = gotoNext == 36268
    	if !fieldBreak && (env != "") {
    		gotoNext = 36282
    		_ = gotoNext == 36282
    		field_36286 = ""
    		i_36300 = indexByte(env, 44)
    		if i_36300 < 0 {
    			gotoNext = 36336
    			_ = gotoNext == 36336
    			field_36286, env = env, ""
    			gotoNext = 36414
    		} else {
    			gotoNext = 36371
    			_ = gotoNext == 36371
    			gotoNext = 36371
    			_ = gotoNext == 36371
    			field_36286, env = env[:i_36300], env[i_36300+1:]
    			_ = 0
    			gotoNext = 36414
    		}
    		_ = gotoNext == 36414
    		if len(field_36286) < 4 || field_36286[:4] != "cpu." {
    			gotoNext = 36455
    			_ = gotoNext == 36455
    			_ = 0
    			gotoNext = 36268
    			gotoNext = 36475
    		} else {
    			gotoNext = 36475
    		}
    		_ = gotoNext == 36475
    		i_36300 = indexByte(field_36286, 61)
    		if i_36300 < 0 {
    			gotoNext = 36512
    			_ = gotoNext == 36512
    			print("GODEBUG: no value specified for \"", field_36286, "\"\n")
    			_ = 0
    			gotoNext = 36268
    			gotoNext = 36594
    		} else {
    			gotoNext = 36594
    		}
    		_ = gotoNext == 36594
    		key_36594, value_36599 = field_36286[4:i_36300], field_36286[i_36300+1:]
    		gotoNext = 36674
    		_ = gotoNext == 36674
    		switch value_36599 {
    		case "on":
    			gotoNext = 36691
    			_ = gotoNext == 36691
    			enable_36660 = true
    			gotoNext = 36875
    		case "off":
    			gotoNext = 36721
    			_ = gotoNext == 36721
    			enable_36660 = false
    			gotoNext = 36875
    		default:
    			gotoNext = 36753
    			_ = gotoNext == 36753
    			print("GODEBUG: value \"", value_36599, "\" not supported for cpu option \"", key_36594, "\"\n")
    			gotoNext = 36268
    			gotoNext = 36875
    		}
    		_ = gotoNext == 36875
    		if key_36594 == "all" {
    			gotoNext = 36891
    			_ = gotoNext == 36891
    			if 0 < len(options) {
    				gotoNext = 36986
    				_ = gotoNext == 36986
    				i_36900 = 0
    				gotoNext = 36987
    				_ = gotoNext == 36987
    				if i_36900 < len(options) {
    					gotoNext = 36919
    					_ = gotoNext == 36919
    					options[i_36900].Specified = true
    					options[i_36900].Enable = enable_36660
    					i_36900++
    					gotoNext = 36987
    				} else {
    					gotoNext = 36992
    				}
    				gotoNext = 36992
    			} else {
    				gotoNext = 36992
    			}
    			_ = gotoNext == 36992
    			gotoNext = 36268
    			gotoNext = 37014
    		} else {
    			gotoNext = 37014
    		}
    		_ = gotoNext == 37014
    		if 0 < len(options) {
    			gotoNext = 37158
    			_ = gotoNext == 37158
    			i_37018 = 0
    			gotoNext = 37159
    			_ = gotoNext == 37159
    			if i_37018 < len(options) {
    				gotoNext = 37037
    				_ = gotoNext == 37037
    				if options[i_37018].Name == key_36594 {
    					gotoNext = 37068
    					_ = gotoNext == 37068
    					options[i_37018].Specified = true
    					options[i_37018].Enable = enable_36660
    					gotoNext = 36268
    					gotoNext = 37018
    				} else {
    					gotoNext = 37018
    				}
    				_ = gotoNext == 37018
    				i_37018++
    				gotoNext = 37159
    			} else {
    				gotoNext = 37164
    			}
    			gotoNext = 37164
    		} else {
    			gotoNext = 37164
    		}
    		_ = gotoNext == 37164
    		print("GODEBUG: unknown cpu feature \"", key_36594, "\"\n")
    		gotoNext = 36268
    	} else {
    		gotoNext = 37223
    	}
    	_ = gotoNext == 37223
    	if 0 < len(options) {
    		gotoNext = 37436
    		_ = gotoNext == 37436
    		i_37235_0, o_37230 = 0, options[0]
    		gotoNext = 37437
    		_ = gotoNext == 37437
    		if i_37235_0 < len(options) {
    			gotoNext = 37249
    			_ = gotoNext == 37249
    			o_37230 = options[i_37235_0]
    			if !o_37230.Specified {
    				gotoNext = 37269
    				_ = gotoNext == 37269
    				i_37235_0++
    				gotoNext = 37437
    				gotoNext = 37290
    			} else {
    				gotoNext = 37290
    			}
    			_ = gotoNext == 37290
    			if o_37230.Enable && !*o_37230.Feature {
    				gotoNext = 37317
    				_ = gotoNext == 37317
    				print("GODEBUG: can not enable \"", o_37230.Name, "\", missing CPU support\n")
    				i_37235_0++
    				gotoNext = 37437
    				gotoNext = 37414
    			} else {
    				gotoNext = 37414
    			}
    			_ = gotoNext == 37414
    			*o_37230.Feature = o_37230.Enable
    			i_37235_0++
    			gotoNext = 37437
    		} else {
    			gotoNext = 37439
    		}
    		gotoNext = 37439
    	} else {
    		gotoNext = 37439
    	}
    	_ = gotoNext == 37439
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
