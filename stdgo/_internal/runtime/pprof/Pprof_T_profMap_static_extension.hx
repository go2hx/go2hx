package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _e_3887703:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3887474:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3887479_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3888400:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3888118:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _j_3887823:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3887671:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _h_3887450:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3887450 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3887563i32;
                    } else {
                        _gotoNext = 3887567i32;
                    };
                } else if (__value__ == (3887489i32)) {
                    _x_3887474 = _stk[(_i_3887479_0 : stdgo.GoInt)];
                    _h_3887450 = ((_h_3887450 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3887450 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3887450 = (_h_3887450 + (((_x_3887474 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3887479_0++;
                    _gotoNext = 3887564i32;
                } else if (__value__ == (3887563i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3887479_0 = __tmp__0;
                        _x_3887474 = __tmp__1;
                    };
                    _gotoNext = 3887564i32;
                } else if (__value__ == (3887564i32)) {
                    if (_i_3887479_0 < (_stk.length)) {
                        _gotoNext = 3887489i32;
                    } else {
                        _gotoNext = 3887567i32;
                    };
                } else if (__value__ == (3887567i32)) {
                    _h_3887450 = ((_h_3887450 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3887450 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3887450 = (_h_3887450 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3887690i32;
                } else if (__value__ == (3887690i32)) {
                    _e_3887703 = (_m._hash[_h_3887450] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3887699i32;
                } else if (__value__ == (3887699i32)) {
                    if (!searchBreak && ((_e_3887703 != null && ((_e_3887703 : Dynamic).__nil__ == null || !(_e_3887703 : Dynamic).__nil__)))) {
                        _gotoNext = 3887753i32;
                    } else {
                        _gotoNext = 3888056i32;
                    };
                } else if (__value__ == (3887753i32)) {
                    if (((_e_3887703._stk.length != (_stk.length)) || (_e_3887703._tag != _tag) : Bool)) {
                        _gotoNext = 3887799i32;
                    } else {
                        _gotoNext = 3887819i32;
                    };
                } else if (__value__ == (3887799i32)) {
                    {
                        final __tmp__0 = _e_3887703;
                        final __tmp__1 = _e_3887703._nextHash;
                        _last_3887671 = __tmp__0;
                        _e_3887703 = __tmp__1;
                    };
                    _gotoNext = 3887699i32;
                } else if (__value__ == (3887819i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3887902i32;
                    } else {
                        _gotoNext = 3887927i32;
                    };
                } else if (__value__ == (3887823i32)) {
                    _j_3887823++;
                    _gotoNext = 3887903i32;
                } else if (__value__ == (3887838i32)) {
                    if (_e_3887703._stk[(_j_3887823 : stdgo.GoInt)] != ((_stk[(_j_3887823 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3887874i32;
                    } else {
                        _gotoNext = 3887823i32;
                    };
                } else if (__value__ == (3887874i32)) {
                    {
                        final __tmp__0 = _e_3887703;
                        final __tmp__1 = _e_3887703._nextHash;
                        _last_3887671 = __tmp__0;
                        _e_3887703 = __tmp__1;
                    };
                    _gotoNext = 3887699i32;
                } else if (__value__ == (3887902i32)) {
                    _j_3887823 = 0i32;
                    _gotoNext = 3887903i32;
                } else if (__value__ == (3887903i32)) {
                    if (_j_3887823 < (_stk.length)) {
                        _gotoNext = 3887838i32;
                    } else {
                        _gotoNext = 3887927i32;
                    };
                } else if (__value__ == (3887927i32)) {
                    if ((_last_3887671 != null && ((_last_3887671 : Dynamic).__nil__ == null || !(_last_3887671 : Dynamic).__nil__))) {
                        _gotoNext = 3887942i32;
                    } else {
                        _gotoNext = 3888023i32;
                    };
                } else if (__value__ == (3887942i32)) {
                    _last_3887671._nextHash = _e_3887703._nextHash;
                    _e_3887703._nextHash = (_m._hash[_h_3887450] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3887450] = _e_3887703;
                    _gotoNext = 3888023i32;
                } else if (__value__ == (3888023i32)) {
                    return _e_3887703;
                    {
                        final __tmp__0 = _e_3887703;
                        final __tmp__1 = _e_3887703._nextHash;
                        _last_3887671 = __tmp__0;
                        _e_3887703 = __tmp__1;
                    };
                    _gotoNext = 3887699i32;
                } else if (__value__ == (3888056i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3888075i32;
                    } else {
                        _gotoNext = 3888118i32;
                    };
                } else if (__value__ == (3888075i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3888118i32;
                } else if (__value__ == (3888118i32)) {
                    _e_3888118 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3888118._nextHash = (_m._hash[_h_3887450] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3888118._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3888223i32;
                    } else {
                        _gotoNext = 3888322i32;
                    };
                } else if (__value__ == (3888223i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3888322i32;
                } else if (__value__ == (3888322i32)) {
                    _e_3888118._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3888446i32;
                    } else {
                        _gotoNext = 3888450i32;
                    };
                } else if (__value__ == (3888415i32)) {
                    _e_3888118._stk[(_j_3888400 : stdgo.GoInt)] = (_stk[(_j_3888400 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3888400++;
                    _gotoNext = 3888447i32;
                } else if (__value__ == (3888446i32)) {
                    _j_3888400 = 0i32;
                    _gotoNext = 3888447i32;
                } else if (__value__ == (3888447i32)) {
                    if (_j_3888400 < (_stk.length)) {
                        _gotoNext = 3888415i32;
                    } else {
                        _gotoNext = 3888450i32;
                    };
                } else if (__value__ == (3888450i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3888467i32;
                    } else {
                        _gotoNext = 3888516i32;
                    };
                } else if (__value__ == (3888467i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3888516i32;
                } else if (__value__ == (3888516i32)) {
                    _m._hash[_h_3887450] = _e_3888118;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3888547i32;
                    } else {
                        _gotoNext = 3888582i32;
                    };
                } else if (__value__ == (3888547i32)) {
                    _m._all = _e_3888118;
                    _m._last = _e_3888118;
                    _gotoNext = 3888622i32;
                } else if (__value__ == (3888582i32)) {
                    _gotoNext = 3888582i32;
                    _m._last._nextAll = _e_3888118;
                    _m._last = _e_3888118;
                    var __blank__ = 0i32;
                    _gotoNext = 3888622i32;
                } else if (__value__ == (3888622i32)) {
                    return _e_3888118;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
