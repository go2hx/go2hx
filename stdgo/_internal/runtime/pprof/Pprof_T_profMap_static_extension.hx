package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3893065:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3892368:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _h_3892115:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _last_3892336:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3892139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3892144_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3892783:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3892488:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3892115 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892228i32;
                    } else {
                        _gotoNext = 3892232i32;
                    };
                } else if (__value__ == (3892154i32)) {
                    _x_3892139 = _stk[(_i_3892144_0 : stdgo.GoInt)];
                    _h_3892115 = ((_h_3892115 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892115 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892115 = (_h_3892115 + (((_x_3892139 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3892144_0++;
                    _gotoNext = 3892229i32;
                } else if (__value__ == (3892228i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3892144_0 = __tmp__0;
                        _x_3892139 = __tmp__1;
                    };
                    _gotoNext = 3892229i32;
                } else if (__value__ == (3892229i32)) {
                    if (_i_3892144_0 < (_stk.length)) {
                        _gotoNext = 3892154i32;
                    } else {
                        _gotoNext = 3892232i32;
                    };
                } else if (__value__ == (3892232i32)) {
                    _h_3892115 = ((_h_3892115 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892115 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892115 = (_h_3892115 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3892355i32;
                } else if (__value__ == (3892355i32)) {
                    _e_3892368 = (_m._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892364i32)) {
                    if (!searchBreak && ((_e_3892368 != null && ((_e_3892368 : Dynamic).__nil__ == null || !(_e_3892368 : Dynamic).__nil__)))) {
                        _gotoNext = 3892418i32;
                    } else {
                        _gotoNext = 3892721i32;
                    };
                } else if (__value__ == (3892418i32)) {
                    if (((_e_3892368._stk.length != (_stk.length)) || (_e_3892368._tag != _tag) : Bool)) {
                        _gotoNext = 3892464i32;
                    } else {
                        _gotoNext = 3892484i32;
                    };
                } else if (__value__ == (3892464i32)) {
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = _e_3892368._nextHash;
                        _last_3892336 = __tmp__0;
                        _e_3892368 = __tmp__1;
                    };
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892484i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892567i32;
                    } else {
                        _gotoNext = 3892592i32;
                    };
                } else if (__value__ == (3892488i32)) {
                    _j_3892488++;
                    _gotoNext = 3892568i32;
                } else if (__value__ == (3892503i32)) {
                    if (_e_3892368._stk[(_j_3892488 : stdgo.GoInt)] != ((_stk[(_j_3892488 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3892539i32;
                    } else {
                        _gotoNext = 3892488i32;
                    };
                } else if (__value__ == (3892539i32)) {
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = _e_3892368._nextHash;
                        _last_3892336 = __tmp__0;
                        _e_3892368 = __tmp__1;
                    };
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892567i32)) {
                    _j_3892488 = 0i32;
                    _gotoNext = 3892568i32;
                } else if (__value__ == (3892568i32)) {
                    if (_j_3892488 < (_stk.length)) {
                        _gotoNext = 3892503i32;
                    } else {
                        _gotoNext = 3892592i32;
                    };
                } else if (__value__ == (3892592i32)) {
                    if ((_last_3892336 != null && ((_last_3892336 : Dynamic).__nil__ == null || !(_last_3892336 : Dynamic).__nil__))) {
                        _gotoNext = 3892607i32;
                    } else {
                        _gotoNext = 3892688i32;
                    };
                } else if (__value__ == (3892607i32)) {
                    _last_3892336._nextHash = _e_3892368._nextHash;
                    _e_3892368._nextHash = (_m._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _m._hash[_h_3892115] = _e_3892368;
                    _gotoNext = 3892688i32;
                } else if (__value__ == (3892688i32)) {
                    return _e_3892368;
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = _e_3892368._nextHash;
                        _last_3892336 = __tmp__0;
                        _e_3892368 = __tmp__1;
                    };
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892721i32)) {
                    if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3892740i32;
                    } else {
                        _gotoNext = 3892783i32;
                    };
                } else if (__value__ == (3892740i32)) {
                    _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3892783i32;
                } else if (__value__ == (3892783i32)) {
                    _e_3892783 = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _e_3892783._nextHash = (_m._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    _e_3892783._tag = _tag;
                    if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3892888i32;
                    } else {
                        _gotoNext = 3892987i32;
                    };
                } else if (__value__ == (3892888i32)) {
                    _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3892987i32;
                } else if (__value__ == (3892987i32)) {
                    _e_3892783._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3893111i32;
                    } else {
                        _gotoNext = 3893115i32;
                    };
                } else if (__value__ == (3893080i32)) {
                    _e_3892783._stk[(_j_3893065 : stdgo.GoInt)] = (_stk[(_j_3893065 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3893065++;
                    _gotoNext = 3893112i32;
                } else if (__value__ == (3893111i32)) {
                    _j_3893065 = 0i32;
                    _gotoNext = 3893112i32;
                } else if (__value__ == (3893112i32)) {
                    if (_j_3893065 < (_stk.length)) {
                        _gotoNext = 3893080i32;
                    } else {
                        _gotoNext = 3893115i32;
                    };
                } else if (__value__ == (3893115i32)) {
                    if (_m._hash == null) {
                        _gotoNext = 3893132i32;
                    } else {
                        _gotoNext = 3893181i32;
                    };
                } else if (__value__ == (3893132i32)) {
                    _m._hash = ({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3893181i32;
                } else if (__value__ == (3893181i32)) {
                    _m._hash[_h_3892115] = _e_3892783;
                    if ((_m._all == null || (_m._all : Dynamic).__nil__)) {
                        _gotoNext = 3893212i32;
                    } else {
                        _gotoNext = 3893247i32;
                    };
                } else if (__value__ == (3893212i32)) {
                    _m._all = _e_3892783;
                    _m._last = _e_3892783;
                    _gotoNext = 3893287i32;
                } else if (__value__ == (3893247i32)) {
                    _gotoNext = 3893247i32;
                    _m._last._nextAll = _e_3892783;
                    _m._last = _e_3892783;
                    var __blank__ = 0i32;
                    _gotoNext = 3893287i32;
                } else if (__value__ == (3893287i32)) {
                    return _e_3892783;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
