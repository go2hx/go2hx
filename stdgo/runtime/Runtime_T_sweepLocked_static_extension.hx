package stdgo.runtime;
class T_sweepLocked_static_extension {
    public static function _userArenaNextFree(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo._internal.internal.abi.Abi_Type_.Type_, _1:StdTypes.Int):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._userArenaNextFree(__self__, _0, _1);
    }
    public static function _specialFindSplicePoint(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:std.UInt):stdgo.Tuple<T_special, Bool> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._specialFindSplicePoint(__self__, _0, _1);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _setUserArenaChunkToFault(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._setUserArenaChunkToFault(__self__);
    }
    public static function _setPinnerBits(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:T_pinnerBits):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.runtime.Runtime_T_pinnerBits.T_pinnerBits>);
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._setPinnerBits(__self__, _0);
    }
    public static function _reportZombies(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._reportZombies(__self__);
    }
    public static function _refreshPinnerBits(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._refreshPinnerBits(__self__);
    }
    public static function _refillAllocCache(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._refillAllocCache(__self__, _0);
    }
    public static function _pinnerBitSize(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._pinnerBitSize(__self__);
    }
    public static function _objIndex(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._objIndex(__self__, _0);
    }
    public static function _nextFreeIndex(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._nextFreeIndex(__self__);
    }
    public static function _newPinnerBits(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._newPinnerBits(__self__);
    }
    public static function _markBitsForIndex(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._markBitsForIndex(__self__, _0);
    }
    public static function _markBitsForBase(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):T_markBits {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._markBitsForBase(__self__);
    }
    public static function _layout(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):stdgo.Tuple.Tuple3<stdgo.GoUIntptr, stdgo.GoUIntptr, stdgo.GoUIntptr> {
        return {
            final obj = stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._layout(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function _isUnusedUserArenaChunk(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Bool {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._isUnusedUserArenaChunk(__self__);
    }
    public static function _isFree(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._isFree(__self__, _0);
    }
    public static function _initHeapBits(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:Bool):Void {
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._initHeapBits(__self__, _0);
    }
    public static function _init(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._init(__self__, _0, _1);
    }
    public static function _incPinCounter(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):Void {
        final _0 = (_0 : stdgo.GoUIntptr);
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._incPinCounter(__self__, _0);
    }
    public static function _inList(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Bool {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._inList(__self__);
    }
    public static function _getPinnerBits(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):T_pinnerBits {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._getPinnerBits(__self__);
    }
    public static function _ensureSwept(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):Void {
        stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._ensureSwept(__self__);
    }
    public static function _divideByElemSize(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):stdgo.GoUIntptr {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._divideByElemSize(__self__, _0);
    }
    public static function _decPinCounter(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):Bool {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._decPinCounter(__self__, _0);
    }
    public static function _countAlloc(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):StdTypes.Int {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._countAlloc(__self__);
    }
    public static function _base(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked):stdgo.GoUIntptr {
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._base(__self__);
    }
    public static function _allocBitsForIndex(__self__:stdgo._internal.runtime.Runtime_T_sweepLocked.T_sweepLocked, _0:stdgo.GoUIntptr):T_markBits {
        final _0 = (_0 : stdgo.GoUIntptr);
        return stdgo._internal.runtime.Runtime_T_sweepLocked_static_extension.T_sweepLocked_static_extension._allocBitsForIndex(__self__, _0);
    }
}
