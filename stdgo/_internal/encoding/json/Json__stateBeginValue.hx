package stdgo._internal.encoding.json;
function _stateBeginValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        {
            final __value__ = _c;
            if (__value__ == ((123 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateBeginStringOrEmpty._stateBeginStringOrEmpty;
                return _s._pushParseState(_c, (0 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateBeginValueOrEmpty._stateBeginValueOrEmpty;
                return _s._pushParseState(_c, (2 : stdgo.GoInt), (6 : stdgo.GoInt));
            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateInString._stateInString;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateNeg._stateNeg;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__state0._state0;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateT._stateT;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateF._stateF;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateN._stateN;
                return (1 : stdgo.GoInt);
            };
        };
        if ((((49 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            _s._step = stdgo._internal.encoding.json.Json__state1._state1;
            return (1 : stdgo.GoInt);
        };
        return _s._error(_c, ("looking for beginning of value" : stdgo.GoString));
    }
