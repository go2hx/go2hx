package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _last_3892336:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3892139:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3892144_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3892115:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_3892488:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3892368:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3893065:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3892783:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3892115 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3892228i32;
                    } else {
                        _gotoNext = 3892232i32;
                    };
                } else if (__value__ == (3892154i32)) {
                    _x_3892139 = _stk[(_i_3892144_0 : stdgo.GoInt)];
                    _h_3892115 = ((_h_3892115 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892115 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892115 = (_h_3892115 + (((new stdgo.GoUIntptr(_x_3892139) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
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
                    _h_3892115 = ((_h_3892115 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3892115 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3892115 = (_h_3892115 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3892355i32;
                } else if (__value__ == (3892355i32)) {
                    _e_3892368 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892364i32)) {
                    if (!searchBreak && ((_e_3892368 != null && ((_e_3892368 : Dynamic).__nil__ == null || !(_e_3892368 : Dynamic).__nil__)))) {
                        _gotoNext = 3892418i32;
                    } else {
                        _gotoNext = 3892721i32;
                    };
                } else if (__value__ == (3892418i32)) {
                    if ((((@:checkr _e_3892368 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3892368 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3892464i32;
                    } else {
                        _gotoNext = 3892484i32;
                    };
                } else if (__value__ == (3892464i32)) {
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = (@:checkr _e_3892368 ?? throw "null pointer dereference")._nextHash;
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
                    if ((@:checkr _e_3892368 ?? throw "null pointer dereference")._stk[(_j_3892488 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3892488 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3892539i32;
                    } else {
                        _gotoNext = 3892488i32;
                    };
                } else if (__value__ == (3892539i32)) {
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = (@:checkr _e_3892368 ?? throw "null pointer dereference")._nextHash;
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
                    (@:checkr _last_3892336 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3892368 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3892368 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3892115] = _e_3892368;
                    _gotoNext = 3892688i32;
                } else if (__value__ == (3892688i32)) {
                    return _e_3892368;
                    {
                        final __tmp__0 = _e_3892368;
                        final __tmp__1 = (@:checkr _e_3892368 ?? throw "null pointer dereference")._nextHash;
                        _last_3892336 = __tmp__0;
                        _e_3892368 = __tmp__1;
                    };
                    _gotoNext = 3892364i32;
                } else if (__value__ == (3892721i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3892740i32;
                    } else {
                        _gotoNext = 3892783i32;
                    };
                } else if (__value__ == (3892740i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3892783i32;
                } else if (__value__ == (3892783i32)) {
                    _e_3892783 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3892783 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3892115] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3892783 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3892888i32;
                    } else {
                        _gotoNext = 3892987i32;
                    };
                } else if (__value__ == (3892888i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3892987i32;
                } else if (__value__ == (3892987i32)) {
                    (@:checkr _e_3892783 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3893111i32;
                    } else {
                        _gotoNext = 3893115i32;
                    };
                } else if (__value__ == (3893080i32)) {
                    (@:checkr _e_3892783 ?? throw "null pointer dereference")._stk[(_j_3893065 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3893065 : stdgo.GoInt)]) : stdgo.GoUIntptr);
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
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3893132i32;
                    } else {
                        _gotoNext = 3893181i32;
                    };
                } else if (__value__ == (3893132i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3893181i32;
                } else if (__value__ == (3893181i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3892115] = _e_3892783;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3893212i32;
                    } else {
                        _gotoNext = 3893247i32;
                    };
                } else if (__value__ == (3893212i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3892783;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3892783;
                    _gotoNext = 3893287i32;
                } else if (__value__ == (3893247i32)) {
                    _gotoNext = 3893247i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3892783;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3892783;
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
