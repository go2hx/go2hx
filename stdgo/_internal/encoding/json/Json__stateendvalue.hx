package stdgo._internal.encoding.json;
function _stateEndValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        var _n = ((@:checkr _s ?? throw "null pointer dereference")._parseState.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L281"
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendtop._stateEndTop;
            (@:checkr _s ?? throw "null pointer dereference")._endTop = true;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L285"
            return stdgo._internal.encoding.json.Json__stateendtop._stateEndTop(_s, _c);
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L287"
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L289"
            return (9 : stdgo.GoInt);
        };
        var _ps = ((@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L292"
        {
            final __value__ = _ps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L294"
                if (_c == ((58 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (1 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L297"
                    return (3 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L299"
                return _s._error(_c, ("after object key" : stdgo.GoString));
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L301"
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._parseState[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = (0 : stdgo.GoInt);
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginstring._stateBeginString;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L304"
                    return (4 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L306"
                if (_c == ((125 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L307"
                    _s._popParseState();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L308"
                    return (5 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L310"
                return _s._error(_c, ("after object key:value pair" : stdgo.GoString));
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L312"
                if (_c == ((44 : stdgo.GoUInt8))) {
                    (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L314"
                    return (7 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L316"
                if (_c == ((93 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L317"
                    _s._popParseState();
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L318"
                    return (8 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L320"
                return _s._error(_c, ("after array element" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/scanner.go#L322"
        return _s._error(_c, (stdgo.Go.str() : stdgo.GoString)?.__copy__());
    }
