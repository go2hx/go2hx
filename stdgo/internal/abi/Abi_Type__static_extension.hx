package stdgo.internal.abi;
class Type__static_extension {
    static public function key(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.key(_t);
    }
    static public function numMethod(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.numMethod(_t);
    }
    static public function exportedMethods(_t:Type_):Array<Method> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return [for (i in stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.exportedMethods(_t)) i];
    }
    static public function fieldAlign(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.fieldAlign(_t);
    }
    static public function align(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.align(_t);
    }
    static public function size(_t:Type_):stdgo.GoUIntptr {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.size(_t);
    }
    static public function interfaceType(_t:Type_):InterfaceType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.interfaceType(_t);
    }
    static public function funcType(_t:Type_):FuncType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.funcType(_t);
    }
    static public function arrayType(_t:Type_):ArrayType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.arrayType(_t);
    }
    static public function mapType(_t:Type_):MapType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.mapType(_t);
    }
    static public function structType(_t:Type_):StructType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.structType(_t);
    }
    static public function elem(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.elem(_t);
    }
    static public function uncommon(_t:Type_):UncommonType {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.uncommon(_t);
    }
    static public function chanDir(_t:Type_):ChanDir {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.chanDir(_t);
    }
    static public function common(_t:Type_):Type_ {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.common(_t);
    }
    static public function len(_t:Type_):StdTypes.Int {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.len(_t);
    }
    static public function gcSlice(_t:Type_, _begin:stdgo.GoUIntptr, _end:stdgo.GoUIntptr):Array<std.UInt> {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        final _begin = (_begin : stdgo.GoUIntptr);
        final _end = (_end : stdgo.GoUIntptr);
        return [for (i in stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.gcSlice(_t, _begin, _end)) i];
    }
    static public function isDirectIface(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.isDirectIface(_t);
    }
    static public function ifaceIndir(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.ifaceIndir(_t);
    }
    static public function pointers(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.pointers(_t);
    }
    static public function hasName(_t:Type_):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.hasName(_t);
    }
    static public function kind(_t:Type_):Kind {
        final _t = (_t : stdgo.Ref<stdgo._internal.internal.abi.Abi_Type_.Type_>);
        return stdgo._internal.internal.abi.Abi_Type__static_extension.Type__static_extension.kind(_t);
    }
}
