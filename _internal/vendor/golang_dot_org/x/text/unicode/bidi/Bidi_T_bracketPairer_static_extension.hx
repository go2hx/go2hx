package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:keep @:allow(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi.T_bracketPairer_asInterface) class T_bracketPairer_static_extension {
    @:keep
    static public function _resolveBrackets( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        for (__0 => _loc in _p._pairPositions) {
            _p._assignBracketType(_loc?.__copy__(), _dirEmbed, _initialTypes);
        };
    }
    @:keep
    static public function _setBracketsToType( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirPair:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        _p._codesIsolatedRun[(_loc._opener : stdgo.GoInt)] = _dirPair;
        _p._codesIsolatedRun[(_loc._closer : stdgo.GoInt)] = _dirPair;
        {
            var _i = (_loc._opener + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loc._closer : Bool), _i++, {
                var _index = (_p._indexes[(_i : stdgo.GoInt)] : stdgo.GoInt);
                if (_initialTypes[(_index : stdgo.GoInt)] != ((12u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    break;
                };
                _p._codesIsolatedRun[(_i : stdgo.GoInt)] = _dirPair;
            });
        };
        {
            var _i = (_loc._closer + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_p._indexes.length) : Bool), _i++, {
                var _index = (_p._indexes[(_i : stdgo.GoInt)] : stdgo.GoInt);
                if (_initialTypes[(_index : stdgo.GoInt)] != ((12u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    break;
                };
                _p._codesIsolatedRun[(_i : stdgo.GoInt)] = _dirPair;
            });
        };
    }
    @:keep
    static public function _assignBracketType( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _initialTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        var _dirPair = (_p._classifyPairContent(_loc?.__copy__(), _dirEmbed) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        if (_dirPair == ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
            return;
        };
        if (_dirPair != (_dirEmbed)) {
            _dirPair = _p._classBeforePair(_loc?.__copy__());
            if (((_dirPair == _dirEmbed) || (_dirPair == (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                _dirPair = _dirEmbed;
            };
        };
        _p._setBracketsToType(_loc?.__copy__(), _dirPair, _initialTypes);
    }
    @:keep
    static public function _classBeforePair( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        {
            var _i = (_loc._opener - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                {
                    var _dir = (_p._getStrongTypeN0(_i) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                    if (_dir != ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                        return _dir;
                    };
                };
            });
        };
        return _p._sos;
    }
    @:keep
    static public function _classifyPairContent( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _loc:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair, _dirEmbed:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        var _dirOpposite = (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
        {
            var _i = (_loc._opener + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < _loc._closer : Bool), _i++, {
                var _dir = (_p._getStrongTypeN0(_i) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
                if (_dir == ((10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                    continue;
                };
                if (_dir == (_dirEmbed)) {
                    return _dir;
                };
                _dirOpposite = _dir;
            });
        };
        return _dirOpposite;
    }
    @:keep
    static public function _getStrongTypeN0( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _index:stdgo.GoInt):_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        {
            final __value__ = _p._codesIsolatedRun[(_index : stdgo.GoInt)];
            if (__value__ == ((2u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((5u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((13u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) || __value__ == ((1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return (1u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            } else if (__value__ == ((0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_))) {
                return (0u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            } else {
                return (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_);
            };
        };
    }
    @:keep
    static public function _locateBrackets( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _pairTypes:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType>, _pairValues:stdgo.Slice<stdgo.GoInt32>):Void {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        for (_i => _index in _p._indexes) {
            if (((_pairTypes[(_index : stdgo.GoInt)] == (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType)) || (_p._codesIsolatedRun[(_i : stdgo.GoInt)] != (10u32 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_)) : Bool)) {
                continue;
            };
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _pairTypes[(_index : stdgo.GoInt)];
                        if (__value__ == ((1 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType))) {
                            if (_p._openers.len() == ((63 : stdgo.GoInt))) {
                                _p._openers.init();
                                return;
                            };
                            _p._openers.pushFront(stdgo.Go.toInterface(_i));
                            break;
                        } else if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketType.T_bracketType))) {
                            var _count = (0 : stdgo.GoInt);
                            {
                                var _elem = _p._openers.front();
                                stdgo.Go.cfor(_elem != null && ((_elem : Dynamic).__nil__ == null || !(_elem : Dynamic).__nil__), _elem = _elem.next(), {
                                    _count++;
                                    var _opener = (stdgo.Go.typeAssert((_elem.value : stdgo.GoInt)) : stdgo.GoInt);
                                    if (_p._matchOpener(_pairValues, _opener, _i)) {
                                        _p._pairPositions = (_p._pairPositions.__append__((new _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair(_opener, _i) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair.T_bracketPair)));
                                        stdgo.Go.cfor((_count > (0 : stdgo.GoInt) : Bool), _count--, {
                                            _p._openers.remove(_p._openers.front());
                                        });
                                        break;
                                    };
                                });
                            };
                            stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_p._pairPositions));
                            break;
                        };
                    };
                    break;
                };
            };
        };
    }
    @:keep
    static public function _matchOpener( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer>, _pairValues:stdgo.Slice<stdgo.GoInt32>, _opener:stdgo.GoInt, _closer:stdgo.GoInt):Bool {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPairer.T_bracketPairer> = _p;
        return _pairValues[(_p._indexes[(_opener : stdgo.GoInt)] : stdgo.GoInt)] == (_pairValues[(_p._indexes[(_closer : stdgo.GoInt)] : stdgo.GoInt)]);
    }
}
