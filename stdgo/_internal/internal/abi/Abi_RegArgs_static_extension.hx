package stdgo._internal.internal.abi;
@:keep @:allow(stdgo._internal.internal.abi.Abi.RegArgs_asInterface) class RegArgs_static_extension {
    @:keep
    @:tdfield
    static public function intRegArgAddr( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs>, _reg:stdgo.GoInt, _argSize:stdgo.GoUIntptr):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs> = _r;
        if ((((_argSize > (4 : stdgo.GoUIntptr) : Bool) || _argSize == ((0 : stdgo.GoUIntptr)) : Bool) || ((_argSize & ((_argSize - (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo.GoUIntptr) != (0 : stdgo.GoUIntptr)) : Bool)) {
            throw stdgo.Go.toInterface(("invalid argSize" : stdgo.GoString));
        };
        var _offset = ((0 : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        if (false) {
            _offset = ((4 : stdgo.GoUIntptr) - _argSize : stdgo.GoUIntptr);
        };
        return (stdgo.Go.toInterface((((stdgo.Go.toInterface(stdgo.Go.pointer((@:checkr _r ?? throw "null pointer dereference").ints[(_reg : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) + _offset : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
    @:keep
    @:tdfield
    static public function dump( _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.internal.abi.Abi_RegArgs.RegArgs> = _r;
        stdgo.Go.print(("Ints:" : stdgo.GoString));
        for (__201 => _x in (@:checkr _r ?? throw "null pointer dereference").ints) {
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        stdgo.Go.println("");
        stdgo.Go.print(("Floats:" : stdgo.GoString));
        for (__202 => _x in (@:checkr _r ?? throw "null pointer dereference").floats) {
            stdgo.Go.print((" " : stdgo.GoString), @:privateAccess ((_x).toBasic() : haxe.UInt64).toString());
        };
        stdgo.Go.println("");
        stdgo.Go.print(("Ptrs:" : stdgo.GoString));
        for (__203 => _x in (@:checkr _r ?? throw "null pointer dereference").ptrs) {
            stdgo.Go.print((" " : stdgo.GoString), _x);
        };
        stdgo.Go.println("");
    }
}
