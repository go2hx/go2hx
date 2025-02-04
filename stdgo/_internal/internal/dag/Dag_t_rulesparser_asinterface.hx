package stdgo._internal.internal.dag;
class T_rulesParser_asInterface {
    @:keep
    @:tdfield
    public dynamic function _nextToken():stdgo.GoString return @:_0 __self__.value._nextToken();
    @:keep
    @:tdfield
    public dynamic function _nextList():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoString; } return @:_0 __self__.value._nextList();
    @:keep
    @:tdfield
    public dynamic function _syntaxError(_msg:stdgo.GoString):Void @:_0 __self__.value._syntaxError(_msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.dag.Dag_t_rulesparserpointer.T_rulesParserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
