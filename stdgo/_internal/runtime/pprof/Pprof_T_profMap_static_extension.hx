package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _last_3866065:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3865868:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _e_3866512:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3866217:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_3865873_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3865844:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3866794:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3866097:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3865844 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865957i32;
                    } else {
                        _gotoNext = 3865961i32;
                    };
                } else if (__value__ == (3865883i32)) {
                    _x_3865868 = _stk[(_i_3865873_0 : stdgo.GoInt)];
                    _h_3865844 = ((_h_3865844 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3865844 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3865844 = (_h_3865844 + (((_x_3865868 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3865873_0++;
                    _gotoNext = 3865958i32;
                } else if (__value__ == (3865957i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3865873_0 = __tmp__0;
                        _x_3865868 = __tmp__1;
                    };
                    _gotoNext = 3865958i32;
                } else if (__value__ == (3865958i32)) {
                    if (_i_3865873_0 < (_stk.length)) {
                        _gotoNext = 3865883i32;
                    } else {
                        _gotoNext = 3865961i32;
                    };
                } else if (__value__ == (3865961i32)) {
                    _h_3865844 = ((_h_3865844 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3865844 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3865844 = (_h_3865844 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3866084i32;
                } else if (__value__ == (3866084i32)) {
                    _e_3866097 = (_m._hash[_h_3865844] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866093i32)) {
                    if (!searchBreak && ((_e_3866097 != null && ((_e_3866097 : Dynamic).__nil__ == null || !(_e_3866097 : Dynamic).__nil__)))) {
                        _gotoNext = 3866147i32;
                    } else {
                        _gotoNext = 3866450i32;
                    };
                } else if (__value__ == (3866147i32)) {
                    if (((_e_3866097._stk.length != (_stk.length)) || (_e_3866097._tag != _tag) : Bool)) {
                        _gotoNext = 3866193i32;
                    } else {
                        _gotoNext = 3866213i32;
                    };
                } else if (__value__ == (3866193i32)) {
                    {
                        final __tmp__0 = _e_3866097;
                        final __tmp__1 = _e_3866097._nextHash;
                        _last_3866065 = __tmp__0;
                        _e_3866097 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866213i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866296i32;
                    } else {
                        _gotoNext = 3866321i32;
                    };
                } else if (__value__ == (3866217i32)) {
                    _j_3866217++;
                    _gotoNext = 3866297i32;
                } else if (__value__ == (3866232i32)) {
                    if (_e_3866097._stk[(_j_3866217 : stdgo.GoInt)] != ((_stk[(_j_3866217 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3866268i32;
                    } else {
                        _gotoNext = 3866217i32;
                    };
                } else if (__value__ == (3866268i32)) {
                    {
                        final __tmp__0 = _e_3866097;
                        final __tmp__1 = _e_3866097._nextHash;
                        _last_3866065 = __tmp__0;
                        _e_3866097 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866296i32)) {
                    _j_3866217 = 0i32;
                    _gotoNext = 3866297i32;
                } else if (__value__ == (3866297i32)) {
                    if (_j_3866217 < (_stk.length)) {
                        _gotoNext = 3866232i32;
                    } else {
                        _gotoNext = 3866321i32;
                    };
                } else if (__value__ == (3866321i32)) {
                    if ((_last_3866065 != null && ((_last_3866065 : Dynamic).__nil__ == null || !(_last_3866065 : Dynamic).__nil__))) {
                        _gotoNext = 3866336i32;
                    } else {
                        _gotoNext = 3866417i32;
                    };
                } else if (__value__ == (3866336i32)) {
                    _last_3866065._nextHash = _e_3866097._nextHash;
                    _e_3866097._nextHash = (_m._hash[_h_3865844] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3865844] = _e_3866097;
                    _gotoNext = 3866417i32;
                } else if (__value__ == (3866417i32)) {
                    return _e_3866097;
                    {
                        final __tmp__0 = _e_3866097;
                        final __tmp__1 = _e_3866097._nextHash;
                        _last_3866065 = __tmp__0;
                        _e_3866097 = __tmp__1;
                    };
                    _gotoNext = 3866093i32;
                } else if (__value__ == (3866450i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866469i32;
                    } else {
                        _gotoNext = 3866512i32;
                    };
                } else if (__value__ == (3866469i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3866512i32;
                } else if (__value__ == (3866512i32)) {
                    _e_3866512 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3866512._nextHash = (_m._hash[_h_3865844] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3866512._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3866617i32;
                    } else {
                        _gotoNext = 3866716i32;
                    };
                } else if (__value__ == (3866617i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3866716i32;
                } else if (__value__ == (3866716i32)) {
                    _e_3866512._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866840i32;
                    } else {
                        _gotoNext = 3866844i32;
                    };
                } else if (__value__ == (3866809i32)) {
                    _e_3866512._stk[(_j_3866794 : stdgo.GoInt)] = (_stk[(_j_3866794 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3866794++;
                    _gotoNext = 3866841i32;
                } else if (__value__ == (3866840i32)) {
                    _j_3866794 = 0i32;
                    _gotoNext = 3866841i32;
                } else if (__value__ == (3866841i32)) {
                    if (_j_3866794 < (_stk.length)) {
                        _gotoNext = 3866809i32;
                    } else {
                        _gotoNext = 3866844i32;
                    };
                } else if (__value__ == (3866844i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3866861i32;
                    } else {
                        _gotoNext = 3866910i32;
                    };
                } else if (__value__ == (3866861i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3866910i32;
                } else if (__value__ == (3866910i32)) {
                    _m._hash[_h_3865844] = _e_3866512;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3866941i32;
                    } else {
                        _gotoNext = 3866976i32;
                    };
                } else if (__value__ == (3866941i32)) {
                    _m._all = _e_3866512;
                    _m._last = _e_3866512;
                    _gotoNext = 3867016i32;
                } else if (__value__ == (3866976i32)) {
                    _gotoNext = 3866976i32;
                    _m._last._nextAll = _e_3866512;
                    _m._last = _e_3866512;
                    var __blank__ = 0i32;
                    _gotoNext = 3867016i32;
                } else if (__value__ == (3867016i32)) {
                    return _e_3866512;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
