package stdgo._internal.debug.plan9obj;
class File_asInterface {
    @:keep
    @:tdfield
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.plan9obj.Plan9obj_Section.Section> return @:_0 __self__.value.section(_name);
    @:keep
    @:tdfield
    public dynamic function symbols():{ var _0 : stdgo.Slice<stdgo._internal.debug.plan9obj.Plan9obj_Sym.Sym>; var _1 : stdgo.Error; } return @:_0 __self__.value.symbols();
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.plan9obj.Plan9obj_FilePointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
