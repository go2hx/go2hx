package stdgo._internal.runtime;
class T_sweepLocked_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _userArenaNextFree(_0:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, _1:stdgo.GoInt):stdgo._internal.unsafe.Unsafe.UnsafePointer return @:_0 __self__.value._userArenaNextFree(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _specialFindSplicePoint(_0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.runtime.Runtime_t_special.T_special>>; var _1 : Bool; } return @:_0 __self__.value._specialFindSplicePoint(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setUserArenaChunkToFault():Void @:_0 __self__.value._setUserArenaChunkToFault();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _setPinnerBits(_0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>):Void @:_0 __self__.value._setPinnerBits(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _reportZombies():Void @:_0 __self__.value._reportZombies();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _refreshPinnerBits():Void @:_0 __self__.value._refreshPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _refillAllocCache(_0:stdgo.GoUIntptr):Void @:_0 __self__.value._refillAllocCache(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pinnerBitSize():stdgo.GoUIntptr return @:_0 __self__.value._pinnerBitSize();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _objIndex(_0:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_0 __self__.value._objIndex(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _nextFreeIndex():stdgo.GoUIntptr return @:_0 __self__.value._nextFreeIndex();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _newPinnerBits():stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:_0 __self__.value._newPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _markBitsForIndex(_0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_0 __self__.value._markBitsForIndex(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _markBitsForBase():stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_0 __self__.value._markBitsForBase();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _layout():{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; } return @:_0 __self__.value._layout();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isUnusedUserArenaChunk():Bool return @:_0 __self__.value._isUnusedUserArenaChunk();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _isFree(_0:stdgo.GoUIntptr):Bool return @:_0 __self__.value._isFree(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _initHeapBits(_0:Bool):Void @:_0 __self__.value._initHeapBits(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _init(_0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Void @:_0 __self__.value._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _incPinCounter(_0:stdgo.GoUIntptr):Void @:_0 __self__.value._incPinCounter(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _inList():Bool return @:_0 __self__.value._inList();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getPinnerBits():stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:_0 __self__.value._getPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _ensureSwept():Void @:_0 __self__.value._ensureSwept();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _divideByElemSize(_0:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_0 __self__.value._divideByElemSize(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _decPinCounter(_0:stdgo.GoUIntptr):Bool return @:_0 __self__.value._decPinCounter(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _countAlloc():stdgo.GoInt return @:_0 __self__.value._countAlloc();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _base():stdgo.GoUIntptr return @:_0 __self__.value._base();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _allocBitsForIndex(_0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_0 __self__.value._allocBitsForIndex(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_t_sweeplockedpointer.T_sweepLockedPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
