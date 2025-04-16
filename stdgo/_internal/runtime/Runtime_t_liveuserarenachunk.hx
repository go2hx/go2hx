package stdgo._internal.runtime;
@:structInit @:using(stdgo._internal.runtime.Runtime_t_liveuserarenachunk_static_extension.T_liveUserArenaChunk_static_extension) class T_liveUserArenaChunk {
    @:embedded
    public var _mspan : stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan> = (null : stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan>);
    public function new(?_mspan:stdgo.Ref<stdgo._internal.runtime.Runtime_t_mspan.T_mspan>) {
        if (_mspan != null) this._mspan = _mspan;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var _allocBitsForIndex(get, never) : stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits;
    @:embedded
    @:embeddededffieldsffun
    public function get__allocBitsForIndex():stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:check32 this._mspan._allocBitsForIndex;
    public var _base(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__base():() -> stdgo.GoUIntptr return @:check32 this._mspan._base;
    public var _countAlloc(get, never) : () -> stdgo.GoInt;
    @:embedded
    @:embeddededffieldsffun
    public function get__countAlloc():() -> stdgo.GoInt return @:check32 this._mspan._countAlloc;
    public var _decPinCounter(get, never) : stdgo.GoUIntptr -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__decPinCounter():stdgo.GoUIntptr -> Bool return @:check32 this._mspan._decPinCounter;
    public var _divideByElemSize(get, never) : stdgo.GoUIntptr -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__divideByElemSize():stdgo.GoUIntptr -> stdgo.GoUIntptr return @:check32 this._mspan._divideByElemSize;
    public var _ensureSwept(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__ensureSwept():() -> Void return @:check32 this._mspan._ensureSwept;
    public var _getPinnerBits(get, never) : () -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getPinnerBits():() -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:check32 this._mspan._getPinnerBits;
    public var _inList(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__inList():() -> Bool return @:check32 this._mspan._inList;
    public var _incPinCounter(get, never) : stdgo.GoUIntptr -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__incPinCounter():stdgo.GoUIntptr -> Void return @:check32 this._mspan._incPinCounter;
    public var _init(get, never) : (stdgo.GoUIntptr, stdgo.GoUIntptr) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__init():(stdgo.GoUIntptr, stdgo.GoUIntptr) -> Void return @:check32 this._mspan._init;
    public var _initHeapBits(get, never) : Bool -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__initHeapBits():Bool -> Void return @:check32 this._mspan._initHeapBits;
    public var _isFree(get, never) : stdgo.GoUIntptr -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isFree():stdgo.GoUIntptr -> Bool return @:check32 this._mspan._isFree;
    public var _isUnusedUserArenaChunk(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isUnusedUserArenaChunk():() -> Bool return @:check32 this._mspan._isUnusedUserArenaChunk;
    public var _layout(get, never) : () -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; };
    @:embedded
    @:embeddededffieldsffun
    public function get__layout():() -> { var _0 : stdgo.GoUIntptr; var _1 : stdgo.GoUIntptr; var _2 : stdgo.GoUIntptr; } return @:check32 this._mspan._layout;
    public var _markBitsForBase(get, never) : () -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits;
    @:embedded
    @:embeddededffieldsffun
    public function get__markBitsForBase():() -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:check32 this._mspan._markBitsForBase;
    public var _markBitsForIndex(get, never) : stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits;
    @:embedded
    @:embeddededffieldsffun
    public function get__markBitsForIndex():stdgo.GoUIntptr -> stdgo._internal.runtime.Runtime_t_markbits.T_markBits return @:check32 this._mspan._markBitsForIndex;
    public var _newPinnerBits(get, never) : () -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits>;
    @:embedded
    @:embeddededffieldsffun
    public function get__newPinnerBits():() -> stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> return @:check32 this._mspan._newPinnerBits;
    public var _nextFreeIndex(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__nextFreeIndex():() -> stdgo.GoUIntptr return @:check32 this._mspan._nextFreeIndex;
    public var _objIndex(get, never) : stdgo.GoUIntptr -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__objIndex():stdgo.GoUIntptr -> stdgo.GoUIntptr return @:check32 this._mspan._objIndex;
    public var _pinnerBitSize(get, never) : () -> stdgo.GoUIntptr;
    @:embedded
    @:embeddededffieldsffun
    public function get__pinnerBitSize():() -> stdgo.GoUIntptr return @:check32 this._mspan._pinnerBitSize;
    public var _refillAllocCache(get, never) : stdgo.GoUIntptr -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__refillAllocCache():stdgo.GoUIntptr -> Void return @:check32 this._mspan._refillAllocCache;
    public var _refreshPinnerBits(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__refreshPinnerBits():() -> Void return @:check32 this._mspan._refreshPinnerBits;
    public var _reportZombies(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__reportZombies():() -> Void return @:check32 this._mspan._reportZombies;
    public var _setPinnerBits(get, never) : stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setPinnerBits():stdgo.Ref<stdgo._internal.runtime.Runtime_t_pinnerbits.T_pinnerBits> -> Void return @:check32 this._mspan._setPinnerBits;
    public var _setUserArenaChunkToFault(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__setUserArenaChunkToFault():() -> Void return @:check32 this._mspan._setUserArenaChunkToFault;
    public var _specialFindSplicePoint(get, never) : (stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.Pointer<stdgo.Ref<stdgo._internal.runtime.Runtime_t_special.T_special>>; var _1 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get__specialFindSplicePoint():(stdgo.GoUIntptr, stdgo.GoUInt8) -> { var _0 : stdgo.Pointer<stdgo.Ref<stdgo._internal.runtime.Runtime_t_special.T_special>>; var _1 : Bool; } return @:check32 this._mspan._specialFindSplicePoint;
    public var _userArenaNextFree(get, never) : (stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, stdgo.GoInt) -> stdgo._internal.unsafe.Unsafe.UnsafePointer;
    @:embedded
    @:embeddededffieldsffun
    public function get__userArenaNextFree():(stdgo.Ref<stdgo._internal.internal.abi.Abi_type_.Type_>, stdgo.GoInt) -> stdgo._internal.unsafe.Unsafe.UnsafePointer return @:check32 this._mspan._userArenaNextFree;
    public function __copy__() {
        return new T_liveUserArenaChunk(_mspan);
    }
}
