package stdgo._internal.runtime;
class T_pallocData_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _summarize():stdgo._internal.runtime.Runtime_t_pallocsum.T_pallocSum return @:_0 __self__.value._summarize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pages64(_0:stdgo.GoUInt):stdgo.GoUInt64 return @:_0 __self__.value._pages64(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _freeAll():Void @:_0 __self__.value._freeAll();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _free1(_0:stdgo.GoUInt):Void @:_0 __self__.value._free1(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _free(_0:stdgo.GoUInt, _1:stdgo.GoUInt):Void @:_0 __self__.value._free(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findSmallN(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_0 __self__.value._findSmallN(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _findLargeN(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_0 __self__.value._findLargeN(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _find1(_0:stdgo.GoUInt):stdgo.GoUInt return @:_0 __self__.value._find1(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _find(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt):{ var _0 : stdgo.GoUInt; var _1 : stdgo.GoUInt; } return @:_0 __self__.value._find(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _allocPages64(_0:stdgo.GoUInt, _1:stdgo.GoUInt64):Void @:_0 __self__.value._allocPages64(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_pallocdatapointer.T_pallocDataPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
