package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var _e_3898865:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _j_3898570:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_3898450:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _h_3898197:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_3899147:stdgo.GoInt = (0 : stdgo.GoInt);
        var searchBreak = false;
        var _last_3898418:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_3898221:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _i_3898226_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _h_3898197 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898310i32;
                    } else {
                        _gotoNext = 3898314i32;
                    };
                } else if (__value__ == (3898236i32)) {
                    _x_3898221 = _stk[(_i_3898226_0 : stdgo.GoInt)];
                    _h_3898197 = ((_h_3898197 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3898197 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3898197 = (_h_3898197 + (((new stdgo.GoUIntptr(_x_3898221) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _i_3898226_0++;
                    _gotoNext = 3898311i32;
                } else if (__value__ == (3898310i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _stk[(0i32 : stdgo.GoInt)];
                        _i_3898226_0 = __tmp__0;
                        _x_3898221 = __tmp__1;
                    };
                    _gotoNext = 3898311i32;
                } else if (__value__ == (3898311i32)) {
                    if (_i_3898226_0 < (_stk.length)) {
                        _gotoNext = 3898236i32;
                    } else {
                        _gotoNext = 3898314i32;
                    };
                } else if (__value__ == (3898314i32)) {
                    _h_3898197 = ((_h_3898197 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_3898197 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_3898197 = (_h_3898197 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3898437i32;
                } else if (__value__ == (3898437i32)) {
                    _e_3898450 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3898197] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3898446i32;
                } else if (__value__ == (3898446i32)) {
                    if (!searchBreak && ((_e_3898450 != null && ((_e_3898450 : Dynamic).__nil__ == null || !(_e_3898450 : Dynamic).__nil__)))) {
                        _gotoNext = 3898500i32;
                    } else {
                        _gotoNext = 3898803i32;
                    };
                } else if (__value__ == (3898500i32)) {
                    if ((((@:checkr _e_3898450 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_3898450 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3898546i32;
                    } else {
                        _gotoNext = 3898566i32;
                    };
                } else if (__value__ == (3898546i32)) {
                    {
                        final __tmp__0 = _e_3898450;
                        final __tmp__1 = (@:checkr _e_3898450 ?? throw "null pointer dereference")._nextHash;
                        _last_3898418 = __tmp__0;
                        _e_3898450 = __tmp__1;
                    };
                    _gotoNext = 3898446i32;
                } else if (__value__ == (3898566i32)) {
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898649i32;
                    } else {
                        _gotoNext = 3898674i32;
                    };
                } else if (__value__ == (3898570i32)) {
                    _j_3898570++;
                    _gotoNext = 3898650i32;
                } else if (__value__ == (3898585i32)) {
                    if ((@:checkr _e_3898450 ?? throw "null pointer dereference")._stk[(_j_3898570 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_3898570 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3898621i32;
                    } else {
                        _gotoNext = 3898570i32;
                    };
                } else if (__value__ == (3898621i32)) {
                    {
                        final __tmp__0 = _e_3898450;
                        final __tmp__1 = (@:checkr _e_3898450 ?? throw "null pointer dereference")._nextHash;
                        _last_3898418 = __tmp__0;
                        _e_3898450 = __tmp__1;
                    };
                    _gotoNext = 3898446i32;
                } else if (__value__ == (3898649i32)) {
                    _j_3898570 = 0i32;
                    _gotoNext = 3898650i32;
                } else if (__value__ == (3898650i32)) {
                    if (_j_3898570 < (_stk.length)) {
                        _gotoNext = 3898585i32;
                    } else {
                        _gotoNext = 3898674i32;
                    };
                } else if (__value__ == (3898674i32)) {
                    if ((_last_3898418 != null && ((_last_3898418 : Dynamic).__nil__ == null || !(_last_3898418 : Dynamic).__nil__))) {
                        _gotoNext = 3898689i32;
                    } else {
                        _gotoNext = 3898770i32;
                    };
                } else if (__value__ == (3898689i32)) {
                    (@:checkr _last_3898418 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_3898450 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_3898450 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3898197] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3898197] = _e_3898450;
                    _gotoNext = 3898770i32;
                } else if (__value__ == (3898770i32)) {
                    return _e_3898450;
                    {
                        final __tmp__0 = _e_3898450;
                        final __tmp__1 = (@:checkr _e_3898450 ?? throw "null pointer dereference")._nextHash;
                        _last_3898418 = __tmp__0;
                        _e_3898450 = __tmp__1;
                    };
                    _gotoNext = 3898446i32;
                } else if (__value__ == (3898803i32)) {
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3898822i32;
                    } else {
                        _gotoNext = 3898865i32;
                    };
                } else if (__value__ == (3898822i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3898865i32;
                } else if (__value__ == (3898865i32)) {
                    _e_3898865 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_3898865 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_3898197] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_3898865 ?? throw "null pointer dereference")._tag = _tag;
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3898970i32;
                    } else {
                        _gotoNext = 3899069i32;
                    };
                } else if (__value__ == (3898970i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3899069i32;
                } else if (__value__ == (3899069i32)) {
                    (@:checkr _e_3898865 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    if ((0i32 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3899193i32;
                    } else {
                        _gotoNext = 3899197i32;
                    };
                } else if (__value__ == (3899162i32)) {
                    (@:checkr _e_3898865 ?? throw "null pointer dereference")._stk[(_j_3899147 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_3899147 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    _j_3899147++;
                    _gotoNext = 3899194i32;
                } else if (__value__ == (3899193i32)) {
                    _j_3899147 = 0i32;
                    _gotoNext = 3899194i32;
                } else if (__value__ == (3899194i32)) {
                    if (_j_3899147 < (_stk.length)) {
                        _gotoNext = 3899162i32;
                    } else {
                        _gotoNext = 3899197i32;
                    };
                } else if (__value__ == (3899197i32)) {
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3899214i32;
                    } else {
                        _gotoNext = 3899263i32;
                    };
                } else if (__value__ == (3899214i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3899263i32;
                } else if (__value__ == (3899263i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_3898197] = _e_3898865;
                    if (((@:checkr _m ?? throw "null pointer dereference")._all == null || ((@:checkr _m ?? throw "null pointer dereference")._all : Dynamic).__nil__)) {
                        _gotoNext = 3899294i32;
                    } else {
                        _gotoNext = 3899329i32;
                    };
                } else if (__value__ == (3899294i32)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_3898865;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3898865;
                    _gotoNext = 3899369i32;
                } else if (__value__ == (3899329i32)) {
                    _gotoNext = 3899329i32;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_3898865;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_3898865;
                    var __blank__ = 0i32;
                    _gotoNext = 3899369i32;
                } else if (__value__ == (3899369i32)) {
                    return _e_3898865;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
