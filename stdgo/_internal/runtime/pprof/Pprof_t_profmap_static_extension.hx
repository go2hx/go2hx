package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    @:tdfield
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmap.T_profMap> = _m;
        var searchBreak = false;
        var _e_4:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _last_3:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _x_2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _iterator_3897689_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _h_0:stdgo.GoUIntptr = new stdgo.GoUIntptr(0);
        var _j_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _j_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var _e_6:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    _h_0 = (new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L31"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3897773i64;
                    } else {
                        _gotoNext = 3897777i64;
                    };
                } else if (__value__ == (3897699i64)) {
                    _x_2 = _stk[(_iterator_3897689_1 : stdgo.GoInt)];
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_x_2) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L31"
                    _iterator_3897689_1++;
                    _gotoNext = 3897774i64;
                } else if (__value__ == (3897773i64)) {
                    {
                        final __tmp__0 = 0i64;
                        final __tmp__1 = _stk[(0i64 : stdgo.GoInt)];
                        _iterator_3897689_1 = @:binopAssign __tmp__0;
                        _x_2 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3897774i64;
                } else if (__value__ == (3897774i64)) {
                    //"file://#L0"
                    if (_iterator_3897689_1 < (_stk.length)) {
                        _gotoNext = 3897699i64;
                    } else {
                        _gotoNext = 3897777i64;
                    };
                } else if (__value__ == (3897777i64)) {
                    _h_0 = ((_h_0 << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h_0 >> (new stdgo.GoUIntptr(24) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _h_0 = (_h_0 + (((new stdgo.GoUIntptr(_tag) : stdgo.GoUIntptr) * (new stdgo.GoUIntptr(41) : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                    _gotoNext = 3897900i64;
                } else if (__value__ == (3897900i64)) {
                    _e_4 = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    searchBreak = false;
                    _gotoNext = 3897909i64;
                } else if (__value__ == (3897909i64)) {
                    //"file://#L0"
                    if (!searchBreak && (({
                        final value = _e_4;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    }))) {
                        _gotoNext = 3897963i64;
                    } else {
                        _gotoNext = 3898266i64;
                    };
                } else if (__value__ == (3897963i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L42"
                    if ((((@:checkr _e_4 ?? throw "null pointer dereference")._stk.length != (_stk.length)) || ((@:checkr _e_4 ?? throw "null pointer dereference")._tag != _tag) : Bool)) {
                        _gotoNext = 3898009i64;
                    } else {
                        _gotoNext = 3898029i64;
                    };
                } else if (__value__ == (3898009i64)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3897909i64;
                } else if (__value__ == (3898029i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L45"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898112i64;
                    } else {
                        _gotoNext = 3898137i64;
                    };
                } else if (__value__ == (3898033i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L45"
                    _j_5++;
                    _gotoNext = 3898113i64;
                } else if (__value__ == (3898048i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L46"
                    if ((@:checkr _e_4 ?? throw "null pointer dereference")._stk[(_j_5 : stdgo.GoInt)] != ((new stdgo.GoUIntptr(_stk[(_j_5 : stdgo.GoInt)]) : stdgo.GoUIntptr))) {
                        _gotoNext = 3898084i64;
                    } else {
                        _gotoNext = 3898033i64;
                    };
                } else if (__value__ == (3898084i64)) {
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3897909i64;
                } else if (__value__ == (3898112i64)) {
                    _j_5 = 0i64;
                    _gotoNext = 3898113i64;
                } else if (__value__ == (3898113i64)) {
                    //"file://#L0"
                    if (_j_5 < (_stk.length)) {
                        _gotoNext = 3898048i64;
                    } else {
                        _gotoNext = 3898137i64;
                    };
                } else if (__value__ == (3898137i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L51"
                    if (({
                        final value = _last_3;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _gotoNext = 3898152i64;
                    } else {
                        _gotoNext = 3898233i64;
                    };
                } else if (__value__ == (3898152i64)) {
                    (@:checkr _last_3 ?? throw "null pointer dereference")._nextHash = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                    (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_4;
                    _gotoNext = 3898233i64;
                } else if (__value__ == (3898233i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L56"
                    return _e_4;
                    {
                        final __tmp__0 = _e_4;
                        final __tmp__1 = (@:checkr _e_4 ?? throw "null pointer dereference")._nextHash;
                        _last_3 = @:binopAssign __tmp__0;
                        _e_4 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 3897909i64;
                } else if (__value__ == (3898266i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L60"
                    if ((((@:checkr _m ?? throw "null pointer dereference")._free.length) < (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3898285i64;
                    } else {
                        _gotoNext = 3898328i64;
                    };
                } else if (__value__ == (3898285i64)) {
                    (@:checkr _m ?? throw "null pointer dereference")._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    _gotoNext = 3898328i64;
                } else if (__value__ == (3898328i64)) {
                    _e_6 = (stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _m ?? throw "null pointer dereference")._free = ((@:checkr _m ?? throw "null pointer dereference")._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                    (@:checkr _e_6 ?? throw "null pointer dereference")._nextHash = ((@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>));
                    (@:checkr _e_6 ?? throw "null pointer dereference")._tag = _tag;
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L68"
                    if ((((@:checkr _m ?? throw "null pointer dereference")._freeStk.length) < (_stk.length) : Bool)) {
                        _gotoNext = 3898433i64;
                    } else {
                        _gotoNext = 3898532i64;
                    };
                } else if (__value__ == (3898433i64)) {
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
                    _gotoNext = 3898532i64;
                } else if (__value__ == (3898532i64)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    (@:checkr _m ?? throw "null pointer dereference")._freeStk = ((@:checkr _m ?? throw "null pointer dereference")._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L75"
                    if ((0i64 : stdgo.GoInt) < (_stk.length)) {
                        _gotoNext = 3898656i64;
                    } else {
                        _gotoNext = 3898660i64;
                    };
                } else if (__value__ == (3898625i64)) {
                    (@:checkr _e_6 ?? throw "null pointer dereference")._stk[(_j_7 : stdgo.GoInt)] = (new stdgo.GoUIntptr(_stk[(_j_7 : stdgo.GoInt)]) : stdgo.GoUIntptr);
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L75"
                    _j_7++;
                    _gotoNext = 3898657i64;
                } else if (__value__ == (3898656i64)) {
                    _j_7 = 0i64;
                    _gotoNext = 3898657i64;
                } else if (__value__ == (3898657i64)) {
                    //"file://#L0"
                    if (_j_7 < (_stk.length)) {
                        _gotoNext = 3898625i64;
                    } else {
                        _gotoNext = 3898660i64;
                    };
                } else if (__value__ == (3898660i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L78"
                    if ((@:checkr _m ?? throw "null pointer dereference")._hash == null) {
                        _gotoNext = 3898677i64;
                    } else {
                        _gotoNext = 3898726i64;
                    };
                } else if (__value__ == (3898677i64)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash = (({
                        final x = new stdgo.GoMap.GoUIntptrMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>();
                        x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>);
                        {};
                        cast x;
                    } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>) : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_t_profmapentry.T_profMapEntry>>);
                    _gotoNext = 3898726i64;
                } else if (__value__ == (3898726i64)) {
                    (@:checkr _m ?? throw "null pointer dereference")._hash[_h_0] = _e_6;
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L82"
                    if (({
                        final value = (@:checkr _m ?? throw "null pointer dereference")._all;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        _gotoNext = 3898757i64;
                    } else {
                        _gotoNext = 3898792i64;
                    };
                } else if (__value__ == (3898757i64)) {
                    (@:checkr _m ?? throw "null pointer dereference")._all = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    _gotoNext = 3898832i64;
                } else if (__value__ == (3898792i64)) {
                    _gotoNext = 3898792i64;
                    (@:checkr (@:checkr _m ?? throw "null pointer dereference")._last ?? throw "null pointer dereference")._nextAll = _e_6;
                    (@:checkr _m ?? throw "null pointer dereference")._last = _e_6;
                    0i64;
                    _gotoNext = 3898832i64;
                } else if (__value__ == (3898832i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/runtime/pprof/map.go#L89"
                    return _e_6;
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
}
