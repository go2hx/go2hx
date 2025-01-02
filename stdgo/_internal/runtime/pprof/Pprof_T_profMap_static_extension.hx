package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _last_3864785:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _e_3864817:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3864588:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3864593_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3864564:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3865514:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3865232:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3864937:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3864564 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3864677i32;
                    } else {
                        _gotoNext = 3864681i32;
                    };
                } else if (__value__ == (3864603i32)) {
                    _x_3864588 = _stk[(_i_3864593_0 : stdgo.GoInt)];
                    _h_3864564 = ((_h_3864564 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3864564 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3864564 = (_h_3864564 + (((_x_3864588 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3864593_0++;
                    _gotoNext = 3864678i32;
                } else if (__value__ == (3864677i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3864593_0 = __tmp__0;
                        _x_3864588 = __tmp__1;
                    };
                    _gotoNext = 3864678i32;
                } else if (__value__ == (3864678i32)) {
                    if (_i_3864593_0 < (_stk.length)) {
                        _gotoNext = 3864603i32;
                    } else {
                        _gotoNext = 3864681i32;
                    };
                } else if (__value__ == (3864681i32)) {
                    _h_3864564 = ((_h_3864564 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3864564 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3864564 = (_h_3864564 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3864804i32;
                } else if (__value__ == (3864804i32)) {
                    _e_3864817 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864564] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3864813i32;
                } else if (__value__ == (3864813i32)) {
                    if (!searchBreak && ((_e_3864817 != null && ((_e_3864817 : Dynamic).__nil__ == null || !(_e_3864817 : Dynamic).__nil__)))) {
                        _gotoNext = 3864867i32;
                    } else {
                        _gotoNext = 3865170i32;
                    };
                } else if (__value__ == (3864867i32)) {
                    if ((((@:checkr _e_3864817 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3864817 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3864913i32;
                    } else {
                        _gotoNext = 3864933i32;
                    };
                } else if (__value__ == (3864913i32)) {
                    {
                        final __tmp__0 = _e_3864817;
                        final __tmp__1 = (@:checkr _e_3864817 ?? throw "null pointer dereference")._nextHash;
                        _last_3864785 = __tmp__0;
                        _e_3864817 = __tmp__1;
                    };
                    _gotoNext = 3864813i32;
                } else if (__value__ == (3864933i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865016i32;
                    } else {
                        _gotoNext = 3865041i32;
                    };
                } else if (__value__ == (3864937i32)) {
                    _j_3864937++;
                    _gotoNext = 3865017i32;
                } else if (__value__ == (3864952i32)) {
                    if ((@:checkr _e_3864817 ?? throw "null pointer dereference")._stk[(_j_3864937 : stdgo.GoInt)] != ((_stk[(_j_3864937 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3864988i32;
                    } else {
                        _gotoNext = 3864937i32;
                    };
                } else if (__value__ == (3864988i32)) {
                    {
                        final __tmp__0 = _e_3864817;
                        final __tmp__1 = (@:checkr _e_3864817 ?? throw "null pointer dereference")._nextHash;
                        _last_3864785 = __tmp__0;
                        _e_3864817 = __tmp__1;
                    };
                    _gotoNext = 3864813i32;
                } else if (__value__ == (3865016i32)) {
                    _j_3864937 = 0i32;
                    _gotoNext = 3865017i32;
                } else if (__value__ == (3865017i32)) {
                    if (_j_3864937 < (_stk.length)) {
                        _gotoNext = 3864952i32;
                    } else {
                        _gotoNext = 3865041i32;
                    };
                } else if (__value__ == (3865041i32)) {
                    if ((_last_3864785 != null && ((_last_3864785 : Dynamic).__nil__ == null || !(_last_3864785 : Dynamic).__nil__))) {
                        _gotoNext = 3865056i32;
                    } else {
                        _gotoNext = 3865137i32;
                    };
                } else if (__value__ == (3865056i32)) {
                    (@:checkr _last_3864785 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3864817 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3864817 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864564] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864564] = _e_3864817;
                    _gotoNext = 3865137i32;
                } else if (__value__ == (3865137i32)) {
                    return _e_3864817;
                    {
                        final __tmp__0 = _e_3864817;
                        final __tmp__1 = (@:checkr _e_3864817 ?? throw "null pointer dereference")._nextHash;
                        _last_3864785 = __tmp__0;
                        _e_3864817 = __tmp__1;
                    };
                    _gotoNext = 3864813i32;
                } else if (__value__ == (3865170i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3865189i32;
                    } else {
                        _gotoNext = 3865232i32;
                    };
                } else if (__value__ == (3865189i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3865232i32;
                } else if (__value__ == (3865232i32)) {
                    _e_3865232 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3865232 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864564] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3865232 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3865337i32;
                    } else {
                        _gotoNext = 3865436i32;
                    };
                } else if (__value__ == (3865337i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3865436i32;
                } else if (__value__ == (3865436i32)) {
                    (@:checkr _e_3865232 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3865560i32;
                    } else {
                        _gotoNext = 3865564i32;
                    };
                } else if (__value__ == (3865529i32)) {
                    (@:checkr _e_3865232 ?? throw "null pointer dereference")._stk[(_j_3865514 : stdgo.GoInt)] = (_stk[(_j_3865514 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3865514++;
                    _gotoNext = 3865561i32;
                } else if (__value__ == (3865560i32)) {
                    _j_3865514 = 0i32;
                    _gotoNext = 3865561i32;
                } else if (__value__ == (3865561i32)) {
                    if (_j_3865514 < (_stk.length)) {
                        _gotoNext = 3865529i32;
                    } else {
                        _gotoNext = 3865564i32;
                    };
                } else if (__value__ == (3865564i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3865581i32;
                    } else {
                        _gotoNext = 3865630i32;
                    };
                } else if (__value__ == (3865581i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3865630i32;
                } else if (__value__ == (3865630i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3864564] = _e_3865232;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3865661i32;
                    } else {
                        _gotoNext = 3865696i32;
                    };
                } else if (__value__ == (3865661i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3865232;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3865232;
                    _gotoNext = 3865736i32;
                } else if (__value__ == (3865696i32)) {
                    _gotoNext = 3865696i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3865232;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3865232;
                    var __blank__ = 0i32;
                    _gotoNext = 3865736i32;
                } else if (__value__ == (3865736i32)) {
                    return _e_3865232;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
