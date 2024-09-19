package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_scanner_asInterface) class T_scanner_static_extension {
    @:keep
    static public function _error( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8, _context:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> = _s;
        _s._step = stdgo._internal.encoding.json.Json__stateError._stateError;
        _s._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError((((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quoteChar._quoteChar(_c)?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), _s._bytes) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>));
        return (11 : stdgo.GoInt);
    }
    @:keep
    static public function _popParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> = _s;
        var _n = ((_s._parseState.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        _s._parseState = (_s._parseState.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
        if (_n == ((0 : stdgo.GoInt))) {
            _s._step = stdgo._internal.encoding.json.Json__stateEndTop._stateEndTop;
            _s._endTop = true;
        } else {
            _s._step = stdgo._internal.encoding.json.Json__stateEndValue._stateEndValue;
        };
    }
    @:keep
    static public function _pushParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8, _newParseState:stdgo.GoInt, _successState:stdgo.GoInt):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> = _s;
        _s._parseState = (_s._parseState.__append__(_newParseState));
        if (((_s._parseState.length) <= (10000 : stdgo.GoInt) : Bool)) {
            return _successState;
        };
        return _s._error(_c, ("exceeded max depth" : stdgo.GoString));
    }
    @:keep
    static public function _eof( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> = _s;
        if (_s._err != null) {
            return (11 : stdgo.GoInt);
        };
        if (_s._endTop) {
            return (10 : stdgo.GoInt);
        };
        _s._step(_s, (32 : stdgo.GoUInt8));
        if (_s._endTop) {
            return (10 : stdgo.GoInt);
        };
        if (_s._err == null) {
            _s._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError(("unexpected end of JSON input" : stdgo.GoString), _s._bytes) : stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SyntaxError.SyntaxError>));
        };
        return (11 : stdgo.GoInt);
    }
    @:keep
    static public function _reset( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner> = _s;
        _s._step = stdgo._internal.encoding.json.Json__stateBeginValue._stateBeginValue;
        _s._parseState = (_s._parseState.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        _s._err = (null : stdgo.Error);
        _s._endTop = false;
    }
}
