package stdgo._internal.reflect;
@:interface typedef Type_ = stdgo.StructType & {
    @:interfacetypeffun
    function align():stdgo.GoInt;
    @:interfacetypeffun
    function fieldAlign():stdgo.GoInt;
    @:interfacetypeffun
    function method(_0:stdgo.GoInt):stdgo._internal.reflect.Reflect_method.Method;
    @:interfacetypeffun
    function methodByName(_0:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_method.Method; var _1 : Bool; };
    @:interfacetypeffun
    function numMethod():stdgo.GoInt;
    @:interfacetypeffun
    function name():stdgo.GoString;
    @:interfacetypeffun
    function pkgPath():stdgo.GoString;
    @:interfacetypeffun
    function size():stdgo.GoUIntptr;
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function kind():stdgo._internal.reflect.Reflect_kind.Kind;
    @:interfacetypeffun
    function implements_(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    @:interfacetypeffun
    function assignableTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    @:interfacetypeffun
    function convertibleTo(_u:stdgo._internal.reflect.Reflect_type_.Type_):Bool;
    @:interfacetypeffun
    function comparable_():Bool;
    @:interfacetypeffun
    function bits():stdgo.GoInt;
    @:interfacetypeffun
    function chanDir():stdgo._internal.reflect.Reflect_chandir.ChanDir;
    @:interfacetypeffun
    function isVariadic():Bool;
    @:interfacetypeffun
    function elem():stdgo._internal.reflect.Reflect_type_.Type_;
    @:interfacetypeffun
    function field(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_structfield.StructField;
    @:interfacetypeffun
    function fieldByIndex(_index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_structfield.StructField;
    @:interfacetypeffun
    function fieldByName(_name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    @:interfacetypeffun
    function fieldByNameFunc(_match:stdgo.GoString -> Bool):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; };
    @:interfacetypeffun
    function in_(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
    @:interfacetypeffun
    function key():stdgo._internal.reflect.Reflect_type_.Type_;
    @:interfacetypeffun
    function len():stdgo.GoInt;
    @:interfacetypeffun
    function numField():stdgo.GoInt;
    @:interfacetypeffun
    function numIn():stdgo.GoInt;
    @:interfacetypeffun
    function numOut():stdgo.GoInt;
    @:interfacetypeffun
    function out(_i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_;
};
