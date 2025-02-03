package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        var _e_3895466:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _j_3895171:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3895051:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _x_3894822:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _j_3895748:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _last_3895019:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
        var _i_3894827_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_3894798:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3894798 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3894911i32;
                    } else {
                        _gotoNext = 3894915i32;
                    };
                } else if (__value__ == (3894837i32)) {
                    _x_3894822 = _stk[(_i_3894827_0 : stdgo.GoInt)];
                    _h_3894798 = ((_h_3894798 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3894798 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3894798 = (_h_3894798 + (((new stdgo.GoUIntptr(_x_3894822) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3894827_0++;
                    _gotoNext = 3894912i32;
                } else if (__value__ == (3894911i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3894827_0 = __tmp__0;
                        _x_3894822 = __tmp__1;
                    };
                    _gotoNext = 3894912i32;
                } else if (__value__ == (3894912i32)) {
                    if (_i_3894827_0 < (_stk.length)) {
                        _gotoNext = 3894837i32;
                    } else {
                        _gotoNext = 3894915i32;
                    };
                } else if (__value__ == (3894915i32)) {
                    _h_3894798 = ((_h_3894798 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3894798 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3894798 = (_h_3894798 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3895038i32;
                } else if (__value__ == (3895038i32)) {
                    _e_3895051 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3894798] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3895047i32;
                } else if (__value__ == (3895047i32)) {
                    if (!searchBreak && ((_e_3895051 != null && ((_e_3895051 : Dynamic).__nil__ == null || !(_e_3895051 : Dynamic).__nil__)))) {
                        _gotoNext = 3895101i32;
                    } else {
                        _gotoNext = 3895404i32;
                    };
                } else if (__value__ == (3895101i32)) {
                    if ((((@:checkr _e_3895051 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3895051 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3895147i32;
                    } else {
                        _gotoNext = 3895167i32;
                    };
                } else if (__value__ == (3895147i32)) {
                    {
                        final __tmp__0 = _e_3895051;
                        final __tmp__1 = (@:checkr _e_3895051 ?? throw "null pointer dereference")._nextHash;
                        _last_3895019 = __tmp__0;
                        _e_3895051 = __tmp__1;
                    };
                    _gotoNext = 3895047i32;
                } else if (__value__ == (3895167i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895250i32;
                    } else {
                        _gotoNext = 3895275i32;
                    };
                } else if (__value__ == (3895171i32)) {
                    _j_3895171++;
                    _gotoNext = 3895251i32;
                } else if (__value__ == (3895186i32)) {
                    if ((@:checkr _e_3895051 ?? throw "null pointer dereference")._stk[(_j_3895171 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3895171 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3895222i32;
                    } else {
                        _gotoNext = 3895171i32;
                    };
                } else if (__value__ == (3895222i32)) {
                    {
                        final __tmp__0 = _e_3895051;
                        final __tmp__1 = (@:checkr _e_3895051 ?? throw "null pointer dereference")._nextHash;
                        _last_3895019 = __tmp__0;
                        _e_3895051 = __tmp__1;
                    };
                    _gotoNext = 3895047i32;
                } else if (__value__ == (3895250i32)) {
                    _j_3895171 = 0i32;
                    _gotoNext = 3895251i32;
                } else if (__value__ == (3895251i32)) {
                    if (_j_3895171 < (_stk.length)) {
                        _gotoNext = 3895186i32;
                    } else {
                        _gotoNext = 3895275i32;
                    };
                } else if (__value__ == (3895275i32)) {
                    if ((_last_3895019 != null && ((_last_3895019 : Dynamic).__nil__ == null || !(_last_3895019 : Dynamic).__nil__))) {
                        _gotoNext = 3895290i32;
                    } else {
                        _gotoNext = 3895371i32;
                    };
                } else if (__value__ == (3895290i32)) {
                    (@:checkr _last_3895019 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3895051 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3895051 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3894798] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3894798] = _e_3895051;
                    _gotoNext = 3895371i32;
                } else if (__value__ == (3895371i32)) {
                    return _e_3895051;
                    {
                        final __tmp__0 = _e_3895051;
                        final __tmp__1 = (@:checkr _e_3895051 ?? throw "null pointer dereference")._nextHash;
                        _last_3895019 = __tmp__0;
                        _e_3895051 = __tmp__1;
                    };
                    _gotoNext = 3895047i32;
                } else if (__value__ == (3895404i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3895423i32;
                    } else {
                        _gotoNext = 3895466i32;
                    };
                } else if (__value__ == (3895423i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    _gotoNext = 3895466i32;
                } else if (__value__ == (3895466i32)) {
                    _e_3895466 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    (@:checkr _e_3895466 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3894798] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                    (@:checkr _e_3895466 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3895571i32;
                    } else {
                        _gotoNext = 3895670i32;
                    };
                } else if (__value__ == (3895571i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3895670i32;
                } else if (__value__ == (3895670i32)) {
                    (@:checkr _e_3895466 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3895794i32;
                    } else {
                        _gotoNext = 3895798i32;
                    };
                } else if (__value__ == (3895763i32)) {
                    (@:checkr _e_3895466 ?? throw "null pointer dereference")._stk[(_j_3895748 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3895748 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3895748++;
                    _gotoNext = 3895795i32;
                } else if (__value__ == (3895794i32)) {
                    _j_3895748 = 0i32;
                    _gotoNext = 3895795i32;
                } else if (__value__ == (3895795i32)) {
                    if (_j_3895748 < (_stk.length)) {
                        _gotoNext = 3895763i32;
                    } else {
                        _gotoNext = 3895798i32;
                    };
                } else if (__value__ == (3895798i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3895815i32;
                    } else {
                        _gotoNext = 3895864i32;
                    };
                } else if (__value__ == (3895815i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
                    _gotoNext = 3895864i32;
                } else if (__value__ == (3895864i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3894798] = _e_3895466;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3895895i32;
                    } else {
                        _gotoNext = 3895930i32;
                    };
                } else if (__value__ == (3895895i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3895466;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3895466;
                    _gotoNext = 3895970i32;
                } else if (__value__ == (3895930i32)) {
                    _gotoNext = 3895930i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3895466;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3895466;
                    var __blank__ = 0i32;
                    _gotoNext = 3895970i32;
                } else if (__value__ == (3895970i32)) {
                    return _e_3895466;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
