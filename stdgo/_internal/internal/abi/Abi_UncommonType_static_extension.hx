package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.UncommonType_asInterface) class UncommonType_static_extension {
    @:keep
    static public function exportedMethods( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>):stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> = _t;
        if (_t.xcount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>);
        };
        return ((stdgo._internal.internal.abi.Abi__addChecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.GoUIntptr), ("t.xcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_Method.Method", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_NameOff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TypeOff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TextOff.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TextOff.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<stdgo._internal.internal.abi.Abi_Method.Method>>).__slice__(0, _t.xcount, _t.xcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>);
    }
    @:keep
    static public function methods( _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType>):stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method> {
        @:recv var _t:stdgo.Ref<stdgo._internal.internal.abi.Abi_UncommonType.UncommonType> = _t;
        if (_t.mcount == ((0 : stdgo.GoUInt16))) {
            return (null : stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>);
        };
        return ((stdgo._internal.internal.abi.Abi__addChecked._addChecked((stdgo.Go.toInterface(_t) : stdgo._internal.unsafe.Unsafe.UnsafePointer), (_t.moff : stdgo.GoUIntptr), ("t.mcount > 0" : stdgo.GoString)).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.arrayType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_Method.Method", [], stdgo._internal.internal.reflect.Reflect.GoType.structType([{ name : "name", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_NameOff.NameOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "mtyp", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TypeOff.TypeOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "ifn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TextOff.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }, { name : "tfn", embedded : false, tag : "", type : { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.internal.abi.Abi_TextOff.TextOff", [], stdgo._internal.internal.reflect.Reflect.GoType.basic(int32_kind), false, { get : () -> null }) }, optional : false }]), false, { get : () -> null }) }, 65536) })) : stdgo.Ref<stdgo.GoArray<stdgo._internal.internal.abi.Abi_Method.Method>>).__slice__(0, _t.mcount, _t.mcount) : stdgo.Slice<stdgo._internal.internal.abi.Abi_Method.Method>);
    }
}