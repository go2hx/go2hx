package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _j_3889314:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_3888737:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _e_3888617:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _last_3888585:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3888393_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3888364:stdgo.GoUIntptr = (0 : stdgo.GoUIntptr);
        var _e_3889032:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3888388:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3888364 = (0 : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3888477i32;
                    } else {
                        _gotoNext = 3888481i32;
                    };
                } else if (__value__ == (3888403i32)) {
                    _x_3888388 = _stk[(_i_3888393_0 : stdgo.GoInt)];
                    _h_3888364 = ((_h_3888364 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3888364 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3888364 = (_h_3888364 + (((_x_3888388 : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3888393_0++;
                    _gotoNext = 3888478i32;
                } else if (__value__ == (3888477i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3888393_0 = __tmp__0;
                        _x_3888388 = __tmp__1;
                    };
                    _gotoNext = 3888478i32;
                } else if (__value__ == (3888478i32)) {
                    if (_i_3888393_0 < (_stk.length)) {
                        _gotoNext = 3888403i32;
                    } else {
                        _gotoNext = 3888481i32;
                    };
                } else if (__value__ == (3888481i32)) {
                    _h_3888364 = ((_h_3888364 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3888364 >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3888364 = (_h_3888364 + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3888604i32;
                } else if (__value__ == (3888604i32)) {
                    _e_3888617 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3888364] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3888613i32;
                } else if (__value__ == (3888613i32)) {
                    if (!searchBreak && ((_e_3888617 != null && ((_e_3888617 : Dynamic).__nil__ == null || !(_e_3888617 : Dynamic).__nil__)))) {
                        _gotoNext = 3888667i32;
                    } else {
                        _gotoNext = 3888970i32;
                    };
                } else if (__value__ == (3888667i32)) {
                    if ((((@:checkr _e_3888617 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3888617 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3888713i32;
                    } else {
                        _gotoNext = 3888733i32;
                    };
                } else if (__value__ == (3888713i32)) {
                    {
                        final __tmp__0 = _e_3888617;
                        final __tmp__1 = (@:checkr _e_3888617 ?? throw "null pointer dereference")._nextHash;
                        _last_3888585 = __tmp__0;
                        _e_3888617 = __tmp__1;
                    };
                    _gotoNext = 3888613i32;
                } else if (__value__ == (3888733i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3888816i32;
                    } else {
                        _gotoNext = 3888841i32;
                    };
                } else if (__value__ == (3888737i32)) {
                    _j_3888737++;
                    _gotoNext = 3888817i32;
                } else if (__value__ == (3888752i32)) {
                    if ((@:checkr _e_3888617 ?? throw "null pointer dereference")._stk[(_j_3888737 : stdgo.GoInt)] != ((_stk[(_j_3888737 : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                        _gotoNext = 3888788i32;
                    } else {
                        _gotoNext = 3888737i32;
                    };
                } else if (__value__ == (3888788i32)) {
                    {
                        final __tmp__0 = _e_3888617;
                        final __tmp__1 = (@:checkr _e_3888617 ?? throw "null pointer dereference")._nextHash;
                        _last_3888585 = __tmp__0;
                        _e_3888617 = __tmp__1;
                    };
                    _gotoNext = 3888613i32;
                } else if (__value__ == (3888816i32)) {
                    _j_3888737 = 0i32;
                    _gotoNext = 3888817i32;
                } else if (__value__ == (3888817i32)) {
                    if (_j_3888737 < (_stk.length)) {
                        _gotoNext = 3888752i32;
                    } else {
                        _gotoNext = 3888841i32;
                    };
                } else if (__value__ == (3888841i32)) {
                    if ((_last_3888585 != null && ((_last_3888585 : Dynamic).__nil__ == null || !(_last_3888585 : Dynamic).__nil__))) {
                        _gotoNext = 3888856i32;
                    } else {
                        _gotoNext = 3888937i32;
                    };
                } else if (__value__ == (3888856i32)) {
                    (@:checkr _last_3888585 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3888617 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3888617 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3888364] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3888364] = _e_3888617;
                    _gotoNext = 3888937i32;
                } else if (__value__ == (3888937i32)) {
                    return _e_3888617;
                    {
                        final __tmp__0 = _e_3888617;
                        final __tmp__1 = (@:checkr _e_3888617 ?? throw "null pointer dereference")._nextHash;
                        _last_3888585 = __tmp__0;
                        _e_3888617 = __tmp__1;
                    };
                    _gotoNext = 3888613i32;
                } else if (__value__ == (3888970i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3888989i32;
                    } else {
                        _gotoNext = 3889032i32;
                    };
                } else if (__value__ == (3888989i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3889032i32;
                } else if (__value__ == (3889032i32)) {
                    _e_3889032 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3889032 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3888364] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3889032 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3889137i32;
                    } else {
                        _gotoNext = 3889236i32;
                    };
                } else if (__value__ == (3889137i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3889236i32;
                } else if (__value__ == (3889236i32)) {
                    (@:checkr _e_3889032 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3889360i32;
                    } else {
                        _gotoNext = 3889364i32;
                    };
                } else if (__value__ == (3889329i32)) {
                    (@:checkr _e_3889032 ?? throw "null pointer dereference")._stk[(_j_3889314 : stdgo.GoInt)] = (_stk[(_j_3889314 : stdgo.GoInt)] : stdgo.GoUIntptr);
                    _j_3889314++;
                    _gotoNext = 3889361i32;
                } else if (__value__ == (3889360i32)) {
                    _j_3889314 = 0i32;
                    _gotoNext = 3889361i32;
                } else if (__value__ == (3889361i32)) {
                    if (_j_3889314 < (_stk.length)) {
                        _gotoNext = 3889329i32;
                    } else {
                        _gotoNext = 3889364i32;
                    };
                } else if (__value__ == (3889364i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3889381i32;
                    } else {
                        _gotoNext = 3889430i32;
                    };
                } else if (__value__ == (3889381i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3889430i32;
                } else if (__value__ == (3889430i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3888364] = _e_3889032;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3889461i32;
                    } else {
                        _gotoNext = 3889496i32;
                    };
                } else if (__value__ == (3889461i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3889032;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3889032;
                    _gotoNext = 3889536i32;
                } else if (__value__ == (3889496i32)) {
                    _gotoNext = 3889496i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3889032;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3889032;
                    var __blank__ = 0i32;
                    _gotoNext = 3889536i32;
                } else if (__value__ == (3889536i32)) {
                    return _e_3889032;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
