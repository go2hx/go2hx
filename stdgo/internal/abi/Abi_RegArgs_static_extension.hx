package stdgo.internal.abi;
class RegArgs_static_extension {
    static public function intRegArgAddr(_r:RegArgs, _reg:StdTypes.Int, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs>);
        final _reg = (_reg : stdgo.GoInt);
        final _argSize = (_argSize : stdgo.GoUIntptr);
        return stdgo._internal.internal.abi.Abi_RegArgs_static_extension.RegArgs_static_extension.intRegArgAddr(_r, _reg, _argSize);
    }
    static public function dump(_r:RegArgs):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs>);
        stdgo._internal.internal.abi.Abi_RegArgs_static_extension.RegArgs_static_extension.dump(_r);
    }
}
