package stdgo._internal.go.internal.gcimporter;
class T_fakeFileSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function _setLines():Void @:_0 __self__.value._setLines();
    @:keep
    @:tdfield
    public dynamic function _pos(_file:stdgo.GoString, _line:stdgo.GoInt, _column:stdgo.GoInt):stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value._pos(_file, _line, _column);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_fakefilesetpointer.T_fakeFileSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
