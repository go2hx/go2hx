package stdgo._internal.crypto.subtle;
function _words(_x:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUIntptr> {
        var _n = ((new stdgo.GoUIntptr((_x.length)) : stdgo.GoUIntptr) / (new stdgo.GoUIntptr(4) : stdgo.GoUIntptr) : stdgo.GoUIntptr);
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L50"
        if (_n == ((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L53"
            return (null : stdgo.Slice<stdgo.GoUIntptr>);
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/subtle/xor_generic.go#L55"
        return stdgo._internal.unsafe.Unsafe_slice.slice(((stdgo.Go.toInterface(stdgo.Go.pointer(_x[(0 : stdgo.GoInt)])) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind) })) : stdgo.Pointer<stdgo.GoUIntptr>), _n);
    }
