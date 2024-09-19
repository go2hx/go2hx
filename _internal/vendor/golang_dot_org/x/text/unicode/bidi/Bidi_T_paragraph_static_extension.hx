package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_paragraph_asInterface) class T_paragraph_static_extension {
    @:keep
    static public function _getReordering( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validateLineBreaks._validateLineBreaks(_linebreaks, _p.len());
        return _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__computeMultilineReordering._computeMultilineReordering(_p._getLevels(_linebreaks), _linebreaks);
    }
    @:keep
    static public function _getLevels( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>, _linebreaks:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level> {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__validateLineBreaks._validateLineBreaks(_linebreaks, _p.len());
        var _result = ((null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>).__append__(...(_p._resultLevels : Array<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>)));
        for (_i => _t in _p._initialTypes) {
            if (_t._in((7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (8u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                _result[(_i : stdgo.GoInt)] = _p._embeddingLevel;
                {
                    var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                    stdgo.Go.cfor((_j >= (0 : stdgo.GoInt) : Bool), _j--, {
                        if (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__isWhitespace._isWhitespace(_p._initialTypes[(_j : stdgo.GoInt)])) {
                            _result[(_j : stdgo.GoInt)] = _p._embeddingLevel;
                        } else {
                            break;
                        };
                    });
                };
            };
        };
        var _start = (0 : stdgo.GoInt);
        for (__0 => _limit in _linebreaks) {
            {
                var _j = (_limit - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_j >= _start : Bool), _j--, {
                    if (_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__isWhitespace._isWhitespace(_p._initialTypes[(_j : stdgo.GoInt)])) {
                        _result[(_j : stdgo.GoInt)] = _p._embeddingLevel;
                    } else {
                        break;
                    };
                });
            };
            _start = _limit;
        };
        return _result;
    }
    @:keep
    static public function _assignLevelsToCharactersRemovedByX9( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        for (_i => _t in _p._initialTypes) {
            if (_t._in((18u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (19u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (16u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (17u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (20u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (11u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                _p._resultTypes[(_i : stdgo.GoInt)] = _t;
                _p._resultLevels[(_i : stdgo.GoInt)] = (-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
            };
        };
        if (_p._resultLevels[(0 : stdgo.GoInt)] == ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
            _p._resultLevels[(0 : stdgo.GoInt)] = _p._embeddingLevel;
        };
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_p._initialTypes.length) : Bool), _i++, {
                if (_p._resultLevels[(_i : stdgo.GoInt)] == ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
                    _p._resultLevels[(_i : stdgo.GoInt)] = _p._resultLevels[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)];
                };
            });
        };
    }
    @:keep
    static public function _determineIsolatingRunSequences( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):stdgo.Slice<stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>> {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        var _levelRuns = _p._determineLevelRuns();
        var _runForCharacter = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _run in _levelRuns) {
            for (__0 => _index in _run) {
                _runForCharacter[(_index : stdgo.GoInt)] = _i;
            };
        };
        var _sequences = (new stdgo.Slice<stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>>(0, 0, ...[]) : stdgo.Slice<stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>>);
        var _currentRunSequence:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        for (__0 => _run in _levelRuns) {
            var _first = (_run[(0 : stdgo.GoInt)] : stdgo.GoInt);
            if (((_p._initialTypes[(_first : stdgo.GoInt)] != (24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || (_p._matchingIsolateInitiator[(_first : stdgo.GoInt)] == (-1 : stdgo.GoInt)) : Bool)) {
                _currentRunSequence = (null : stdgo.Slice<stdgo.GoInt>);
                while (true) {
                    _currentRunSequence = (_currentRunSequence.__append__(...(_run : Array<stdgo.GoInt>)));
                    var _last = (_currentRunSequence[((_currentRunSequence.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
                    var _lastT = (_p._initialTypes[(_last : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    if ((_lastT._in((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) && (_p._matchingPDI[(_last : stdgo.GoInt)] != _p.len()) : Bool)) {
                        _run = _levelRuns[(_runForCharacter[(_p._matchingPDI[(_last : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)];
                    } else {
                        break;
                    };
                };
                _sequences = (_sequences.__append__(_p._isolatingRunSequence(_currentRunSequence)));
            };
        };
        return _sequences;
    }
    @:keep
    static public function _determineLevelRuns( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):stdgo.Slice<stdgo.Slice<stdgo.GoInt>> {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        var _run = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _allRuns = (new stdgo.Slice<stdgo.Slice<stdgo.GoInt>>(0, 0, ...[]) : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
        var _currentLevel = (-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        for (_i => _ in _p._initialTypes) {
            if (!_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__isRemovedByX9._isRemovedByX9(_p._initialTypes[(_i : stdgo.GoInt)])) {
                if (_p._resultLevels[(_i : stdgo.GoInt)] != (_currentLevel)) {
                    if ((_currentLevel >= (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : Bool)) {
                        _allRuns = (_allRuns.__append__(_run));
                        _run = (null : stdgo.Slice<stdgo.GoInt>);
                    };
                    _currentLevel = _p._resultLevels[(_i : stdgo.GoInt)];
                };
                _run = (_run.__append__(_i));
            };
        };
        if (((_run.length) > (0 : stdgo.GoInt) : Bool)) {
            _allRuns = (_allRuns.__append__(_run));
        };
        return _allRuns;
    }
    @:keep
    static public function _isolatingRunSequence( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>, _indexes:stdgo.Slice<stdgo.GoInt>):stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence> {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        var _length = (_indexes.length : stdgo.GoInt);
        var _types = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>);
        for (_i => _x in _indexes) {
            _types[(_i : stdgo.GoInt)] = _p._resultTypes[(_x : stdgo.GoInt)];
        };
        var _prevChar = (_indexes[(0 : stdgo.GoInt)] - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (((_prevChar >= (0 : stdgo.GoInt) : Bool) && _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__isRemovedByX9._isRemovedByX9(_p._initialTypes[(_prevChar : stdgo.GoInt)]) : Bool)) {
            _prevChar--;
        };
        var _prevLevel = (_p._embeddingLevel : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        if ((_prevChar >= (0 : stdgo.GoInt) : Bool)) {
            _prevLevel = _p._resultLevels[(_prevChar : stdgo.GoInt)];
        };
        var _succLevel:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level = ((0 : stdgo.GoInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        var _lastType = (_types[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        if (_lastType._in((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
            _succLevel = _p._embeddingLevel;
        } else {
            var _limit = (_indexes[(_length - (1 : stdgo.GoInt) : stdgo.GoInt)] + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor(((_limit < _p.len() : Bool) && _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__isRemovedByX9._isRemovedByX9(_p._initialTypes[(_limit : stdgo.GoInt)]) : Bool), _limit++, {});
            _succLevel = _p._embeddingLevel;
            if ((_limit < _p.len() : Bool)) {
                _succLevel = _p._resultLevels[(_limit : stdgo.GoInt)];
            };
        };
        var _level = (_p._resultLevels[(_indexes[(0 : stdgo.GoInt)] : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
        return (stdgo.Go.setRef(({ _p : _p, _indexes : _indexes, _types : _types, _level : _level, _sos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__typeForLevel._typeForLevel(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__maxLevel._maxLevel(_prevLevel, _level)), _eos : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__typeForLevel._typeForLevel(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__maxLevel._maxLevel(_succLevel, _level)) } : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>);
    }
    @:keep
    static public function _determineExplicitEmbeddingLevels( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        var _stack:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack = ({} : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), __2:stdgo.GoInt = (0 : stdgo.GoInt);
var _validIsolateCount = __2, _overflowEmbeddingCount = __1, _overflowIsolateCount = __0;
        _stack._push(_p._embeddingLevel, (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), false);
        for (_i => _t in _p._resultTypes) {
            {
                final __value__ = _t;
                if (__value__ == ((19u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((18u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((17u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((16u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    var _isIsolate = (_t._in((22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool);
                    var _isRTL = (_t._in((19u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (17u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool);
                    if (_t == ((23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                        _isRTL = (_p._determineParagraphEmbeddingLevel((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _p._matchingPDI[(_i : stdgo.GoInt)]) == (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level));
                    };
                    if (_isIsolate) {
                        _p._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                        if (_stack._lastDirectionalOverrideStatus() != ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                            _p._resultTypes[(_i : stdgo.GoInt)] = _stack._lastDirectionalOverrideStatus();
                        };
                    };
                    var _newLevel:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level = ((0 : stdgo.GoInt8) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                    if (_isRTL) {
                        _newLevel = (((_stack._lastEmbeddingLevel() + (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) | (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                    } else {
                        _newLevel = (((_stack._lastEmbeddingLevel() + (2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) & (((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) ^ (-1i32 : stdgo.GoInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level)) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
                    };
                    if ((((_newLevel <= (125 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level) : Bool) && _overflowIsolateCount == ((0 : stdgo.GoInt)) : Bool) && (_overflowEmbeddingCount == (0 : stdgo.GoInt)) : Bool)) {
                        if (_isIsolate) {
                            _validIsolateCount++;
                        };
                        {
                            final __value__ = _t;
                            if (__value__ == ((16u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                _stack._push(_newLevel, (0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), _isIsolate);
                            } else if (__value__ == ((17u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                _stack._push(_newLevel, (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), _isIsolate);
                            } else {
                                _stack._push(_newLevel, (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), _isIsolate);
                            };
                        };
                        if (!_isIsolate) {
                            _p._resultLevels[(_i : stdgo.GoInt)] = _newLevel;
                        };
                    } else {
                        if (_isIsolate) {
                            _overflowIsolateCount++;
                        } else {
                            if (_overflowIsolateCount == ((0 : stdgo.GoInt))) {
                                _overflowEmbeddingCount++;
                            };
                        };
                    };
                } else if (__value__ == ((24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    if ((_overflowIsolateCount > (0 : stdgo.GoInt) : Bool)) {
                        _overflowIsolateCount--;
                    } else if (_validIsolateCount == ((0 : stdgo.GoInt))) {} else {
                        _overflowEmbeddingCount = (0 : stdgo.GoInt);
                        while (!_stack._lastDirectionalIsolateStatus()) {
                            _stack._pop();
                        };
                        _stack._pop();
                        _validIsolateCount--;
                    };
                    _p._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                } else if (__value__ == ((20u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _p._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                    if ((_overflowIsolateCount > (0 : stdgo.GoInt) : Bool)) {} else if ((_overflowEmbeddingCount > (0 : stdgo.GoInt) : Bool)) {
                        _overflowEmbeddingCount--;
                    } else if ((!_stack._lastDirectionalIsolateStatus() && (_stack._depth() >= (2 : stdgo.GoInt) : Bool) : Bool)) {
                        _stack._pop();
                    };
                } else if (__value__ == ((7u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    _stack._empty();
                    _overflowIsolateCount = (0 : stdgo.GoInt);
                    _overflowEmbeddingCount = (0 : stdgo.GoInt);
                    _validIsolateCount = (0 : stdgo.GoInt);
                    _p._resultLevels[(_i : stdgo.GoInt)] = _p._embeddingLevel;
                } else {
                    _p._resultLevels[(_i : stdgo.GoInt)] = _stack._lastEmbeddingLevel();
                    if (_stack._lastDirectionalOverrideStatus() != ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                        _p._resultTypes[(_i : stdgo.GoInt)] = _stack._lastDirectionalOverrideStatus();
                    };
                };
            };
        };
    }
    @:keep
    static public function _determineParagraphEmbeddingLevel( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>, _start:stdgo.GoInt, _end:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        var _strongType:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ = (-1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        {
            var _i = (_start : stdgo.GoInt);
            stdgo.Go.cfor((_i < _end : Bool), _i++, {
                {
                    var _t = (_p._resultTypes[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    if (_t._in((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                        _strongType = _t;
                        break;
                    } else if (_t._in((23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                        _i = _p._matchingPDI[(_i : stdgo.GoInt)];
                        if ((_i > _end : Bool)) {
                            stdgo._internal.log.Log_panic.panic(stdgo.Go.toInterface(("assert (i <= end)" : stdgo.GoString)));
                        };
                    };
                };
            });
        };
        {
            final __value__ = _strongType;
            if (__value__ == ((-1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
            } else if (__value__ == ((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
            } else {
                return (1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level);
            };
        };
    }
    @:keep
    static public function _determineMatchingIsolates( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        _p._matchingPDI = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        _p._matchingIsolateInitiator = (new stdgo.Slice<stdgo.GoInt>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        for (_i => _ in _p._matchingIsolateInitiator) {
            _p._matchingIsolateInitiator[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
        };
        for (_i => _ in _p._matchingPDI) {
            _p._matchingPDI[(_i : stdgo.GoInt)] = (-1 : stdgo.GoInt);
            {
                var _t = (_p._resultTypes[(_i : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                if (_t._in((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    var _depthCounter = (1 : stdgo.GoInt);
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _p.len() : Bool), _j++, {
                            {
                                var _u = (_p._resultTypes[(_j : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                                if (_u._in((21u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (22u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_), (23u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                    _depthCounter++;
                                } else if (_u == ((24u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                                    {
                                        _depthCounter--;
                                        if (_depthCounter == ((0 : stdgo.GoInt))) {
                                            _p._matchingPDI[(_i : stdgo.GoInt)] = _j;
                                            _p._matchingIsolateInitiator[(_j : stdgo.GoInt)] = _i;
                                            break;
                                        };
                                    };
                                };
                            };
                        });
                    };
                    if (_p._matchingPDI[(_i : stdgo.GoInt)] == ((-1 : stdgo.GoInt))) {
                        _p._matchingPDI[(_i : stdgo.GoInt)] = _p.len();
                    };
                };
            };
        };
    }
    @:keep
    static public function _run( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        _p._determineMatchingIsolates();
        if (_p._embeddingLevel == ((-1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level))) {
            _p._embeddingLevel = _p._determineParagraphEmbeddingLevel((0 : stdgo.GoInt), _p.len());
        };
        _p._resultLevels = (new stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>((_p.len() : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level>);
        _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__setLevels._setLevels(_p._resultLevels, _p._embeddingLevel);
        _p._determineExplicitEmbeddingLevels();
        for (__0 => _seq in _p._determineIsolatingRunSequences()) {
            _seq._resolveWeakTypes();
            _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi__resolvePairedBrackets._resolvePairedBrackets(_seq);
            _seq._resolveNeutralTypes();
            _seq._resolveImplicitLevels();
            _seq._applyLevelsAndTypes();
        };
        _p._assignLevelsToCharactersRemovedByX9();
    }
    @:keep
    static public function len( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_paragraph.T_paragraph> = _p;
        return (_p._initialTypes.length);
    }
}
