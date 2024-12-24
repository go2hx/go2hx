package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3895053:stdgo.GoInt = (0 : stdgo.GoInt);
        var _last_3894901:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3894704:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3894709_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3894680:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3895630:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3895348:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _e_3894933:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3894680 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3894793i32;
                    } else {
                        _gotoNext = 3894797i32;
                    };
                } else if (__value__ == (3894719i32)) {
                    _x_3894704 = _stk[(_i_3894709_0 : stdgo.GoInt)];
                    _h_3894680 = ((_h_3894680 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3894680 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3894680 = (_h_3894680 + (((_x_3894704 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3894709_0++;
                    _gotoNext = 3894794i32;
                } else if (__value__ == (3894793i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3894709_0 = __tmp__0;
                        _x_3894704 = __tmp__1;
                    };
                    _gotoNext = 3894794i32;
                } else if (__value__ == (3894794i32)) {
                    if (_i_3894709_0 < (_stk.length)) {
                        _gotoNext = 3894719i32;
                    } else {
                        _gotoNext = 3894797i32;
                    };
                } else if (__value__ == (3894797i32)) {
                    _h_3894680 = ((_h_3894680 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3894680 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3894680 = (_h_3894680 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3894920i32;
                } else if (__value__ == (3894920i32)) {
                    _e_3894933 = (_m._hash[_h_3894680] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3894929i32;
                } else if (__value__ == (3894929i32)) {
                    if (!searchBreak && ((_e_3894933 != null && ((_e_3894933 : Dynamic).__nil__ == null || !(_e_3894933 : Dynamic).__nil__)))) {
                        _gotoNext = 3894983i32;
                    } else {
                        _gotoNext = 3895286i32;
                    };
                } else if (__value__ == (3894983i32)) {
                    if (((_e_3894933._stk.length != (_stk.length)) || (_e_3894933._tag != _tag) : Bool)) {
                        _gotoNext = 3895029i32;
                    } else {
                        _gotoNext = 3895049i32;
                    };
                } else if (__value__ == (3895029i32)) {
                    {
                        final __tmp__0 = _e_3894933;
                        final __tmp__1 = _e_3894933._nextHash;
                        _last_3894901 = __tmp__0;
                        _e_3894933 = __tmp__1;
                    };
                    _gotoNext = 3894929i32;
                } else if (__value__ == (3895049i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895132i32;
                    } else {
                        _gotoNext = 3895157i32;
                    };
                } else if (__value__ == (3895053i32)) {
                    _j_3895053++;
                    _gotoNext = 3895133i32;
                } else if (__value__ == (3895068i32)) {
                    if (_e_3894933._stk[(_j_3895053 : stdgo.GoInt)] != ((_stk[(_j_3895053 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3895104i32;
                    } else {
                        _gotoNext = 3895053i32;
                    };
                } else if (__value__ == (3895104i32)) {
                    {
                        final __tmp__0 = _e_3894933;
                        final __tmp__1 = _e_3894933._nextHash;
                        _last_3894901 = __tmp__0;
                        _e_3894933 = __tmp__1;
                    };
                    _gotoNext = 3894929i32;
                } else if (__value__ == (3895132i32)) {
                    _j_3895053 = 0i32;
                    _gotoNext = 3895133i32;
                } else if (__value__ == (3895133i32)) {
                    if (_j_3895053 < (_stk.length)) {
                        _gotoNext = 3895068i32;
                    } else {
                        _gotoNext = 3895157i32;
                    };
                } else if (__value__ == (3895157i32)) {
                    if ((_last_3894901 != null && ((_last_3894901 : Dynamic).__nil__ == null || !(_last_3894901 : Dynamic).__nil__))) {
                        _gotoNext = 3895172i32;
                    } else {
                        _gotoNext = 3895253i32;
                    };
                } else if (__value__ == (3895172i32)) {
                    _last_3894901._nextHash = _e_3894933._nextHash;
                    _e_3894933._nextHash = (_m._hash[_h_3894680] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3894680] = _e_3894933;
                    _gotoNext = 3895253i32;
                } else if (__value__ == (3895253i32)) {
                    return _e_3894933;
                    {
                        final __tmp__0 = _e_3894933;
                        final __tmp__1 = _e_3894933._nextHash;
                        _last_3894901 = __tmp__0;
                        _e_3894933 = __tmp__1;
                    };
                    _gotoNext = 3894929i32;
                } else if (__value__ == (3895286i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3895305i32;
                    } else {
                        _gotoNext = 3895348i32;
                    };
                } else if (__value__ == (3895305i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3895348i32;
                } else if (__value__ == (3895348i32)) {
                    _e_3895348 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3895348._nextHash = (_m._hash[_h_3894680] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3895348._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3895453i32;
                    } else {
                        _gotoNext = 3895552i32;
                    };
                } else if (__value__ == (3895453i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3895552i32;
                } else if (__value__ == (3895552i32)) {
                    _e_3895348._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895676i32;
                    } else {
                        _gotoNext = 3895680i32;
                    };
                } else if (__value__ == (3895645i32)) {
                    _e_3895348._stk[(_j_3895630 : stdgo.GoInt)] = (_stk[(_j_3895630 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3895630++;
                    _gotoNext = 3895677i32;
                } else if (__value__ == (3895676i32)) {
                    _j_3895630 = 0i32;
                    _gotoNext = 3895677i32;
                } else if (__value__ == (3895677i32)) {
                    if (_j_3895630 < (_stk.length)) {
                        _gotoNext = 3895645i32;
                    } else {
                        _gotoNext = 3895680i32;
                    };
                } else if (__value__ == (3895680i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3895697i32;
                    } else {
                        _gotoNext = 3895746i32;
                    };
                } else if (__value__ == (3895697i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3895746i32;
                } else if (__value__ == (3895746i32)) {
                    _m._hash[_h_3894680] = _e_3895348;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3895777i32;
                    } else {
                        _gotoNext = 3895812i32;
                    };
                } else if (__value__ == (3895777i32)) {
                    _m._all = _e_3895348;
                    _m._last = _e_3895348;
                    _gotoNext = 3895852i32;
                } else if (__value__ == (3895812i32)) {
                    _gotoNext = 3895812i32;
                    _m._last._nextAll = _e_3895348;
                    _m._last = _e_3895348;
                    var __blank__ = 0i32;
                    _gotoNext = 3895852i32;
                } else if (__value__ == (3895852i32)) {
                    return _e_3895348;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
