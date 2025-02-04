package stdgo._internal.regexp;
class T_bitState_asInterface {
    @:keep
    @:tdfield
    public dynamic function _push(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>, _pc:stdgo.GoUInt32, _pos:stdgo.GoInt, _arg:Bool):Void @:_0 __self__.value._push(_re, _pc, _pos, _arg);
    @:keep
    @:tdfield
    public dynamic function _shouldVisit(_pc:stdgo.GoUInt32, _pos:stdgo.GoInt):Bool return @:_0 __self__.value._shouldVisit(_pc, _pos);
    @:keep
    @:tdfield
    public dynamic function _reset(_prog:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _end:stdgo.GoInt, _ncap:stdgo.GoInt):Void @:_0 __self__.value._reset(_prog, _end, _ncap);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_t_bitstatepointer.T_bitStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
