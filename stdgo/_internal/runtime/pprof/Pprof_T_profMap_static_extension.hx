package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var searchBreak = false;
        var _x_3889865:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _h_3889841:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _j_3890791:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3890509:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3890214:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3890094:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3890062:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3889870_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3889841 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3889954i32;
                    } else {
                        _gotoNext = 3889958i32;
                    };
                } else if (__value__ == (3889880i32)) {
                    _x_3889865 = _stk[(_i_3889870_0 : stdgo.GoInt)];
                    _h_3889841 = ((_h_3889841 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3889841 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3889841 = (_h_3889841 + (((_x_3889865 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3889870_0++;
                    _gotoNext = 3889955i32;
                } else if (__value__ == (3889954i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3889870_0 = __tmp__0;
                        _x_3889865 = __tmp__1;
                    };
                    _gotoNext = 3889955i32;
                } else if (__value__ == (3889955i32)) {
                    if (_i_3889870_0 < (_stk.length)) {
                        _gotoNext = 3889880i32;
                    } else {
                        _gotoNext = 3889958i32;
                    };
                } else if (__value__ == (3889958i32)) {
                    _h_3889841 = ((_h_3889841 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3889841 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3889841 = (_h_3889841 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3890081i32;
                } else if (__value__ == (3890081i32)) {
                    _e_3890094 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889841] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3890090i32;
                } else if (__value__ == (3890090i32)) {
                    if (!searchBreak && ((_e_3890094 != null && ((_e_3890094 : Dynamic).__nil__ == null || !(_e_3890094 : Dynamic).__nil__)))) {
                        _gotoNext = 3890144i32;
                    } else {
                        _gotoNext = 3890447i32;
                    };
                } else if (__value__ == (3890144i32)) {
                    if ((((@:checkr _e_3890094 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3890094 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3890190i32;
                    } else {
                        _gotoNext = 3890210i32;
                    };
                } else if (__value__ == (3890190i32)) {
                    {
                        final __tmp__0 = _e_3890094;
                        final __tmp__1 = (@:checkr _e_3890094 ?? throw "null pointer dereference")._nextHash;
                        _last_3890062 = __tmp__0;
                        _e_3890094 = __tmp__1;
                    };
                    _gotoNext = 3890090i32;
                } else if (__value__ == (3890210i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3890293i32;
                    } else {
                        _gotoNext = 3890318i32;
                    };
                } else if (__value__ == (3890214i32)) {
                    _j_3890214++;
                    _gotoNext = 3890294i32;
                } else if (__value__ == (3890229i32)) {
                    if ((@:checkr _e_3890094 ?? throw "null pointer dereference")._stk[(_j_3890214 : stdgo.GoInt)] != ((_stk[(_j_3890214 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3890265i32;
                    } else {
                        _gotoNext = 3890214i32;
                    };
                } else if (__value__ == (3890265i32)) {
                    {
                        final __tmp__0 = _e_3890094;
                        final __tmp__1 = (@:checkr _e_3890094 ?? throw "null pointer dereference")._nextHash;
                        _last_3890062 = __tmp__0;
                        _e_3890094 = __tmp__1;
                    };
                    _gotoNext = 3890090i32;
                } else if (__value__ == (3890293i32)) {
                    _j_3890214 = 0i32;
                    _gotoNext = 3890294i32;
                } else if (__value__ == (3890294i32)) {
                    if (_j_3890214 < (_stk.length)) {
                        _gotoNext = 3890229i32;
                    } else {
                        _gotoNext = 3890318i32;
                    };
                } else if (__value__ == (3890318i32)) {
                    if ((_last_3890062 != null && ((_last_3890062 : Dynamic).__nil__ == null || !(_last_3890062 : Dynamic).__nil__))) {
                        _gotoNext = 3890333i32;
                    } else {
                        _gotoNext = 3890414i32;
                    };
                } else if (__value__ == (3890333i32)) {
                    (@:checkr _last_3890062 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3890094 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3890094 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889841] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889841] = _e_3890094;
                    _gotoNext = 3890414i32;
                } else if (__value__ == (3890414i32)) {
                    return _e_3890094;
                    {
                        final __tmp__0 = _e_3890094;
                        final __tmp__1 = (@:checkr _e_3890094 ?? throw "null pointer dereference")._nextHash;
                        _last_3890062 = __tmp__0;
                        _e_3890094 = __tmp__1;
                    };
                    _gotoNext = 3890090i32;
                } else if (__value__ == (3890447i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3890466i32;
                    } else {
                        _gotoNext = 3890509i32;
                    };
                } else if (__value__ == (3890466i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3890509i32;
                } else if (__value__ == (3890509i32)) {
                    _e_3890509 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3890509 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889841] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3890509 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3890614i32;
                    } else {
                        _gotoNext = 3890713i32;
                    };
                } else if (__value__ == (3890614i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3890713i32;
                } else if (__value__ == (3890713i32)) {
                    (@:checkr _e_3890509 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3890837i32;
                    } else {
                        _gotoNext = 3890841i32;
                    };
                } else if (__value__ == (3890806i32)) {
                    (@:checkr _e_3890509 ?? throw "null pointer dereference")._stk[(_j_3890791 : stdgo.GoInt)] = (_stk[(_j_3890791 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3890791++;
                    _gotoNext = 3890838i32;
                } else if (__value__ == (3890837i32)) {
                    _j_3890791 = 0i32;
                    _gotoNext = 3890838i32;
                } else if (__value__ == (3890838i32)) {
                    if (_j_3890791 < (_stk.length)) {
                        _gotoNext = 3890806i32;
                    } else {
                        _gotoNext = 3890841i32;
                    };
                } else if (__value__ == (3890841i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3890858i32;
                    } else {
                        _gotoNext = 3890907i32;
                    };
                } else if (__value__ == (3890858i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3890907i32;
                } else if (__value__ == (3890907i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3889841] = _e_3890509;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3890938i32;
                    } else {
                        _gotoNext = 3890973i32;
                    };
                } else if (__value__ == (3890938i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3890509;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3890509;
                    _gotoNext = 3891013i32;
                } else if (__value__ == (3890973i32)) {
                    _gotoNext = 3890973i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3890509;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3890509;
                    var __blank__ = 0i32;
                    _gotoNext = 3891013i32;
                } else if (__value__ == (3891013i32)) {
                    return _e_3890509;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
