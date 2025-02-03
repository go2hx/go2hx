package stdgo.encoding.json;
class T_scanner_static_extension {
    static public function _error(_s:T_scanner, _c:std.UInt, _context:String):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        final _c = (_c : stdgo.GoUInt8);
        final _context = (_context : stdgo.GoString);
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._error(_s, _c, _context);
    }
    static public function _popParseState(_s:T_scanner):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._popParseState(_s);
    }
    static public function _pushParseState(_s:T_scanner, _c:std.UInt, _newParseState:StdTypes.Int, _successState:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        final _c = (_c : stdgo.GoUInt8);
        final _newParseState = (_newParseState : stdgo.GoInt);
        final _successState = (_successState : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._pushParseState(_s, _c, _newParseState, _successState);
    }
    static public function _eof(_s:T_scanner):StdTypes.Int {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        return stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._eof(_s);
    }
    static public function _reset(_s:T_scanner):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>);
        stdgo._internal.encoding.json.Json_T_scanner_static_extension.T_scanner_static_extension._reset(_s);
    }
}
