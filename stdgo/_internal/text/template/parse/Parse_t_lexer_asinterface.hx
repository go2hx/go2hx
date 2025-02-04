package stdgo._internal.text.template.parse;
class T_lexer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _scanNumber():Bool return @:_0 __self__.value._scanNumber();
    @:keep
    @:tdfield
    public dynamic function _atTerminator():Bool return @:_0 __self__.value._atTerminator();
    @:keep
    @:tdfield
    public dynamic function _atRightDelim():{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._atRightDelim();
    @:keep
    @:tdfield
    public dynamic function _nextItem():stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._nextItem();
    @:keep
    @:tdfield
    public dynamic function _errorf(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn return @:_0 __self__.value._errorf(_format, ..._args);
    @:keep
    @:tdfield
    public dynamic function _acceptRun(_valid:stdgo.GoString):Void @:_0 __self__.value._acceptRun(_valid);
    @:keep
    @:tdfield
    public dynamic function _accept(_valid:stdgo.GoString):Bool return @:_0 __self__.value._accept(_valid);
    @:keep
    @:tdfield
    public dynamic function _ignore():Void @:_0 __self__.value._ignore();
    @:keep
    @:tdfield
    public dynamic function _emitItem(_i:stdgo._internal.text.template.parse.Parse_t_item.T_item):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn return @:_0 __self__.value._emitItem(_i);
    @:keep
    @:tdfield
    public dynamic function _emit(_t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_statefn.T_stateFn return @:_0 __self__.value._emit(_t);
    @:keep
    @:tdfield
    public dynamic function _thisItem(_t:stdgo._internal.text.template.parse.Parse_t_itemtype.T_itemType):stdgo._internal.text.template.parse.Parse_t_item.T_item return @:_0 __self__.value._thisItem(_t);
    @:keep
    @:tdfield
    public dynamic function _backup():Void @:_0 __self__.value._backup();
    @:keep
    @:tdfield
    public dynamic function _peek():stdgo.GoInt32 return @:_0 __self__.value._peek();
    @:keep
    @:tdfield
    public dynamic function _next():stdgo.GoInt32 return @:_0 __self__.value._next();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.text.template.parse.Parse_t_lexerpointer.T_lexerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
