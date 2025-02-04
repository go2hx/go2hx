package stdgo._internal.runtime;
@:keep @:allow(stdgo._internal.runtime.Runtime.T_sweepLocked_asInterface) class T_sweepLocked_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _userArenaNextFree( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, _1:stdgo.GoInt):stdgo._internal.unsafe.Unsafe.UnsafePointer return @:_5 __self__._userArenaNextFree(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _specialFindSplicePoint( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:stdgo.GoUInt8):{ var _0 : stdgo.Ref<stdgo.Ref<stdgo._internal.runtime.Runtime_t_special.T_special>>; var _1 : Bool; } return @:_5 __self__._specialFindSplicePoint(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _setUserArenaChunkToFault( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void return @:_5 __self__._setUserArenaChunkToFault();
    @:embedded
    @:embeddededffieldsffun
    public static function _setPinnerBits( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>):Void return @:_5 __self__._setPinnerBits(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _reportZombies( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void return @:_5 __self__._reportZombies();
    @:embedded
    @:embeddededffieldsffun
    public static function _refreshPinnerBits( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void return @:_5 __self__._refreshPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public static function _refillAllocCache( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void return @:_5 __self__._refillAllocCache(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _pinnerBitSize( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr return @:_5 __self__._pinnerBitSize();
    @:embedded
    @:embeddededffieldsffun
    public static function _objIndex( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_5 __self__._objIndex(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _nextFreeIndex( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr return @:_5 __self__._nextFreeIndex();
    @:embedded
    @:embeddededffieldsffun
    public static function _newPinnerBits( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:_5 __self__._newPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public static function _markBitsForIndex( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_5 __self__._markBitsForIndex(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _markBitsForBase( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_5 __self__._markBitsForBase();
    @:embedded
    @:embeddededffieldsffun
    public static function _layout( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):{ var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; } return @:_5 __self__._layout();
    @:embedded
    @:embeddededffieldsffun
    public static function _isUnusedUserArenaChunk( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Bool return @:_5 __self__._isUnusedUserArenaChunk();
    @:embedded
    @:embeddededffieldsffun
    public static function _isFree( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool return @:_5 __self__._isFree(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _initHeapBits( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:Bool):Void return @:_5 __self__._initHeapBits(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _init( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Void return @:_5 __self__._init(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _incPinCounter( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void return @:_5 __self__._incPinCounter(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _inList( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Bool return @:_5 __self__._inList();
    @:embedded
    @:embeddededffieldsffun
    public static function _getPinnerBits( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:_5 __self__._getPinnerBits();
    @:embedded
    @:embeddededffieldsffun
    public static function _ensureSwept( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):Void return @:_5 __self__._ensureSwept();
    @:embedded
    @:embeddededffieldsffun
    public static function _divideByElemSize( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr return @:_5 __self__._divideByElemSize(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _decPinCounter( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool return @:_5 __self__._decPinCounter(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _countAlloc( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoInt return @:_5 __self__._countAlloc();
    @:embedded
    @:embeddededffieldsffun
    public static function _base( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked):stdgo.GoUIntptr return @:_5 __self__._base();
    @:embedded
    @:embeddededffieldsffun
    public static function _allocBitsForIndex( __self__:stdgo._internal.runtime.Runtime_t_sweeplocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:_5 __self__._allocBitsForIndex(_0);
}
