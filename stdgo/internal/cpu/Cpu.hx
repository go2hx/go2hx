package stdgo.internal.cpu;
/**
    // Package cpu implements processor feature detection
    // used by the Go standard library.
**/
private var __go2hxdoc__package : Bool;
/**
    // CacheLineSize is the CPU's assumed cache line size.
    // There is currently no runtime detection of the real cache line size
    // so we use the constant per GOARCH CacheLinePadSize as an approximation.
    
    
**/
var cacheLineSize : stdgo.StdGoTypes.GoUIntptr = (64 : stdgo.StdGoTypes.GoUIntptr);
/**
    // DebugOptions is set to true by the runtime if the OS supports reading
    // GODEBUG early in runtime startup.
    // This should not be changed after it is initialized.
    
    
**/
var debugOptions = false;
/**
    // The booleans in X86 contain the correspondingly named cpuid feature bit.
    // HasAVX and HasAVX2 are only set if the OS does support XMM and YMM registers
    // in addition to the cpuid feature bit being set.
    // The struct is padded to avoid false sharing.
    
    
**/
var x86 = ({ hasAES : false, hasADX : false, hasAVX : false, hasAVX2 : false, hasBMI1 : false, hasBMI2 : false, hasERMS : false, hasFMA : false, hasOSXSAVE : false, hasPCLMULQDQ : false, hasPOPCNT : false, hasRDTSCP : false, hasSHA : false, hasSSE3 : false, hasSSSE3 : false, hasSSE41 : false, hasSSE42 : false } : T__struct_0);
/**
    // The booleans in ARM contain the correspondingly named cpu feature bit.
    // The struct is padded to avoid false sharing.
    
    
**/
var arm = ({ hasVFPv4 : false, hasIDIVA : false } : T__struct_1);
/**
    // The booleans in ARM64 contain the correspondingly named cpu feature bit.
    // The struct is padded to avoid false sharing.
    
    
**/
var arm64 = ({ hasAES : false, hasPMULL : false, hasSHA1 : false, hasSHA2 : false, hasSHA512 : false, hasCRC32 : false, hasATOMICS : false, hasCPUID : false, isNeoverse : false } : T__struct_2);
/**
    
    
    
**/
var mips64x = ({ hasMSA : false } : T__struct_3);
/**
    // For ppc64(le), it is safe to check only for ISA level starting on ISA v3.00,
    // since there are no optional categories. There are some exceptions that also
    // require kernel support to work (darn, scv), so there are feature bits for
    // those as well. The minimum processor requirement is POWER8 (ISA 2.07).
    // The struct is padded to avoid false sharing.
    
    
**/
var ppc64 = ({ hasDARN : false, hasSCV : false, isPOWER8 : false, isPOWER9 : false, isPOWER10 : false } : T__struct_4);
/**
    
    
    
**/
var s390x = ({ hasZARCH : false, hasSTFLE : false, hasLDISP : false, hasEIMM : false, hasDFP : false, hasETF3EH : false, hasMSA : false, hasAES : false, hasAESCBC : false, hasAESCTR : false, hasAESGCM : false, hasGHASH : false, hasSHA1 : false, hasSHA256 : false, hasSHA512 : false, hasSHA3 : false, hasVX : false, hasVXE : false, hasKDSA : false, hasECDSA : false, hasEDDSA : false } : T__struct_5);
/**
    // options contains the cpu debug options that can be used in GODEBUG.
    // Options are arch dependent and are added by the arch specific doinit functions.
    // Features that are mandatory for the specific GOARCH should not be added to options
    // (e.g. SSE2 on amd64).
    
    
**/
var _options = (null : stdgo.Slice<stdgo.internal.cpu.Cpu.T_option>);
/**
    
    
    
**/
final cacheLinePadSize : stdgo.StdGoTypes.GoUInt64 = (64i64 : stdgo.StdGoTypes.GoUInt64);
/**
    // CacheLinePad is used to pad structs to avoid false sharing.
    
    
**/
@:structInit class CacheLinePad {
    @:optional
    public var __1 : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8> = new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 64) (0 : stdgo.StdGoTypes.GoUInt8)]);
    public function new(?__1:stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CacheLinePad(__1);
    }
}
/**
    // Option names should be lower case. e.g. avx instead of AVX.
    
    
**/
@:structInit @:private class T_option {
    public var name : stdgo.GoString = "";
    public var feature : stdgo.Pointer<Bool> = (null : stdgo.Pointer<Bool>);
    public var specified : Bool = false;
    public var enable : Bool = false;
    public function new(?name:stdgo.GoString, ?feature:stdgo.Pointer<Bool>, ?specified:Bool, ?enable:Bool) {
        if (name != null) this.name = name;
        if (feature != null) this.feature = feature;
        if (specified != null) this.specified = specified;
        if (enable != null) this.enable = enable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_option(name, feature, specified, enable);
    }
}
class T__struct_0_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_0_static_extension) typedef T__struct_0 = {
    @:optional
    public var __7 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasAES : Bool;
    public var hasADX : Bool;
    public var hasAVX : Bool;
    public var hasAVX2 : Bool;
    public var hasBMI1 : Bool;
    public var hasBMI2 : Bool;
    public var hasERMS : Bool;
    public var hasFMA : Bool;
    public var hasOSXSAVE : Bool;
    public var hasPCLMULQDQ : Bool;
    public var hasPOPCNT : Bool;
    public var hasRDTSCP : Bool;
    public var hasSHA : Bool;
    public var hasSSE3 : Bool;
    public var hasSSSE3 : Bool;
    public var hasSSE41 : Bool;
    public var hasSSE42 : Bool;
    @:optional
    public var __9 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_1_static_extension) typedef T__struct_1 = {
    @:optional
    public var __15 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasVFPv4 : Bool;
    public var hasIDIVA : Bool;
    @:optional
    public var __17 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_2_static_extension) typedef T__struct_2 = {
    @:optional
    public var __23 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasAES : Bool;
    public var hasPMULL : Bool;
    public var hasSHA1 : Bool;
    public var hasSHA2 : Bool;
    public var hasSHA512 : Bool;
    public var hasCRC32 : Bool;
    public var hasATOMICS : Bool;
    public var hasCPUID : Bool;
    public var isNeoverse : Bool;
    @:optional
    public var __25 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_3_static_extension) typedef T__struct_3 = {
    @:optional
    public var __31 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasMSA : Bool;
    @:optional
    public var __33 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_4_static_extension) typedef T__struct_4 = {
    @:optional
    public var __39 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasDARN : Bool;
    public var hasSCV : Bool;
    public var isPOWER8 : Bool;
    public var isPOWER9 : Bool;
    public var isPOWER10 : Bool;
    @:optional
    public var __41 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.internal.cpu.Cpu.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo.internal.cpu.Cpu.T__struct_5_static_extension) typedef T__struct_5 = {
    @:optional
    public var __47 : stdgo.internal.cpu.Cpu.CacheLinePad;
    public var hasZARCH : Bool;
    public var hasSTFLE : Bool;
    public var hasLDISP : Bool;
    public var hasEIMM : Bool;
    public var hasDFP : Bool;
    public var hasETF3EH : Bool;
    public var hasMSA : Bool;
    public var hasAES : Bool;
    public var hasAESCBC : Bool;
    public var hasAESCTR : Bool;
    public var hasAESGCM : Bool;
    public var hasGHASH : Bool;
    public var hasSHA1 : Bool;
    public var hasSHA256 : Bool;
    public var hasSHA512 : Bool;
    public var hasSHA3 : Bool;
    public var hasVX : Bool;
    public var hasVXE : Bool;
    public var hasKDSA : Bool;
    public var hasECDSA : Bool;
    public var hasEDDSA : Bool;
    @:optional
    public var __49 : stdgo.internal.cpu.Cpu.CacheLinePad;
};
/**
    // Initialize examines the processor and sets the relevant variables above.
    // This is called by the runtime package early in program initialization,
    // before normal init functions are run. env is set by runtime if the OS supports
    // cpu feature options in GODEBUG.
**/
function initialize(_env:stdgo.GoString):Void {
        _doinit();
        _processOptions(_env);
    }
/**
    // processOptions enables or disables CPU feature values based on the parsed env string.
    // The env string is expected to be of the form cpu.feature1=value1,cpu.feature2=value2...
    // where feature names is one of the architecture specific list stored in the
    // cpu packages options variable and values are either 'on' or 'off'.
    // If env contains cpu.all=off then all cpu features referenced through the options
    // variable are disabled. Other feature names and values result in warning messages.
**/
function _processOptions(_env:stdgo.GoString):Void {
        stdgo.internal.Macro.controlFlow({
            @:label("field") while (_env != (stdgo.Go.str())) {
                var _field:stdgo.GoString = stdgo.Go.str();
                var _i:stdgo.StdGoTypes.GoInt = _indexByte(_env, (44 : stdgo.StdGoTypes.GoUInt8));
                if (_i < (0 : stdgo.StdGoTypes.GoInt)) {
                    {
                        final __tmp__0 = _env;
                        final __tmp__1 = stdgo.Go.str();
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                } else {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i) : stdgo.GoString);
                        final __tmp__1 = (_env.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString);
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                };
                if ((_field.length < (4 : stdgo.StdGoTypes.GoInt)) || ((_field.__slice__(0, (4 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString))) {
                    continue;
                };
                _i = _indexByte(_field, (61 : stdgo.StdGoTypes.GoUInt8));
                if (_i < (0 : stdgo.StdGoTypes.GoInt)) {
                    trace(("GODEBUG: no value specified for \"" : stdgo.GoString), _field, ("\"\n" : stdgo.GoString));
                    continue;
                };
                var __0:stdgo.GoString = (_field.__slice__((4 : stdgo.StdGoTypes.GoInt), _i) : stdgo.GoString), __1:stdgo.GoString = (_field.__slice__(_i + (1 : stdgo.StdGoTypes.GoInt)) : stdgo.GoString), _value:stdgo.GoString = __1, _key:stdgo.GoString = __0;
                var _enable:Bool = false;
                {
                    final __value__ = _value;
                    if (__value__ == (("on" : stdgo.GoString))) {
                        _enable = true;
                    } else if (__value__ == (("off" : stdgo.GoString))) {
                        _enable = false;
                    } else {
                        trace(("GODEBUG: value \"" : stdgo.GoString), _value, ("\" not supported for cpu option \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
                        @:jump("field") continue;
                    };
                };
                if (_key == (("all" : stdgo.GoString))) {
                    for (_i in 0 ... _options.length.toBasic()) {
                        _options[(_i : stdgo.StdGoTypes.GoInt)].specified = true;
                        _options[(_i : stdgo.StdGoTypes.GoInt)].enable = _enable;
                    };
                    @:jump("field") continue;
                };
                for (_i in 0 ... _options.length.toBasic()) {
                    if (_options[(_i : stdgo.StdGoTypes.GoInt)].name == (_key)) {
                        _options[(_i : stdgo.StdGoTypes.GoInt)].specified = true;
                        _options[(_i : stdgo.StdGoTypes.GoInt)].enable = _enable;
                        @:jump("field") continue;
                    };
                };
                trace(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
            };
            for (__0 => _o in _options) {
                if (!_o.specified) {
                    continue;
                };
                if (_o.enable && !_o.feature.value) {
                    trace(("GODEBUG: can not enable \"" : stdgo.GoString), _o.name, ("\", missing CPU support\n" : stdgo.GoString));
                    continue;
                };
                _o.feature.value = _o.enable;
            };
        });
    }
/**
    // indexByte returns the index of the first instance of c in s,
    // or -1 if c is not present in s.
**/
function _indexByte(_s:stdgo.GoString, _c:stdgo.StdGoTypes.GoByte):stdgo.StdGoTypes.GoInt {
        {
            var _i:stdgo.StdGoTypes.GoInt = (0 : stdgo.StdGoTypes.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                if (_s[(_i : stdgo.StdGoTypes.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.StdGoTypes.GoInt);
    }
/**
    // Name returns the CPU name given by the vendor
    // if it can be read directly from memory or by CPU instructions.
    // If the CPU name can not be determined an empty string is returned.
    //
    // Implementations that use the Operating System (e.g. sysctl or /sys/)
    // to gather CPU information for display should be placed in internal/sysinfo.
**/
function name():stdgo.GoString {
        return stdgo.Go.str();
    }
function _doinit():Void {}
