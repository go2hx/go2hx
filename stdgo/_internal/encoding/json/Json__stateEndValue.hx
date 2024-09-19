package stdgo._internal.encoding.json;
function _stateEndValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        var _n = (_s._parseState.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            _s._step = stdgo._internal.encoding.json.Json__stateEndTop._stateEndTop;
            _s._endTop = true;
            return stdgo._internal.encoding.json.Json__stateEndTop._stateEndTop(_s, _c);
        };
        if (stdgo._internal.encoding.json.Json__isSpace._isSpace(_c)) {
            _s._step = stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue;
            return (9 : stdgo.GoInt);
        };
        var _ps = (_s._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        {
            final __value__ = _ps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                if (_c == ((58 : stdgo.GoUInt8))) {
                    _s._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
                    _s._step = stdgo._internal.encoding.json.Json__stateBeginValue._stateBeginValue;
                    return (3 : stdgo.GoInt);
                };
                return _s._error(_c, ("after object key" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    _s._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    _s._step = stdgo._internal.encoding.json.Json__stateBeginString._stateBeginString;
                    return (4 : stdgo.GoInt);
                };
                if (_c == ((125 : stdgo.GoUInt8))) {
                    _s._popParseState();
                    return (5 : stdgo.GoInt);
                };
                return _s._error(_c, ("after object key:value pair" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    _s._step = stdgo._internal.encoding.json.Json__stateBeginValue._stateBeginValue;
                    return (7 : stdgo.GoInt);
                };
                if (_c == ((93 : stdgo.GoUInt8))) {
                    _s._popParseState();
                    return (8 : stdgo.GoInt);
                };
                return _s._error(_c, ("after array element" : stdgo.GoString));
            };
        };
        return _s._error(_c, stdgo.Go.str()?.__copy__());
    }
