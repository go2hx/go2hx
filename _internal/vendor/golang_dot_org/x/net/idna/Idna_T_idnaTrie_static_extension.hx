package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_idnaTrie_asInterface) class T_idnaTrie_static_extension {
    @:keep
    static public function _lookupValue( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = _t;
        if ((_n < (133u32 : stdgo.GoUInt32) : Bool)) {
            return (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaValues._idnaValues[(((_n << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_b : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)] : stdgo.GoUInt16);
        } else {
            _n = (_n - ((133u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            return (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaSparse._idnaSparse._lookup(_n, _b) : stdgo.GoUInt16);
        };
    }
    @:keep
    static public function _lookupStringUnsafe( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, _s:stdgo.GoString):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = _t;
        var _c0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaValues._idnaValues[(_c0 : stdgo.GoInt)];
        };
        var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    static public function _lookupString( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, _s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            return { _0 : _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaValues._idnaValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c3 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
        };
        return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
    }
    @:keep
    static public function _lookupUnsafe( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = _t;
        var _c0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            return _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaValues._idnaValues[(_c0 : stdgo.GoInt)];
        };
        var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
        if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(1 : stdgo.GoInt)]);
        };
        _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(2 : stdgo.GoInt)]);
        };
        _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[((((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32) : stdgo.GoInt)];
        if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            return _t._lookupValue((_i : stdgo.GoUInt32), _s[(3 : stdgo.GoInt)]);
        };
        return (0 : stdgo.GoUInt16);
    }
    @:keep
    static public function _lookup( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_idnaTrie.T_idnaTrie> = _t;
        var _v = (0 : stdgo.GoUInt16), _sz = (0 : stdgo.GoInt);
        var _c0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        if ((_c0 < (128 : stdgo.GoUInt8) : Bool)) {
            return { _0 : _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaValues._idnaValues[(_c0 : stdgo.GoInt)], _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (194 : stdgo.GoUInt8) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
        } else if ((_c0 < (224 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (2 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c1), _1 : (2 : stdgo.GoInt) };
        } else if ((_c0 < (240 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c2), _1 : (3 : stdgo.GoInt) };
        } else if ((_c0 < (248 : stdgo.GoUInt8) : Bool)) {
            if (((_s.length) < (4 : stdgo.GoInt) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (0 : stdgo.GoInt) };
            };
            var _i = (_internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_c0 : stdgo.GoInt)] : stdgo.GoUInt16);
            var _c1 = (_s[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c1 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c1 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
            };
            var _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c1 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c2 = (_s[(2 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c2 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c2 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (2 : stdgo.GoInt) };
            };
            _o = (((_i : stdgo.GoUInt32) << (6i64 : stdgo.GoUInt64) : stdgo.GoUInt32) + (_c2 : stdgo.GoUInt32) : stdgo.GoUInt32);
            _i = _internal.vendor.golang_dot_org.x.net.idna.Idna__idnaIndex._idnaIndex[(_o : stdgo.GoInt)];
            var _c3 = (_s[(3 : stdgo.GoInt)] : stdgo.GoUInt8);
            if (((_c3 < (128 : stdgo.GoUInt8) : Bool) || ((192 : stdgo.GoUInt8) <= _c3 : Bool) : Bool)) {
                return { _0 : (0 : stdgo.GoUInt16), _1 : (3 : stdgo.GoInt) };
            };
            return { _0 : _t._lookupValue((_i : stdgo.GoUInt32), _c3), _1 : (4 : stdgo.GoInt) };
        };
        return { _0 : (0 : stdgo.GoUInt16), _1 : (1 : stdgo.GoInt) };
    }
}
