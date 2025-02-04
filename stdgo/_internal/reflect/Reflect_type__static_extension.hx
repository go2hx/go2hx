package stdgo._internal.reflect;
@:keep class Type__static_extension {
    @:interfacetypeffun
    static public function out(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_ return t.out(_i);
    @:interfacetypeffun
    static public function numOut(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.numOut();
    @:interfacetypeffun
    static public function numIn(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.numIn();
    @:interfacetypeffun
    static public function numField(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.numField();
    @:interfacetypeffun
    static public function len(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.len();
    @:interfacetypeffun
    static public function key(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ return t.key();
    @:interfacetypeffun
    static public function in_(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_type_.Type_ return t.in_(_i);
    @:interfacetypeffun
    static public function fieldByNameFunc(t:stdgo._internal.reflect.Reflect_type_.Type_, _match:stdgo.GoString -> Bool):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return t.fieldByNameFunc(_match);
    @:interfacetypeffun
    static public function fieldByName(t:stdgo._internal.reflect.Reflect_type_.Type_, _name:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_structfield.StructField; var _1 : Bool; } return t.fieldByName(_name);
    @:interfacetypeffun
    static public function fieldByIndex(t:stdgo._internal.reflect.Reflect_type_.Type_, _index:stdgo.Slice<stdgo.GoInt>):stdgo._internal.reflect.Reflect_structfield.StructField return t.fieldByIndex(_index);
    @:interfacetypeffun
    static public function field(t:stdgo._internal.reflect.Reflect_type_.Type_, _i:stdgo.GoInt):stdgo._internal.reflect.Reflect_structfield.StructField return t.field(_i);
    @:interfacetypeffun
    static public function elem(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_type_.Type_ return t.elem();
    @:interfacetypeffun
    static public function isVariadic(t:stdgo._internal.reflect.Reflect_type_.Type_):Bool return t.isVariadic();
    @:interfacetypeffun
    static public function chanDir(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_chandir.ChanDir return t.chanDir();
    @:interfacetypeffun
    static public function bits(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.bits();
    @:interfacetypeffun
    static public function comparable_(t:stdgo._internal.reflect.Reflect_type_.Type_):Bool return t.comparable_();
    @:interfacetypeffun
    static public function convertibleTo(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return t.convertibleTo(_u);
    @:interfacetypeffun
    static public function assignableTo(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return t.assignableTo(_u);
    @:interfacetypeffun
    static public function implements_(t:stdgo._internal.reflect.Reflect_type_.Type_, _u:stdgo._internal.reflect.Reflect_type_.Type_):Bool return t.implements_(_u);
    @:interfacetypeffun
    static public function kind(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo._internal.reflect.Reflect_kind.Kind return t.kind();
    @:interfacetypeffun
    static public function string(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function size(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoUIntptr return t.size();
    @:interfacetypeffun
    static public function pkgPath(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoString return t.pkgPath();
    @:interfacetypeffun
    static public function name(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoString return t.name();
    @:interfacetypeffun
    static public function numMethod(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.numMethod();
    @:interfacetypeffun
    static public function methodByName(t:stdgo._internal.reflect.Reflect_type_.Type_, _0:stdgo.GoString):{ var _0 : stdgo._internal.reflect.Reflect_method.Method; var _1 : Bool; } return t.methodByName(_0);
    @:interfacetypeffun
    static public function method(t:stdgo._internal.reflect.Reflect_type_.Type_, _0:stdgo.GoInt):stdgo._internal.reflect.Reflect_method.Method return t.method(_0);
    @:interfacetypeffun
    static public function fieldAlign(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.fieldAlign();
    @:interfacetypeffun
    static public function align(t:stdgo._internal.reflect.Reflect_type_.Type_):stdgo.GoInt return t.align();
}
