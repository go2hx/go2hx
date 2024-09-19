package stdgo._internal.text.template.parse;
class T_lexer_asInterface {
    @:keep
    public dynamic function _scanNumber():Bool return __self__.value._scanNumber();
    @:keep
    public dynamic function _atTerminator():Bool return __self__.value._atTerminator();
    @:keep
    public dynamic function _atRightDelim():{ var _0 : Bool; var _1 : Bool; } return __self__.value._atRightDelim();
    @:keep
    public dynamic function _nextItem():stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._nextItem();
    @:keep
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn return __self__.value._errorf(_format, ..._args);
    @:keep
    public dynamic function _acceptRun(_valid:stdgo.GoString):Void __self__.value._acceptRun(_valid);
    @:keep
    public dynamic function _accept(_valid:stdgo.GoString):Bool return __self__.value._accept(_valid);
    @:keep
    public dynamic function _ignore():Void __self__.value._ignore();
    @:keep
    public dynamic function _emitItem(_i:stdgo._internal.text.template.parse.Parse_T_item.T_item):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn return __self__.value._emitItem(_i);
    @:keep
    public dynamic function _emit(_t:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo._internal.text.template.parse.Parse_T_stateFn.T_stateFn return __self__.value._emit(_t);
    @:keep
    public dynamic function _thisItem(_t:stdgo._internal.text.template.parse.Parse_T_itemType.T_itemType):stdgo._internal.text.template.parse.Parse_T_item.T_item return __self__.value._thisItem(_t);
    @:keep
    public dynamic function _backup():Void __self__.value._backup();
    @:keep
    public dynamic function _peek():stdgo.GoInt32 return __self__.value._peek();
    @:keep
    public dynamic function _next():stdgo.GoInt32 return __self__.value._next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.template.parse.Parse_T_lexer.T_lexer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
