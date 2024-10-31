package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profMap_asInterface) class T_profMap_static_extension {
    @:keep
    static public function _lookup( _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap>, _stk:stdgo.Slice<stdgo.GoUInt64>, _tag:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> {
        @:recv var _m:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMap.T_profMap> = _m;
        stdgo._internal.internal.Macro.controlFlow({
            var _h = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
            for (__0 => _x in _stk) {
                _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
                _h = (_h + (((_x : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
            };
            _h = ((_h << (8i64 : stdgo.GoUInt64) : stdgo.GoUIntptr) | ((_h >> (24 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
            _h = (_h + (((_tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) * (41 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr);
            var _last:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry> = (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
            @:label("Search") {
                var _e = (_m._hash[_h] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                while (_e != null && ((_e : Dynamic).__nil__ == null || !(_e : Dynamic).__nil__)) {
                    if (((_e._stk.length != (_stk.length)) || (_e._tag != _tag) : Bool)) {
                        {
                            {
                                final __tmp__0 = _e;
                                final __tmp__1 = _e._nextHash;
                                _last = __tmp__0;
                                _e = __tmp__1;
                            };
                            continue;
                        };
                    };
for (_j => _ in _stk) {
                        if (_e._stk[(_j : stdgo.GoInt)] != ((_stk[(_j : stdgo.GoInt)] : stdgo.GoUIntptr))) {
                            @:jump("Search") continue;
                        };
                    };
if (_last != null && ((_last : Dynamic).__nil__ == null || !(_last : Dynamic).__nil__)) {
                        _last._nextHash = _e._nextHash;
                        _e._nextHash = (_m._hash[_h] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
                        _m._hash[_h] = _e;
                    };
return _e;
                    {
                        final __tmp__0 = _e;
                        final __tmp__1 = _e._nextHash;
                        _last = __tmp__0;
                        _e = __tmp__1;
                    };
                };
            };
            if (((_m._free.length) < (1 : stdgo.GoInt) : Bool)) {
                _m._free = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>((128 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((128 : stdgo.GoInt).toBasic() > 0 ? (128 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
            };
            var _e = (stdgo.Go.setRef(_m._free[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
            _m._free = (_m._free.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
            _e._nextHash = (_m._hash[_h] ?? (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>));
            _e._tag = _tag;
            if (((_m._freeStk.length) < (_stk.length) : Bool)) {
                _m._freeStk = (new stdgo.Slice<stdgo.GoUIntptr>((1024 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.GoUIntptr>);
            };
            _e._stk = (_m._freeStk.__slice__(0, (_stk.length), (_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
            _m._freeStk = (_m._freeStk.__slice__((_stk.length)) : stdgo.Slice<stdgo.GoUIntptr>);
            for (_j => _ in _stk) {
                _e._stk[(_j : stdgo.GoInt)] = (_stk[(_j : stdgo.GoInt)] : stdgo.GoUIntptr);
            };
            if (_m._hash == null) {
                _m._hash = ({
                    final x = new stdgo.GoMap.GoIntMap<stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>();
                    x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>);
                    {};
                    x;
                } : stdgo.GoMap<stdgo.GoUIntptr, stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profMapEntry.T_profMapEntry>>);
            };
            _m._hash[_h] = _e;
            if (_m._all == null || (_m._all : Dynamic).__nil__) {
                _m._all = _e;
                _m._last = _e;
            } else {
                _m._last._nextAll = _e;
                _m._last = _e;
            };
            return _e;
        });
    }
}
