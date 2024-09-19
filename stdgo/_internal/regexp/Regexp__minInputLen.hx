package stdgo._internal.regexp;
function _minInputLen(_re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):stdgo.GoInt {
        {
            final __value__ = _re.op;
            if (__value__ == ((6 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((5 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((4 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((3 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (0 : stdgo.GoInt);
                for (__0 => _r in _re.rune) {
                    if (_r == ((65533 : stdgo.GoInt32))) {
                        _l++;
                    } else {
                        _l = (_l + (stdgo._internal.unicode.utf8.Utf8_runeLen.runeLen(_r)) : stdgo.GoInt);
                    };
                };
                return _l;
            } else if (__value__ == ((13 : stdgo._internal.regexp.syntax.Syntax_Op.Op)) || __value__ == ((15 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_re.sub[(0 : stdgo.GoInt)]);
            } else if (__value__ == ((17 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                return (_re.min * stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_re.sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
            } else if (__value__ == ((18 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (0 : stdgo.GoInt);
                for (__0 => _sub in _re.sub) {
                    _l = (_l + (stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_sub)) : stdgo.GoInt);
                };
                return _l;
            } else if (__value__ == ((19 : stdgo._internal.regexp.syntax.Syntax_Op.Op))) {
                var _l = (stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_re.sub[(0 : stdgo.GoInt)]) : stdgo.GoInt);
                var _lnext:stdgo.GoInt = (0 : stdgo.GoInt);
                for (__0 => _sub in (_re.sub.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>>)) {
                    _lnext = stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_sub);
                    if ((_lnext < _l : Bool)) {
                        _l = _lnext;
                    };
                };
                return _l;
            } else {
                return (0 : stdgo.GoInt);
            };
        };
    }
