package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_scanner_asInterface) class T_scanner_static_extension {
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8, _context:stdgo.GoString):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateerror._stateError;
        (@:checkr _s ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError((((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quotechar._quoteChar(_c)?.__copy__() : stdgo.GoString) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), (@:checkr _s ?? throw "null pointer dereference")._bytes) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
        return (11 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _popParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        var _n = (((@:checkr _s ?? throw "null pointer dereference")._parseState.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._parseState = ((@:checkr _s ?? throw "null pointer dereference")._parseState.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoInt>);
        if (_n == ((0 : stdgo.GoInt))) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendtop._stateEndTop;
            (@:checkr _s ?? throw "null pointer dereference")._endTop = true;
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue;
        };
    }
    @:keep
    @:tdfield
    static public function _pushParseState( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8, _newParseState:stdgo.GoInt, _successState:stdgo.GoInt):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._parseState = ((@:checkr _s ?? throw "null pointer dereference")._parseState.__append__(_newParseState));
        if ((((@:checkr _s ?? throw "null pointer dereference")._parseState.length) <= (10000 : stdgo.GoInt) : Bool)) {
            return _successState;
        };
        return @:check2r _s._error(_c, ("exceeded max depth" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _eof( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
            return (11 : stdgo.GoInt);
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._endTop) {
            return (10 : stdgo.GoInt);
        };
        (@:checkr _s ?? throw "null pointer dereference")._step(_s, (32 : stdgo.GoUInt8));
        if ((@:checkr _s ?? throw "null pointer dereference")._endTop) {
            return (10 : stdgo.GoInt);
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._err == null) {
            (@:checkr _s ?? throw "null pointer dereference")._err = stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("unexpected end of JSON input" : stdgo.GoString), (@:checkr _s ?? throw "null pointer dereference")._bytes) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
        };
        return (11 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _reset( _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner> = _s;
        (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalue._stateBeginValue;
        (@:checkr _s ?? throw "null pointer dereference")._parseState = ((@:checkr _s ?? throw "null pointer dereference")._parseState.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
        (@:checkr _s ?? throw "null pointer dereference")._err = (null : stdgo.Error);
        (@:checkr _s ?? throw "null pointer dereference")._endTop = false;
    }
}
