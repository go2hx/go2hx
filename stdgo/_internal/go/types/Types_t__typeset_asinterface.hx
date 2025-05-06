package stdgo._internal.go.types;
class T__TypeSet_asInterface {
    @:keep
    @:tdfield
    public dynamic function _underIs(_f:stdgo._internal.go.types.Types_type_.Type_ -> Bool):Bool return @:_0 __self__.value._underIs(_f);
    @:keep
    @:tdfield
    public dynamic function _is(_f:stdgo.Ref<stdgo._internal.go.types.Types_t_term.T_term> -> Bool):Bool return @:_0 __self__.value._is(_f);
    @:keep
    @:tdfield
    public dynamic function _subsetOf(_s2:stdgo.Ref<stdgo._internal.go.types.Types_t__typeset.T__TypeSet>):Bool return @:_0 __self__.value._subsetOf(_s2);
    @:keep
    @:tdfield
    public dynamic function _hasTerms():Bool return @:_0 __self__.value._hasTerms();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function lookupMethod(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString, _foldCase:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.types.Types_func.Func>; } return @:_0 __self__.value.lookupMethod(_pkg, _name, _foldCase);
    @:keep
    @:tdfield
    public dynamic function method(_i:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.types.Types_func.Func> return @:_0 __self__.value.method(_i);
    @:keep
    @:tdfield
    public dynamic function numMethods():stdgo.GoInt return @:_0 __self__.value.numMethods();
    @:keep
    @:tdfield
    public dynamic function isComparable(_seen:stdgo.GoMap<stdgo._internal.go.types.Types_type_.Type_, Bool>):Bool return @:_0 __self__.value.isComparable(_seen);
    @:keep
    @:tdfield
    public dynamic function isMethodSet():Bool return @:_0 __self__.value.isMethodSet();
    @:keep
    @:tdfield
    public dynamic function isAll():Bool return @:_0 __self__.value.isAll();
    @:keep
    @:tdfield
    public dynamic function isEmpty():Bool return @:_0 __self__.value.isEmpty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t__typesetpointer.T__TypeSetPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
