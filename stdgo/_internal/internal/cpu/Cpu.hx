package stdgo._internal.internal.cpu;
private var __go2hxdoc__package : Bool;
var debugOptions : Bool = false;
var x86 : T__struct_0 = ({ hasAES : false, hasADX : false, hasAVX : false, hasAVX2 : false, hasBMI1 : false, hasBMI2 : false, hasERMS : false, hasFMA : false, hasOSXSAVE : false, hasPCLMULQDQ : false, hasPOPCNT : false, hasRDTSCP : false, hasSHA : false, hasSSE3 : false, hasSSSE3 : false, hasSSE41 : false, hasSSE42 : false } : T__struct_0);
var arm : T__struct_1 = ({ hasVFPv4 : false, hasIDIVA : false } : T__struct_1);
var arm64 : T__struct_2 = ({ hasAES : false, hasPMULL : false, hasSHA1 : false, hasSHA2 : false, hasSHA512 : false, hasCRC32 : false, hasATOMICS : false, hasCPUID : false, isNeoverse : false } : T__struct_2);
var mips64x : T__struct_3 = ({ hasMSA : false } : T__struct_3);
var ppc64 : T__struct_4 = ({ hasDARN : false, hasSCV : false, isPOWER8 : false, isPOWER9 : false, isPOWER10 : false } : T__struct_4);
var s390x : T__struct_5 = ({ hasZARCH : false, hasSTFLE : false, hasLDISP : false, hasEIMM : false, hasDFP : false, hasETF3EH : false, hasMSA : false, hasAES : false, hasAESCBC : false, hasAESCTR : false, hasAESGCM : false, hasGHASH : false, hasSHA1 : false, hasSHA256 : false, hasSHA512 : false, hasSHA3 : false, hasVX : false, hasVXE : false, hasKDSA : false, hasECDSA : false, hasEDDSA : false } : T__struct_5);
var _options : stdgo.Slice<T_option> = (null : stdgo.Slice<stdgo._internal.internal.cpu.Cpu.T_option>);
final cacheLinePadSize : stdgo.GoUInt64 = (64i64 : stdgo.GoUInt64);
var cacheLineSize : stdgo.GoUIntptr = (64 : stdgo.GoUIntptr);
@:structInit class CacheLinePad {
    @:optional
    public var __1 : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(64, 64, ...[for (i in 0 ... 64) (0 : stdgo.GoUInt8)]);
    public function new(?__1:stdgo.GoArray<stdgo.GoUInt8>) {
        if (__1 != null) this.__1 = __1;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CacheLinePad(__1);
    }
}
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_0>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_0_asInterface) class T__struct_0_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_0_static_extension) typedef T__struct_0 = {
    @:optional
    public var __7 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
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
    public var __9 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_1_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_1>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_1_asInterface) class T__struct_1_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_1_static_extension) typedef T__struct_1 = {
    @:optional
    public var __15 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
    public var hasVFPv4 : Bool;
    public var hasIDIVA : Bool;
    @:optional
    public var __17 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_2_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_2>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_2_asInterface) class T__struct_2_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_2_static_extension) typedef T__struct_2 = {
    @:optional
    public var __23 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
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
    public var __25 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_3_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_3>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_3_asInterface) class T__struct_3_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_3_static_extension) typedef T__struct_3 = {
    @:optional
    public var __31 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
    public var hasMSA : Bool;
    @:optional
    public var __33 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_4_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_4>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_4_asInterface) class T__struct_4_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_4_static_extension) typedef T__struct_4 = {
    @:optional
    public var __39 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
    public var hasDARN : Bool;
    public var hasSCV : Bool;
    public var isPOWER8 : Bool;
    public var isPOWER9 : Bool;
    public var isPOWER10 : Bool;
    @:optional
    public var __41 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
class T__struct_5_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_5>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.internal.cpu.Cpu.T__struct_5_asInterface) class T__struct_5_static_extension {

}
@:local @:using(stdgo._internal.internal.cpu.Cpu.T__struct_5_static_extension) typedef T__struct_5 = {
    @:optional
    public var __47 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
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
    public var __49 : stdgo._internal.internal.cpu.Cpu.CacheLinePad;
};
function initialize(_env:stdgo.GoString):Void {
        _doinit();
        _processOptions(_env?.__copy__());
    }
function _processOptions(_env:stdgo.GoString):Void {
        stdgo._internal.internal.Macro.controlFlow({
            @:label("field") while (_env != (stdgo.Go.str())) {
                var _field = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
                var _i = (_indexByte(_env?.__copy__(), (44 : stdgo.GoUInt8)) : stdgo.GoInt);
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    {
                        final __tmp__0 = _env?.__copy__();
                        final __tmp__1 = stdgo.Go.str()?.__copy__();
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                } else {
                    {
                        final __tmp__0 = (_env.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                        final __tmp__1 = (_env.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _field = __tmp__0;
                        _env = __tmp__1;
                    };
                };
                if ((((_field.length) < (4 : stdgo.GoInt) : Bool) || ((_field.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != ("cpu." : stdgo.GoString)) : Bool)) {
                    continue;
                };
                _i = _indexByte(_field?.__copy__(), (61 : stdgo.GoUInt8));
                if ((_i < (0 : stdgo.GoInt) : Bool)) {
                    stdgo.Go.print(("GODEBUG: no value specified for \"" : stdgo.GoString), _field, ("\"\n" : stdgo.GoString));
                    continue;
                };
                var __0 = ((_field.__slice__((4 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_field.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _value = __1, _key = __0;
                var _enable:Bool = false;
                {
                    final __value__ = _value;
                    if (__value__ == (("on" : stdgo.GoString))) {
                        _enable = true;
                    } else if (__value__ == (("off" : stdgo.GoString))) {
                        _enable = false;
                    } else {
                        stdgo.Go.print(("GODEBUG: value \"" : stdgo.GoString), _value, ("\" not supported for cpu option \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
                        @:jump("field") continue;
                    };
                };
                if (_key == (("all" : stdgo.GoString))) {
                    for (_i => _ in _options) {
                        _options[(_i : stdgo.GoInt)].specified = true;
                        _options[(_i : stdgo.GoInt)].enable = _enable;
                    };
                    @:jump("field") continue;
                };
                for (_i => _ in _options) {
                    if (_options[(_i : stdgo.GoInt)].name == (_key)) {
                        _options[(_i : stdgo.GoInt)].specified = true;
                        _options[(_i : stdgo.GoInt)].enable = _enable;
                        @:jump("field") continue;
                    };
                };
                stdgo.Go.print(("GODEBUG: unknown cpu feature \"" : stdgo.GoString), _key, ("\"\n" : stdgo.GoString));
            };
            for (__86 => _o in _options) {
                if (!_o.specified) {
                    continue;
                };
                if ((_o.enable && !_o.feature.value : Bool)) {
                    stdgo.Go.print(("GODEBUG: can not enable \"" : stdgo.GoString), _o.name, ("\", missing CPU support\n" : stdgo.GoString));
                    continue;
                };
                _o.feature.value = _o.enable;
            };
        });
    }
function _indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function name():stdgo.GoString {
        return stdgo.Go.str()?.__copy__();
    }
function _doinit():Void {}
