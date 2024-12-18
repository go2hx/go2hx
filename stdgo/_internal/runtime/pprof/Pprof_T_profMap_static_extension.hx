package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3831549:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3830972:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3831267:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _e_3830852:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3830820:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3830623:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3830628_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3830599:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3830599 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3830712i32;
                    } else {
                        _gotoNext = 3830716i32;
                    };
                } else if (__value__ == (3830638i32)) {
                    _x_3830623 = _stk[(_i_3830628_0 : stdgo.GoInt)];
                    _h_3830599 = ((_h_3830599 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3830599 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3830599 = (_h_3830599 + (((_x_3830623 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3830628_0++;
                    _gotoNext = 3830713i32;
                } else if (__value__ == (3830712i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3830628_0 = __tmp__0;
                        _x_3830623 = __tmp__1;
                    };
                    _gotoNext = 3830713i32;
                } else if (__value__ == (3830713i32)) {
                    if (_i_3830628_0 < (_stk.length)) {
                        _gotoNext = 3830638i32;
                    } else {
                        _gotoNext = 3830716i32;
                    };
                } else if (__value__ == (3830716i32)) {
                    _h_3830599 = ((_h_3830599 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3830599 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3830599 = (_h_3830599 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3830839i32;
                } else if (__value__ == (3830839i32)) {
                    _e_3830852 = (_m._hash[_h_3830599] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3830848i32;
                } else if (__value__ == (3830848i32)) {
                    if (!searchBreak && ((_e_3830852 != null && ((_e_3830852 : Dynamic).__nil__ == null || !(_e_3830852 : Dynamic).__nil__)))) {
                        _gotoNext = 3830902i32;
                    } else {
                        _gotoNext = 3831205i32;
                    };
                } else if (__value__ == (3830902i32)) {
                    if (((_e_3830852._stk.length != (_stk.length)) || (_e_3830852._tag != _tag) : Bool)) {
                        _gotoNext = 3830948i32;
                    } else {
                        _gotoNext = 3830968i32;
                    };
                } else if (__value__ == (3830948i32)) {
                    {
                        final __tmp__0 = _e_3830852;
                        final __tmp__1 = _e_3830852._nextHash;
                        _last_3830820 = __tmp__0;
                        _e_3830852 = __tmp__1;
                    };
                    _gotoNext = 3830848i32;
                } else if (__value__ == (3830968i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3831051i32;
                    } else {
                        _gotoNext = 3831076i32;
                    };
                } else if (__value__ == (3830972i32)) {
                    _j_3830972++;
                    _gotoNext = 3831052i32;
                } else if (__value__ == (3830987i32)) {
                    if (_e_3830852._stk[(_j_3830972 : stdgo.GoInt)] != ((_stk[(_j_3830972 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3831023i32;
                    } else {
                        _gotoNext = 3830972i32;
                    };
                } else if (__value__ == (3831023i32)) {
                    {
                        final __tmp__0 = _e_3830852;
                        final __tmp__1 = _e_3830852._nextHash;
                        _last_3830820 = __tmp__0;
                        _e_3830852 = __tmp__1;
                    };
                    _gotoNext = 3830848i32;
                } else if (__value__ == (3831051i32)) {
                    _j_3830972 = 0i32;
                    _gotoNext = 3831052i32;
                } else if (__value__ == (3831052i32)) {
                    if (_j_3830972 < (_stk.length)) {
                        _gotoNext = 3830987i32;
                    } else {
                        _gotoNext = 3831076i32;
                    };
                } else if (__value__ == (3831076i32)) {
                    if ((_last_3830820 != null && ((_last_3830820 : Dynamic).__nil__ == null || !(_last_3830820 : Dynamic).__nil__))) {
                        _gotoNext = 3831091i32;
                    } else {
                        _gotoNext = 3831172i32;
                    };
                } else if (__value__ == (3831091i32)) {
                    _last_3830820._nextHash = _e_3830852._nextHash;
                    _e_3830852._nextHash = (_m._hash[_h_3830599] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3830599] = _e_3830852;
                    _gotoNext = 3831172i32;
                } else if (__value__ == (3831172i32)) {
                    return _e_3830852;
                    {
                        final __tmp__0 = _e_3830852;
                        final __tmp__1 = _e_3830852._nextHash;
                        _last_3830820 = __tmp__0;
                        _e_3830852 = __tmp__1;
                    };
                    _gotoNext = 3830848i32;
                } else if (__value__ == (3831205i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3831224i32;
                    } else {
                        _gotoNext = 3831267i32;
                    };
                } else if (__value__ == (3831224i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3831267i32;
                } else if (__value__ == (3831267i32)) {
                    _e_3831267 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3831267._nextHash = (_m._hash[_h_3830599] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3831267._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3831372i32;
                    } else {
                        _gotoNext = 3831471i32;
                    };
                } else if (__value__ == (3831372i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3831471i32;
                } else if (__value__ == (3831471i32)) {
                    _e_3831267._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3831595i32;
                    } else {
                        _gotoNext = 3831599i32;
                    };
                } else if (__value__ == (3831564i32)) {
                    _e_3831267._stk[(_j_3831549 : stdgo.GoInt)] = (_stk[(_j_3831549 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3831549++;
                    _gotoNext = 3831596i32;
                } else if (__value__ == (3831595i32)) {
                    _j_3831549 = 0i32;
                    _gotoNext = 3831596i32;
                } else if (__value__ == (3831596i32)) {
                    if (_j_3831549 < (_stk.length)) {
                        _gotoNext = 3831564i32;
                    } else {
                        _gotoNext = 3831599i32;
                    };
                } else if (__value__ == (3831599i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3831616i32;
                    } else {
                        _gotoNext = 3831665i32;
                    };
                } else if (__value__ == (3831616i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3831665i32;
                } else if (__value__ == (3831665i32)) {
                    _m._hash[_h_3830599] = _e_3831267;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3831696i32;
                    } else {
                        _gotoNext = 3831731i32;
                    };
                } else if (__value__ == (3831696i32)) {
                    _m._all = _e_3831267;
                    _m._last = _e_3831267;
                    _gotoNext = 3831771i32;
                } else if (__value__ == (3831731i32)) {
                    _gotoNext = 3831731i32;
                    _m._last._nextAll = _e_3831267;
                    _m._last = _e_3831267;
                    var __blank__ = 0i32;
                    _gotoNext = 3831771i32;
                } else if (__value__ == (3831771i32)) {
                    return _e_3831267;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
