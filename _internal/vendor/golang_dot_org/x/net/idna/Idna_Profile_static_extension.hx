package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.Profile_asInterface) class Profile_static_extension {
    @:keep
    static public function _validateLabel( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):stdgo.Error {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        var _err = (null : stdgo.Error);
        if (_s == (stdgo.Go.str())) {
            if (_p._options._verifyDNSLength) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
            };
            return (null : stdgo.Error);
        };
        if (_p._options._checkHyphens) {
            if (((((_s.length) > (4 : stdgo.GoInt) : Bool) && _s[(2 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && (_s[(3 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V2" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
            };
            if (((_s[(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) || (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V3" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
            };
        };
        if (!_p._options._checkJoiners) {
            return (null : stdgo.Error);
        };
        var _trie = _p._options._trie;
        var __tmp__ = _trie._lookupString(_s?.__copy__()), _v:stdgo.GoUInt16 = __tmp__._0, _sz:stdgo.GoInt = __tmp__._1;
        var _x = (_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
        if (_x._isModifier()) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("V5" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
        };
        if (((stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("\u200d" : stdgo.GoString)) == (-1 : stdgo.GoInt)) && (stdgo._internal.strings.Strings_index.index(_s?.__copy__(), ("\u200c" : stdgo.GoString)) == (-1 : stdgo.GoInt)) : Bool)) {
            return (null : stdgo.Error);
        };
        var _st = (0 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_joinState.T_joinState);
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _jt = (_x._joinType() : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
                if ((_s.__slice__(_i, (_i + _sz : stdgo.GoInt)) : stdgo.GoString) == (("\u200d" : stdgo.GoString))) {
                    _jt = (5 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
                } else if ((_s.__slice__(_i, (_i + _sz : stdgo.GoInt)) : stdgo.GoString) == (("\u200c" : stdgo.GoString))) {
                    _jt = (6 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
                };
                _st = _internal.vendor.golang_dot_org.x.net.idna.Idna__joinStates._joinStates[(_st : stdgo.GoInt)][(_jt : stdgo.GoInt)];
                if (_x._isViramaModifier()) {
                    _st = _internal.vendor.golang_dot_org.x.net.idna.Idna__joinStates._joinStates[(_st : stdgo.GoInt)][(7 : stdgo.GoInt)];
                };
                {
                    _i = (_i + (_sz) : stdgo.GoInt);
                    if (_i == ((_s.length))) {
                        break;
                    };
                };
                {
                    var __tmp__ = _trie._lookupString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _v = __tmp__._0;
                    _sz = __tmp__._1;
                };
                _x = (_v : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_info.T_info);
            };
        };
        if (((_st == (5 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_joinState.T_joinState)) || (_st == (4 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_joinState.T_joinState)) : Bool)) {
            return stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("C" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _simplify( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _cat:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category):_internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        {
            final __value__ = _cat;
            if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                if (_p._options._useSTD3Rules) {
                    _cat = (64 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                } else {
                    _cat = (1 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                };
            } else if (__value__ == ((128 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                if (_p._options._useSTD3Rules) {
                    _cat = (64 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                } else {
                    _cat = (8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                };
            } else if (__value__ == ((3 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                if (!_p._options._transitional) {
                    _cat = (8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
                };
            } else if (__value__ == ((24 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category)) || __value__ == ((40 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category))) {
                _cat = (8 : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_category.T_category);
            };
        };
        return _cat;
    }
    @:keep
    static public function _process( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString, _toASCII:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        var _err:stdgo.Error = (null : stdgo.Error);
        var _isBidi:Bool = false;
        if (_p._options._mapping != null) {
            {
                var __tmp__ = _p._options._mapping(_p, _s?.__copy__());
                _s = __tmp__._0?.__copy__();
                _isBidi = __tmp__._1;
                _err = __tmp__._2;
            };
        };
        if (_p._options._removeLeadingDots) {
            stdgo.Go.cfor((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool), _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), {});
        };
        if (((_err == null && _p._options._verifyDNSLength : Bool) && (_s == stdgo.Go.str()) : Bool)) {
            _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
        };
        var _labels = ({ _orig : _s?.__copy__() } : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelIter.T_labelIter);
        stdgo.Go.cfor(!_labels._done(), _labels._next(), {
            var _label = (_labels._label()?.__copy__() : stdgo.GoString);
            if (_label == (stdgo.Go.str())) {
                if (((_err == null) && _p._options._verifyDNSLength : Bool)) {
                    _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
                };
                continue;
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_label?.__copy__(), ("xn--" : stdgo.GoString))) {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__decode._decode((_label.__slice__((("xn--" : stdgo.GoString).length)) : stdgo.GoString)?.__copy__()), _u:stdgo.GoString = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                if (_err2 != null) {
                    if (_err == null) {
                        _err = _err2;
                    };
                    continue;
                };
                _isBidi = (_isBidi || (_internal.golang_dot_org.x.text.secure.bidirule.Bidirule_directionString.directionString(_u?.__copy__()) != (0 : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction)) : Bool);
                _labels._set(_u?.__copy__());
                if (((_err == null) && (_p._options._fromPuny != null) : Bool)) {
                    _err = _p._options._fromPuny(_p, _u?.__copy__());
                };
                if (_err == null) {
                    _err = _p._validateLabel(_u?.__copy__());
                };
            } else if (_err == null) {
                _err = _p._validateLabel(_label?.__copy__());
            };
        });
        if (((_isBidi && _p._options._bidirule != null : Bool) && (_err == null) : Bool)) {
            {
                _labels._reset();
                stdgo.Go.cfor(!_labels._done(), _labels._next(), {
                    if (!_p._options._bidirule(_labels._label()?.__copy__())) {
                        _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("B" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
                        break;
                    };
                });
            };
        };
        if (_toASCII) {
            {
                _labels._reset();
                stdgo.Go.cfor(!_labels._done(), _labels._next(), {
                    var _label = (_labels._label()?.__copy__() : stdgo.GoString);
                    if (!_internal.vendor.golang_dot_org.x.net.idna.Idna__ascii._ascii(_label?.__copy__())) {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.net.idna.Idna__encode._encode(("xn--" : stdgo.GoString), _label?.__copy__()), _a:stdgo.GoString = __tmp__._0, _err2:stdgo.Error = __tmp__._1;
                        if (_err == null) {
                            _err = _err2;
                        };
                        _label = _a?.__copy__();
                        _labels._set(_a?.__copy__());
                    };
                    var _n = (_label.length : stdgo.GoInt);
                    if (((_p._options._verifyDNSLength && _err == null : Bool) && (((_n == (0 : stdgo.GoInt)) || (_n > (63 : stdgo.GoInt) : Bool) : Bool)) : Bool)) {
                        _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_label?.__copy__(), ("A4" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
                    };
                });
            };
        };
        _s = _labels._result()?.__copy__();
        if (((_toASCII && _p._options._verifyDNSLength : Bool) && (_err == null) : Bool)) {
            var _n = (_s.length : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_s[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                _n--;
            };
            if ((((_s.length) < (1 : stdgo.GoInt) : Bool) || (_n > (253 : stdgo.GoInt) : Bool) : Bool)) {
                _err = stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError(_s?.__copy__(), ("A4" : stdgo.GoString)) : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError>));
            };
        };
        return { _0 : _s?.__copy__(), _1 : _err };
    }
    @:keep
    static public function string( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        var _s = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        if (_p._options._transitional) {
            _s = ("Transitional" : stdgo.GoString);
        } else {
            _s = ("NonTransitional" : stdgo.GoString);
        };
        if (_p._options._useSTD3Rules) {
            _s = (_s + ((":UseSTD3Rules" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_p._options._checkHyphens) {
            _s = (_s + ((":CheckHyphens" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_p._options._checkJoiners) {
            _s = (_s + ((":CheckJoiners" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        if (_p._options._verifyDNSLength) {
            _s = (_s + ((":VerifyDNSLength" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        return _s?.__copy__();
    }
    @:keep
    static public function toUnicode( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        var _pp = ((_p : _internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile)?.__copy__() : _internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile);
        _pp._options._transitional = false;
        return _pp._process(_s?.__copy__(), false);
    }
    @:keep
    static public function toASCII( _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile>, _s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_Profile.Profile> = _p;
        return _p._process(_s?.__copy__(), true);
    }
}
