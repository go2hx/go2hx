package stdgo.reflect;
class Type__static_extension {
    static public function out(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.out(t, _i);
    }
    static public function numOut(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numOut(t);
    }
    static public function numIn(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numIn(t);
    }
    static public function numField(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numField(t);
    }
    static public function len(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.len(t);
    }
    static public function key(t:stdgo._internal.reflect.Reflect_Type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.key(t);
    }
    static public function in_(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):Type_ {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.in_(t, _i);
    }
    static public function fieldByNameFunc(t:stdgo._internal.reflect.Reflect_Type_.Type_, _match:stdgo.GoString -> Bool):stdgo.Tuple<StructField, Bool> {
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByNameFunc(t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByName(t:stdgo._internal.reflect.Reflect_Type_.Type_, _name:String):stdgo.Tuple<StructField, Bool> {
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByName(t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(t:stdgo._internal.reflect.Reflect_Type_.Type_, _index:Array<StdTypes.Int>):StructField {
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldByIndex(t, _index);
    }
    static public function field(t:stdgo._internal.reflect.Reflect_Type_.Type_, _i:StdTypes.Int):StructField {
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.field(t, _i);
    }
    static public function elem(t:stdgo._internal.reflect.Reflect_Type_.Type_):Type_ {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.elem(t);
    }
    static public function isVariadic(t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.isVariadic(t);
    }
    static public function chanDir(t:stdgo._internal.reflect.Reflect_Type_.Type_):ChanDir {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.chanDir(t);
    }
    static public function bits(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.bits(t);
    }
    static public function comparable_(t:stdgo._internal.reflect.Reflect_Type_.Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.comparable_(t);
    }
    static public function convertibleTo(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.convertibleTo(t, _u);
    }
    static public function assignableTo(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.assignableTo(t, _u);
    }
    static public function implements_(t:stdgo._internal.reflect.Reflect_Type_.Type_, _u:Type_):Bool {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.implements_(t, _u);
    }
    static public function kind(t:stdgo._internal.reflect.Reflect_Type_.Type_):Kind {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.kind(t);
    }
    static public function string(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.string(t);
    }
    static public function size(t:stdgo._internal.reflect.Reflect_Type_.Type_):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.size(t);
    }
    static public function pkgPath(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.pkgPath(t);
    }
    static public function name(t:stdgo._internal.reflect.Reflect_Type_.Type_):String {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.name(t);
    }
    static public function numMethod(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.numMethod(t);
    }
    static public function methodByName(t:stdgo._internal.reflect.Reflect_Type_.Type_, _0:String):stdgo.Tuple<Method, Bool> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.methodByName(t, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(t:stdgo._internal.reflect.Reflect_Type_.Type_, _0:StdTypes.Int):Method {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.method(t, _0);
    }
    static public function fieldAlign(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.fieldAlign(t);
    }
    static public function align(t:stdgo._internal.reflect.Reflect_Type_.Type_):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_Type__static_extension.Type__static_extension.align(t);
    }
}
