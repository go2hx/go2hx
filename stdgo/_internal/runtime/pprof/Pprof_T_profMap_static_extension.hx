package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _h_3866312:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var searchBreak = false;
        var _e_3866565:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3866533:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3866336:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3866341_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3866685:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3867262:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3866980:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3866312 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866425i32;
                    } else {
                        _gotoNext = 3866429i32;
                    };
                } else if (__value__ == (3866351i32)) {
                    _x_3866336 = _stk[(_i_3866341_0 : stdgo.GoInt)];
                    _h_3866312 = ((_h_3866312 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3866312 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3866312 = (_h_3866312 + (((_x_3866336 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3866341_0++;
                    _gotoNext = 3866426i32;
                } else if (__value__ == (3866425i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3866341_0 = __tmp__0;
                        _x_3866336 = __tmp__1;
                    };
                    _gotoNext = 3866426i32;
                } else if (__value__ == (3866426i32)) {
                    if (_i_3866341_0 < (_stk.length)) {
                        _gotoNext = 3866351i32;
                    } else {
                        _gotoNext = 3866429i32;
                    };
                } else if (__value__ == (3866429i32)) {
                    _h_3866312 = ((_h_3866312 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3866312 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3866312 = (_h_3866312 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3866552i32;
                } else if (__value__ == (3866552i32)) {
                    _e_3866565 = (_m._hash[_h_3866312] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3866561i32;
                } else if (__value__ == (3866561i32)) {
                    if (!searchBreak && ((_e_3866565 != null && ((_e_3866565 : Dynamic).__nil__ == null || !(_e_3866565 : Dynamic).__nil__)))) {
                        _gotoNext = 3866615i32;
                    } else {
                        _gotoNext = 3866918i32;
                    };
                } else if (__value__ == (3866615i32)) {
                    if (((_e_3866565._stk.length != (_stk.length)) || (_e_3866565._tag != _tag) : Bool)) {
                        _gotoNext = 3866661i32;
                    } else {
                        _gotoNext = 3866681i32;
                    };
                } else if (__value__ == (3866661i32)) {
                    {
                        final __tmp__0 = _e_3866565;
                        final __tmp__1 = _e_3866565._nextHash;
                        _last_3866533 = __tmp__0;
                        _e_3866565 = __tmp__1;
                    };
                    _gotoNext = 3866561i32;
                } else if (__value__ == (3866681i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866764i32;
                    } else {
                        _gotoNext = 3866789i32;
                    };
                } else if (__value__ == (3866685i32)) {
                    _j_3866685++;
                    _gotoNext = 3866765i32;
                } else if (__value__ == (3866700i32)) {
                    if (_e_3866565._stk[(_j_3866685 : stdgo.GoInt)] != ((_stk[(_j_3866685 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3866736i32;
                    } else {
                        _gotoNext = 3866685i32;
                    };
                } else if (__value__ == (3866736i32)) {
                    {
                        final __tmp__0 = _e_3866565;
                        final __tmp__1 = _e_3866565._nextHash;
                        _last_3866533 = __tmp__0;
                        _e_3866565 = __tmp__1;
                    };
                    _gotoNext = 3866561i32;
                } else if (__value__ == (3866764i32)) {
                    _j_3866685 = 0i32;
                    _gotoNext = 3866765i32;
                } else if (__value__ == (3866765i32)) {
                    if (_j_3866685 < (_stk.length)) {
                        _gotoNext = 3866700i32;
                    } else {
                        _gotoNext = 3866789i32;
                    };
                } else if (__value__ == (3866789i32)) {
                    if ((_last_3866533 != null && ((_last_3866533 : Dynamic).__nil__ == null || !(_last_3866533 : Dynamic).__nil__))) {
                        _gotoNext = 3866804i32;
                    } else {
                        _gotoNext = 3866885i32;
                    };
                } else if (__value__ == (3866804i32)) {
                    _last_3866533._nextHash = _e_3866565._nextHash;
                    _e_3866565._nextHash = (_m._hash[_h_3866312] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3866312] = _e_3866565;
                    _gotoNext = 3866885i32;
                } else if (__value__ == (3866885i32)) {
                    return _e_3866565;
                    {
                        final __tmp__0 = _e_3866565;
                        final __tmp__1 = _e_3866565._nextHash;
                        _last_3866533 = __tmp__0;
                        _e_3866565 = __tmp__1;
                    };
                    _gotoNext = 3866561i32;
                } else if (__value__ == (3866918i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3866937i32;
                    } else {
                        _gotoNext = 3866980i32;
                    };
                } else if (__value__ == (3866937i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3866980i32;
                } else if (__value__ == (3866980i32)) {
                    _e_3866980 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3866980._nextHash = (_m._hash[_h_3866312] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3866980._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3867085i32;
                    } else {
                        _gotoNext = 3867184i32;
                    };
                } else if (__value__ == (3867085i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3867184i32;
                } else if (__value__ == (3867184i32)) {
                    _e_3866980._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867308i32;
                    } else {
                        _gotoNext = 3867312i32;
                    };
                } else if (__value__ == (3867277i32)) {
                    _e_3866980._stk[(_j_3867262 : stdgo.GoInt)] = (_stk[(_j_3867262 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3867262++;
                    _gotoNext = 3867309i32;
                } else if (__value__ == (3867308i32)) {
                    _j_3867262 = 0i32;
                    _gotoNext = 3867309i32;
                } else if (__value__ == (3867309i32)) {
                    if (_j_3867262 < (_stk.length)) {
                        _gotoNext = 3867277i32;
                    } else {
                        _gotoNext = 3867312i32;
                    };
                } else if (__value__ == (3867312i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3867329i32;
                    } else {
                        _gotoNext = 3867378i32;
                    };
                } else if (__value__ == (3867329i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867378i32)) {
                    _m._hash[_h_3866312] = _e_3866980;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3867409i32;
                    } else {
                        _gotoNext = 3867444i32;
                    };
                } else if (__value__ == (3867409i32)) {
                    _m._all = _e_3866980;
                    _m._last = _e_3866980;
                    _gotoNext = 3867484i32;
                } else if (__value__ == (3867444i32)) {
                    _gotoNext = 3867444i32;
                    _m._last._nextAll = _e_3866980;
                    _m._last = _e_3866980;
                    var __blank__ = 0i32;
                    _gotoNext = 3867484i32;
                } else if (__value__ == (3867484i32)) {
                    return _e_3866980;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
