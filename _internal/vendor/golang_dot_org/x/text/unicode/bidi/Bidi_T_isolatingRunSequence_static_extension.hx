package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_isolatingRunSequence_asInterface) class T_isolatingRunSequence_static_extension {
    @:keep
    static public function _assertOnly( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>, _codes:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void {
        var _codes = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>(_codes.length, 0, ..._codes);
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        stdgo._internal.internal.Macro.controlFlow({
            @:label("loop") for (_i => _t in _s._types) {
                for (__0 => _c in _codes) {
                    if (_t == (_c)) {
                        @:jump("loop") continue;
                    };
                };
                stdgo._internal.log.Log_panicf.panicf(("invalid bidi code %v present in assertOnly at position %d" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)), stdgo.Go.toInterface(_s._indexes[(_i : stdgo.GoInt)]));
            };
        });
    }
    @:keep
    static public function _findRunLimit( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>, _index:stdgo.GoInt, _validSet:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):stdgo.GoInt {
        var _validSet = new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>(_validSet.length, 0, ..._validSet);
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        stdgo._internal.internal.Macro.controlFlow({
            @:label("loop") stdgo.Go.cfor((_index < (_s._types.length) : Bool), _index++, {
                var _t = (_s._types[(_index : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                for (__0 => _valid in _validSet) {
                    if (_t == (_valid)) {
                        @:jump("loop") continue;
                    };
                };
                return _index;
            });
            return (_s._types.length);
        });
    }
    @:keep
    static public function _applyLevelsAndTypes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        for (_i => _x in _s._indexes) {
            _s._p._resultTypes[(_x : stdgo.GoInt)] = _s._types[(_i : stdgo.GoInt)];
            _s._p._resultLevels[(_x : stdgo.GoInt)] = _s._resolvedLevels[(_i : stdgo.GoInt)];
        };
    }
    @:keep
    static public function _resolveImplicitLevels( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        _s._assertOnly((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_));
        _s._resolvedLevels = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>((_s._types.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>);
        _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__setLevels._setLevels(_s._resolvedLevels, _s._level);
        if (((_s._level & (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) == ((0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
            for (_i => _t in _s._types) {
                if (_t == ((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {} else if (_t == ((1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _s._resolvedLevels[(_i : stdgo.GoInt)] = (_s._resolvedLevels[(_i : stdgo.GoInt)] + ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                } else {
                    _s._resolvedLevels[(_i : stdgo.GoInt)] = (_s._resolvedLevels[(_i : stdgo.GoInt)] + ((2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                };
            };
        } else {
            for (_i => _t in _s._types) {
                if (_t == ((1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {} else {
                    _s._resolvedLevels[(_i : stdgo.GoInt)] = (_s._resolvedLevels[(_i : stdgo.GoInt)] + ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                };
            };
        };
    }
    @:keep
    static public function _resolveNeutralTypes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        _s._assertOnly((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(8u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(9u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_));
        for (_i => _t in _s._types) {
            {
                final __value__ = _t;
                if (__value__ == ((9u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((8u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    var _runStart = (_i : stdgo.GoInt);
                    var _runEnd = (_s._findRunLimit(_runStart, (7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (8u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (9u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : stdgo.GoInt);
                    var __0:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), __1:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
var _trailType = __1, _leadType = __0;
                    if (_runStart == ((0 : stdgo.GoInt))) {
                        _leadType = _s._sos;
                    } else {
                        _leadType = _s._types[(_runStart - (1 : stdgo.GoInt) : stdgo.GoInt)];
                        if (_leadType._in((5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                            _leadType = (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                        };
                    };
                    if (_runEnd == ((_s._types.length))) {
                        _trailType = _s._eos;
                    } else {
                        _trailType = _s._types[(_runEnd : stdgo.GoInt)];
                        if (_trailType._in((5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                            _trailType = (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                        };
                    };
                    var _resolvedType:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = ((0 : stdgo.GoUInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    if (_leadType == (_trailType)) {
                        _resolvedType = _leadType;
                    } else {
                        _resolvedType = _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__typeForLevel._typeForLevel(_s._level);
                    };
                    _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__setTypes._setTypes((_s._types.__slice__(_runStart, _runEnd) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>), _resolvedType);
                    _i = _runEnd;
                };
            };
        };
    }
    @:keep
    static public function _resolveWeakTypes( _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):Void {
        @:recv var _s:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _s;
        _s._assertOnly((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(3u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(4u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(6u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(8u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(9u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(12u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_),
(24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_));
        var _precedingCharacterType = (_s._sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        for (_i => _t in _s._types) {
            if (_t == ((12u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                _s._types[(_i : stdgo.GoInt)] = _precedingCharacterType;
            } else {
                _precedingCharacterType = _t;
            };
        };
        for (_i => _t in _s._types) {
            if (_t == ((2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                {
                    var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                        {
                            var _t = (_s._types[(_j : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                            if (_t._in((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                if (_t == ((13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                    _s._types[(_i : stdgo.GoInt)] = (5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                                };
                                break;
                            };
                        };
                    });
                };
            };
        };
        for (_i => _t in _s._types) {
            if (_t == ((13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                _s._types[(_i : stdgo.GoInt)] = (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            };
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.len() - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                var _t = (_s._types[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                if (((_t == (3u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || (_t == (6u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                    var _prevSepType = (_s._types[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    var _succSepType = (_s._types[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    if (((_prevSepType == (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) && (_succSepType == (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                        _s._types[(_i : stdgo.GoInt)] = (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    } else if (((_s._types[(_i : stdgo.GoInt)] == ((6u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) && _prevSepType == ((5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool) && (_succSepType == (5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                        _s._types[(_i : stdgo.GoInt)] = (5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    };
                };
            });
        };
        for (_i => _t in _s._types) {
            if (_t == ((4u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                var _runStart = (_i : stdgo.GoInt);
                var _runEnd = (_s._findRunLimit(_runStart, (4u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : stdgo.GoInt);
                var _t = (_s._sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                if ((_runStart > (0 : stdgo.GoInt) : Bool)) {
                    _t = _s._types[(_runStart - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
                if (_t != ((2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _t = _s._eos;
                    if ((_runEnd < (_s._types.length) : Bool)) {
                        _t = _s._types[(_runEnd : stdgo.GoInt)];
                    };
                };
                if (_t == ((2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__setTypes._setTypes((_s._types.__slice__(_runStart, _runEnd) : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>), (2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_));
                };
                _i = _runEnd;
            };
        };
        for (_i => _t in _s._types) {
            if (_t._in((3u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (4u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (6u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                _s._types[(_i : stdgo.GoInt)] = (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            };
        };
        for (_i => _t in _s._types) {
            if (_t == ((2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                var _prevStrongType = (_s._sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                {
                    var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                        _t = _s._types[(_j : stdgo.GoInt)];
                        if (((_t == (0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || (_t == (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                            _prevStrongType = _t;
                            break;
                        };
                    });
                };
                if (_prevStrongType == ((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _s._types[(_i : stdgo.GoInt)] = (0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                };
            };
        };
    }
    @:keep
    static public function len( _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>):stdgo.GoInt {
        @:recv var _i:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> = _i;
        return (_i._indexes.length);
    }
}
