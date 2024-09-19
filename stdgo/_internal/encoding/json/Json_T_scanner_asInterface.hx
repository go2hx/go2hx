package stdgo._internal.encoding.json;
class T_scanner_asInterface {
    @:keep
    public dynamic function _error(_c:stdgo.GoUInt8, _context:stdgo.GoString):stdgo.GoInt return __self__.value._error(_c, _context);
    @:keep
    public dynamic function _popParseState():Void __self__.value._popParseState();
    @:keep
    public dynamic function _pushParseState(_c:stdgo.GoUInt8, _newParseState:stdgo.GoInt, _successState:stdgo.GoInt):stdgo.GoInt return __self__.value._pushParseState(_c, _newParseState, _successState);
    @:keep
    public dynamic function _eof():stdgo.GoInt return __self__.value._eof();
    @:keep
    public dynamic function _reset():Void __self__.value._reset();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
