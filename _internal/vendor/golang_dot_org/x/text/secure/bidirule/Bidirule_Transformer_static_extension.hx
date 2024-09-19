package _internal.vendor.golang_dot_org.x.text.secure.bidirule;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule.Transformer_asInterface) class Transformer_static_extension {
    @:keep
    static public function _isFinal( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>):Bool {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        return ((_t._state == ((2 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState)) || _t._state == ((4 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState)) : Bool) || (_t._state == (0 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState)) : Bool);
    }
    @:keep
    static public function _advanceString( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _e:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties);
        var _sz:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_n < (_s.length) : Bool)) {
            if ((_s[(_n : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                {
                    final __tmp__0 = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__asciiTable._asciiTable[(_s[(_n : stdgo.GoInt)] : stdgo.GoInt)];
                    final __tmp__1 = (1 : stdgo.GoInt);
                    _e = __tmp__0;
                    _sz = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = _internal.golang_dot_org.x.text.unicode.bidi.Bidi_lookupString.lookupString((_s.__slice__(_n) : stdgo.GoString)?.__copy__());
                    _e = __tmp__._0?.__copy__();
                    _sz = __tmp__._1;
                };
                if ((_sz <= (1 : stdgo.GoInt) : Bool)) {
                    if (_sz == ((1 : stdgo.GoInt))) {
                        return { _0 : _n, _1 : false };
                    };
                    return { _0 : _n, _1 : true };
                };
            };
            var _c = (((1 : stdgo.GoUInt16) << _e.class_() : stdgo.GoUInt16) : stdgo.GoUInt16);
            _t._seen = (_t._seen | (_c) : stdgo.GoUInt16);
            if ((_t._seen & (36 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((36 : stdgo.GoUInt16))) {
                _t._state = (5 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
                return { _0 : _n, _1 : false };
            };
            {
                var _tr = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__transitions._transitions[(_t._state : stdgo.GoInt)]?.__copy__();
                if ((_tr[(0 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    _t._state = _tr[(0 : stdgo.GoInt)]._next;
                } else if ((_tr[(1 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    _t._state = _tr[(1 : stdgo.GoInt)]._next;
                } else {
                    _t._state = (5 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
                    if (_t._isRTL()) {
                        return { _0 : _n, _1 : false };
                    };
                };
            };
            _n = (_n + (_sz) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : true };
    }
    @:keep
    static public function _advance( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>, _s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _ok = false;
        var _e:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties.Properties);
        var _sz:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_n < (_s.length) : Bool)) {
            if ((_s[(_n : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                {
                    final __tmp__0 = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__asciiTable._asciiTable[(_s[(_n : stdgo.GoInt)] : stdgo.GoInt)];
                    final __tmp__1 = (1 : stdgo.GoInt);
                    _e = __tmp__0;
                    _sz = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = _internal.golang_dot_org.x.text.unicode.bidi.Bidi_lookup.lookup((_s.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>));
                    _e = __tmp__._0?.__copy__();
                    _sz = __tmp__._1;
                };
                if ((_sz <= (1 : stdgo.GoInt) : Bool)) {
                    if (_sz == ((1 : stdgo.GoInt))) {
                        return { _0 : _n, _1 : false };
                    };
                    return { _0 : _n, _1 : true };
                };
            };
            var _c = (((1 : stdgo.GoUInt16) << _e.class_() : stdgo.GoUInt16) : stdgo.GoUInt16);
            _t._seen = (_t._seen | (_c) : stdgo.GoUInt16);
            if ((_t._seen & (36 : stdgo.GoUInt16) : stdgo.GoUInt16) == ((36 : stdgo.GoUInt16))) {
                _t._state = (5 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
                return { _0 : _n, _1 : false };
            };
            {
                var _tr = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule__transitions._transitions[(_t._state : stdgo.GoInt)]?.__copy__();
                if ((_tr[(0 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    _t._state = _tr[(0 : stdgo.GoInt)]._next;
                } else if ((_tr[(1 : stdgo.GoInt)]._mask & _c : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16))) {
                    _t._state = _tr[(1 : stdgo.GoInt)]._next;
                } else {
                    _t._state = (5 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState);
                    if (_t._isRTL()) {
                        return { _0 : _n, _1 : false };
                    };
                };
            };
            _n = (_n + (_sz) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : true };
    }
    @:keep
    static public function span( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_t._state == (5 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_T_ruleState.T_ruleState)) && _t._isRTL() : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_errInvalid.errInvalid };
        };
        var __tmp__ = _t._advance(_src), _n:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                if (!_ok) {
                    _err = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_errInvalid.errInvalid;
                    break;
                } else if ((_n < (_src.length) : Bool)) {
                    if (!_atEOF) {
                        _err = _internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc;
                        break;
                    };
                    _err = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_errInvalid.errInvalid;
                    break;
                } else if (!_t._isFinal()) {
                    _err = _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_errInvalid.errInvalid;
                    break;
                };
                break;
            };
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function transform( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        var _nDst = (0 : stdgo.GoInt), _nSrc = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        if (((_dst.length) < (_src.length) : Bool)) {
            _src = (_src.__slice__(0, (_dst.length)) : stdgo.Slice<stdgo.GoUInt8>);
            _atEOF = false;
            _err = _internal.golang_dot_org.x.text.transform.Transform_errShortDst.errShortDst;
        };
        var __tmp__ = _t.span(_src, _atEOF), _n:stdgo.GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        stdgo.Go.copySlice(_dst, (_src.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        if (((_err == null) || (_err1 != null && stdgo.Go.toInterface(_err1) != (stdgo.Go.toInterface(_internal.golang_dot_org.x.text.transform.Transform_errShortSrc.errShortSrc)) : Bool) : Bool)) {
            _err = _err1;
        };
        return { _0 : _n, _1 : _n, _2 : _err };
    }
    @:keep
    static public function reset( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>):Void {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        {
            var __tmp__ = (new _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer() : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer);
            (_t : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer)._state = __tmp__._state;
            (_t : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer)._hasRTL = __tmp__._hasRTL;
            (_t : _internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer)._seen = __tmp__._seen;
        };
    }
    @:keep
    static public function _isRTL( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer>):Bool {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.secure.bidirule.Bidirule_Transformer.Transformer> = _t;
        {};
        return (_t._seen & (8226 : stdgo.GoUInt16) : stdgo.GoUInt16) != ((0 : stdgo.GoUInt16));
    }
}
