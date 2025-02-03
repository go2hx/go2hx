package stdgo.internal.abi;
class FuncType_static_extension {
    static public function isVariadic(_t:FuncType):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.isVariadic(_t);
    }
    static public function outSlice(_t:FuncType):Array<Type_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        return [for (i in stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.outSlice(_t)) i];
    }
    static public function inSlice(_t:FuncType):Array<Type_> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        return [for (i in stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.inSlice(_t)) i];
    }
    static public function out(_t:FuncType, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.out(_t, _i);
    }
    static public function numOut(_t:FuncType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.numOut(_t);
    }
    static public function numIn(_t:FuncType):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.numIn(_t);
    }
    static public function in_(_t:FuncType, _i:StdTypes.Int):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_FuncType.FuncType>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.in_(_t, _i);
    }
    public static function uncommon(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):UncommonType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.uncommon(__self__);
    }
    public static function structType(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):StructType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.structType(__self__);
    }
    public static function size(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):stdgo.GoUIntptr {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.size(__self__);
    }
    public static function pointers(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.pointers(__self__);
    }
    public static function numMethod(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.numMethod(__self__);
    }
    public static function mapType(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):MapType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.mapType(__self__);
    }
    public static function len(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.len(__self__);
    }
    public static function kind(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Kind {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.kind(__self__);
    }
    public static function key(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.key(__self__);
    }
    public static function isDirectIface(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.isDirectIface(__self__);
    }
    public static function interfaceType(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):InterfaceType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.interfaceType(__self__);
    }
    public static function ifaceIndir(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.ifaceIndir(__self__);
    }
    public static function hasName(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Bool {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.hasName(__self__);
    }
    public static function gcSlice(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType, _0:stdgo.GoUIntptr, _1:stdgo.GoUIntptr):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoUIntptr);
        final _1 = (_1 : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.gcSlice(__self__, _0, _1)) i];
    }
    public static function funcType(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):FuncType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.funcType(__self__);
    }
    public static function fieldAlign(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.fieldAlign(__self__);
    }
    public static function exportedMethods(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Array<Method> {
        return [for (i in stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.exportedMethods(__self__)) i];
    }
    public static function elem(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.elem(__self__);
    }
    public static function common(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):Type_ {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.common(__self__);
    }
    public static function chanDir(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):ChanDir {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.chanDir(__self__);
    }
    public static function arrayType(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):ArrayType {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.arrayType(__self__);
    }
    public static function align(__self__:stdgo._internal.internal.abi.Abi_FuncType.FuncType):StdTypes.Int {
        return stdgo._internal.internal.abi.Abi_FuncType_static_extension.FuncType_static_extension.align(__self__);
    }
}
