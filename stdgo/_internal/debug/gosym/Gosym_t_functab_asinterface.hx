package stdgo._internal.debug.gosym;
class T_funcTab_asInterface {
    @:keep
    @:tdfield
    public dynamic function _uint(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value._uint(_b);
    @:keep
    @:tdfield
    public dynamic function _funcOff(_i:stdgo.GoInt):stdgo.GoUInt64 return @:_0 __self__.value._funcOff(_i);
    @:keep
    @:tdfield
    public dynamic function _pc(_i:stdgo.GoInt):stdgo.GoUInt64 return @:_0 __self__.value._pc(_i);
    @:keep
    @:tdfield
    public dynamic function count():stdgo.GoInt return @:_0 __self__.value.count();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _uintptr(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value._uintptr(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _stringFrom(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._stringFrom(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _string(_0:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._string(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _step(_0:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _1:stdgo.Pointer<stdgo.GoUInt64>, _2:stdgo.Pointer<stdgo.GoInt32>, _3:Bool):Bool return @:_0 __self__.value._step(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _slice(_0:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> return @:_0 __self__.value._slice(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readvarint(_0:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 return @:_0 __self__.value._readvarint(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pcvalue(_0:stdgo.GoUInt32, _1:stdgo.GoUInt64, _2:stdgo.GoUInt64):stdgo.GoInt32 return @:_0 __self__.value._pcvalue(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parsePclnTab():Void @:_0 __self__.value._parsePclnTab();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parse(_0:stdgo.GoUInt64, _1:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } return @:_0 __self__.value._parse(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isGo12():Bool return @:_0 __self__.value._isGo12();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _initFileMap():Void @:_0 __self__.value._initFileMap();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _go12PCToLine(_0:stdgo.GoUInt64):stdgo.GoInt return @:_0 __self__.value._go12PCToLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _go12PCToFile(_0:stdgo.GoUInt64):stdgo.GoString return @:_0 __self__.value._go12PCToFile(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _go12MapFiles(_0:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>, _1:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>):Void @:_0 __self__.value._go12MapFiles(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _go12LineToPC(_0:stdgo.GoString, _1:stdgo.GoInt):stdgo.GoUInt64 return @:_0 __self__.value._go12LineToPC(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _go12Funcs():stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> return @:_0 __self__.value._go12Funcs();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _functabFieldSize():stdgo.GoInt return @:_0 __self__.value._functabFieldSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _funcTab():stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab return @:_0 __self__.value._funcTab();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _funcName(_0:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value._funcName(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _funcData(_0:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_0 __self__.value._funcData(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findFunc(_0:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData return @:_0 __self__.value._findFunc(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findFileLine(_0:stdgo.GoUInt64, _1:stdgo.GoUInt32, _2:stdgo.GoUInt32, _3:stdgo.GoInt32, _4:stdgo.GoInt32, _5:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return @:_0 __self__.value._findFileLine(_0, _1, _2, _3, _4, _5);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function pCToLine(_0:stdgo.GoUInt64):stdgo.GoInt return @:_0 __self__.value.pCToLine(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lineToPC(_0:stdgo.GoInt, _1:stdgo.GoUInt64):stdgo.GoUInt64 return @:_0 __self__.value.lineToPC(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.gosym.Gosym_t_functabpointer.T_funcTabPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
