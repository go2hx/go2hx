package stdgo._internal.encoding.json;
function _stateEndValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        var _n = ((@:checkr _s ?? throw "null pointer dereference")._parseState.length : stdgo.GoInt);
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendtop._stateEndTop;
            (@:checkr _s ?? throw "null pointer dereference")._endTop = true;
            return stdgo._internal.encoding.json.Json__stateendtop._stateEndTop(_s, _c);
        };
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            return (9 : stdgo.GoInt);
        };
        var _ps = ((@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        {
            final __value__ = _ps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                if (_c == ((58 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
                    return (3 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after object key" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginstring._stateBeginString;
                    return (4 : stdgo.GoInt);
                };
                if (_c == ((125 : stdgo.GoUInt8))) {
                    @:check2r _s._popParseState();
                    return (5 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after object key:value pair" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
                    return (7 : stdgo.GoInt);
                };
                if (_c == ((93 : stdgo.GoUInt8))) {
                    @:check2r _s._popParseState();
                    return (8 : stdgo.GoInt);
                };
                return @:check2r _s._error(_c, ("after array element" : stdgo.GoString));
            };
        };
        return @:check2r _s._error(_c, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
