package stdgo.reflect;
class T_rtype_static_extension {
    static public function comparable_(_t:T_rtype):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.comparable_(_t);
    }
    static public function convertibleTo(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.convertibleTo(_t, _u);
    }
    static public function assignableTo(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.assignableTo(_t, _u);
    }
    static public function implements_(_t:T_rtype, _u:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.implements_(_t, _u);
    }
    static public function isVariadic(_t:T_rtype):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.isVariadic(_t);
    }
    static public function out(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.out(_t, _i);
    }
    static public function numOut(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.numOut(_t);
    }
    static public function numIn(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.numIn(_t);
    }
    static public function in_(_t:T_rtype, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.in_(_t, _i);
    }
    static public function numField(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.numField(_t);
    }
    static public function len(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.len(_t);
    }
    static public function key(_t:T_rtype):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.key(_t);
    }
    static public function fieldByNameFunc(_t:T_rtype, _match:stdgo.GoString -> Bool):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _match = _match;
        return {
            final obj = stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.fieldByNameFunc(_t, _match);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByName(_t:T_rtype, _name:String):stdgo.Tuple<StructField, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.fieldByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function fieldByIndex(_t:T_rtype, _index:Array<StdTypes.Int>):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _index = ([for (i in _index) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.fieldByIndex(_t, _index);
    }
    static public function field(_t:T_rtype, _i:StdTypes.Int):StructField {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.field(_t, _i);
    }
    static public function elem(_t:T_rtype):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.elem(_t);
    }
    static public function chanDir(_t:T_rtype):ChanDir {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.chanDir(_t);
    }
    static public function name(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.name(_t);
    }
    static public function pkgPath(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.pkgPath(_t);
    }
    static public function methodByName(_t:T_rtype, _name:String):stdgo.Tuple<Method, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.methodByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function method(_t:T_rtype, _i:StdTypes.Int):Method {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.method(_t, _i);
    }
    static public function numMethod(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.numMethod(_t);
    }
    static public function kind(_t:T_rtype):Kind {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.kind(_t);
    }
    static public function fieldAlign(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.fieldAlign(_t);
    }
    static public function align(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.align(_t);
    }
    static public function bits(_t:T_rtype):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.bits(_t);
    }
    static public function size(_t:T_rtype):stdgo.GoUIntptr {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.size(_t);
    }
    static public function string(_t:T_rtype):String {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_rtype.T_rtype>);
        return stdgo._internal.reflect.Reflect_T_rtype_static_extension.T_rtype_static_extension.string(_t);
    }
}
