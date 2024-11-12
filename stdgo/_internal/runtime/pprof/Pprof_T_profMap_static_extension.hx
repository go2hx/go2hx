package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3867331:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3867049:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var searchBreak = false;
        var _e_3866634:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3866602:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3866754:stdgo.GoInt = (0 : stdgo.GoInt);
        var _x_3866405:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3866410_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3866381:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3866381 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866494i32;
                    } else {
                        _gotoNext = 3866498i32;
                    };
                } else if (__value__ == (3866420i32)) {
                    _x_3866405 = _stk[(_i_3866410_0 : stdgo.GoInt)];
                    _h_3866381 = ((_h_3866381 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3866381 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3866381 = (_h_3866381 + (((_x_3866405 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3866410_0++;
                    _gotoNext = 3866495i32;
                } else if (__value__ == (3866494i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3866410_0 = __tmp__0;
                        _x_3866405 = __tmp__1;
                    };
                    _gotoNext = 3866495i32;
                } else if (__value__ == (3866495i32)) {
                    if (_i_3866410_0 < (_stk.length)) {
                        _gotoNext = 3866420i32;
                    } else {
                        _gotoNext = 3866498i32;
                    };
                } else if (__value__ == (3866498i32)) {
                    _h_3866381 = ((_h_3866381 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3866381 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3866381 = (_h_3866381 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3866621i32;
                } else if (__value__ == (3866621i32)) {
                    _e_3866634 = (_m._hash[_h_3866381] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3866630i32;
                } else if (__value__ == (3866630i32)) {
                    if (!searchBreak && ((_e_3866634 != null && ((_e_3866634 : Dynamic).__nil__ == null || !(_e_3866634 : Dynamic).__nil__)))) {
                        _gotoNext = 3866684i32;
                    } else {
                        _gotoNext = 3866987i32;
                    };
                } else if (__value__ == (3866684i32)) {
                    if (((_e_3866634._stk.length != (_stk.length)) || (_e_3866634._tag != _tag) : Bool)) {
                        _gotoNext = 3866730i32;
                    } else {
                        _gotoNext = 3866750i32;
                    };
                } else if (__value__ == (3866730i32)) {
                    {
                        final __tmp__0 = _e_3866634;
                        final __tmp__1 = _e_3866634._nextHash;
                        _last_3866602 = __tmp__0;
                        _e_3866634 = __tmp__1;
                    };
                    _gotoNext = 3866630i32;
                } else if (__value__ == (3866750i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3866833i32;
                    } else {
                        _gotoNext = 3866858i32;
                    };
                } else if (__value__ == (3866754i32)) {
                    _j_3866754++;
                    _gotoNext = 3866834i32;
                } else if (__value__ == (3866769i32)) {
                    if (_e_3866634._stk[(_j_3866754 : stdgo.GoInt)] != ((_stk[(_j_3866754 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3866805i32;
                    } else {
                        _gotoNext = 3866754i32;
                    };
                } else if (__value__ == (3866805i32)) {
                    {
                        final __tmp__0 = _e_3866634;
                        final __tmp__1 = _e_3866634._nextHash;
                        _last_3866602 = __tmp__0;
                        _e_3866634 = __tmp__1;
                    };
                    _gotoNext = 3866630i32;
                } else if (__value__ == (3866833i32)) {
                    _j_3866754 = 0i32;
                    _gotoNext = 3866834i32;
                } else if (__value__ == (3866834i32)) {
                    if (_j_3866754 < (_stk.length)) {
                        _gotoNext = 3866769i32;
                    } else {
                        _gotoNext = 3866858i32;
                    };
                } else if (__value__ == (3866858i32)) {
                    if ((_last_3866602 != null && ((_last_3866602 : Dynamic).__nil__ == null || !(_last_3866602 : Dynamic).__nil__))) {
                        _gotoNext = 3866873i32;
                    } else {
                        _gotoNext = 3866954i32;
                    };
                } else if (__value__ == (3866873i32)) {
                    _last_3866602._nextHash = _e_3866634._nextHash;
                    _e_3866634._nextHash = (_m._hash[_h_3866381] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3866381] = _e_3866634;
                    _gotoNext = 3866954i32;
                } else if (__value__ == (3866954i32)) {
                    return _e_3866634;
                    {
                        final __tmp__0 = _e_3866634;
                        final __tmp__1 = _e_3866634._nextHash;
                        _last_3866602 = __tmp__0;
                        _e_3866634 = __tmp__1;
                    };
                    _gotoNext = 3866630i32;
                } else if (__value__ == (3866987i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3867006i32;
                    } else {
                        _gotoNext = 3867049i32;
                    };
                } else if (__value__ == (3867006i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3867049i32;
                } else if (__value__ == (3867049i32)) {
                    _e_3867049 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3867049._nextHash = (_m._hash[_h_3866381] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3867049._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3867154i32;
                    } else {
                        _gotoNext = 3867253i32;
                    };
                } else if (__value__ == (3867154i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3867253i32;
                } else if (__value__ == (3867253i32)) {
                    _e_3867049._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3867377i32;
                    } else {
                        _gotoNext = 3867381i32;
                    };
                } else if (__value__ == (3867346i32)) {
                    _e_3867049._stk[(_j_3867331 : stdgo.GoInt)] = (_stk[(_j_3867331 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3867331++;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867377i32)) {
                    _j_3867331 = 0i32;
                    _gotoNext = 3867378i32;
                } else if (__value__ == (3867378i32)) {
                    if (_j_3867331 < (_stk.length)) {
                        _gotoNext = 3867346i32;
                    } else {
                        _gotoNext = 3867381i32;
                    };
                } else if (__value__ == (3867381i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3867398i32;
                    } else {
                        _gotoNext = 3867447i32;
                    };
                } else if (__value__ == (3867398i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3867447i32;
                } else if (__value__ == (3867447i32)) {
                    _m._hash[_h_3866381] = _e_3867049;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3867478i32;
                    } else {
                        _gotoNext = 3867513i32;
                    };
                } else if (__value__ == (3867478i32)) {
                    _m._all = _e_3867049;
                    _m._last = _e_3867049;
                    _gotoNext = 3867553i32;
                } else if (__value__ == (3867513i32)) {
                    _gotoNext = 3867513i32;
                    _m._last._nextAll = _e_3867049;
                    _m._last = _e_3867049;
                    var __blank__ = 0i32;
                    _gotoNext = 3867553i32;
                } else if (__value__ == (3867553i32)) {
                    return _e_3867049;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
