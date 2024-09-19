package stdgo._internal.regexp.syntax;
class Prog_asInterface {
    @:keep
    public dynamic function startCond():stdgo._internal.regexp.syntax.Syntax_EmptyOp.EmptyOp return __self__.value.startCond();
    @:keep
    public dynamic function prefix():{ var _0 : stdgo.GoString; var _1 : Bool; } return __self__.value.prefix();
    @:keep
    public dynamic function _skipNop(_pc:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Inst.Inst> return __self__.value._skipNop(_pc);
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
