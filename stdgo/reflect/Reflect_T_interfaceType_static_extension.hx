package stdgo.reflect;
class T_interfaceType_static_extension {
    static public function methodByName(_t:T_interfaceType, _name:String):stdgo.Tuple<Method, Bool> {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.methodByName(_t, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function numMethod(_t:T_interfaceType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType>);
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.numMethod(_t);
    }
    static public function method(_t:T_interfaceType, _i:StdTypes.Int):Method {
        final _t = (_t : stdgo.Ref<stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.method(_t, _i);
    }
    public static function uncommon(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_UncommonType.UncommonType {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_StructType.StructType {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo.GoUIntptr {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.pointers(__self__);
    }
    public static function mapType(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_MapType.MapType {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_Kind.Kind {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_Type_.Type_ {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.isDirectIface(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):Bool {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_FuncType.FuncType {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):Array<stdgo._internal.internal.abi.Abi_Method.Method> {
        return [for (i in stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_Type_.Type_ {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_Type_.Type_ {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_ChanDir.ChanDir {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):stdgo._internal.internal.abi.Abi_ArrayType.ArrayType {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.reflect.Reflect_T_interfaceType.T_interfaceType):StdTypes.Int {
        return stdgo._internal.reflect.Reflect_T_interfaceType_static_extension.T_interfaceType_static_extension.align(__self__);
    }
}
