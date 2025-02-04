package stdgo._internal.regexp.syntax;
class Prog_asInterface {
    @:keep
    @:tdfield
    public dynamic function startCond():stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp return @:_0 __self__.value.startCond();
    @:keep
    @:tdfield
    public dynamic function prefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return @:_0 __self__.value.prefix();
    @:keep
    @:tdfield
    public dynamic function _skipNop(_pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_inst.Inst> return @:_0 __self__.value._skipNop(_pc);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_progpointer.ProgPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
