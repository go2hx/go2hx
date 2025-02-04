package stdgo._internal.encoding.binary;
function testNativeEndian(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _i = ((305419896u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _i__pointer__ = stdgo.Go.pointer(_i);
        var _i__pointer__ = stdgo.Go.pointer(_i);
        var _i__pointer__ = stdgo.Go.pointer(_i);
        var _i__pointer__ = stdgo.Go.pointer(_i);
        var _s = stdgo._internal.unsafe.Unsafe_slice.slice(((stdgo.Go.toInterface(_i__pointer__) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(uint8_kind) })) : stdgo.Pointer<stdgo.GoUInt8>), stdgo._internal.unsafe.Unsafe_sizeof.sizeof(stdgo.Go.toInterface(_i)));
        {
            var _v = (stdgo._internal.encoding.binary.Binary_nativeendian.nativeEndian.uint32(_s) : stdgo.GoUInt32);
            if (_v != ((305419896u32 : stdgo.GoUInt32))) {
                @:check2r _t.errorf(("NativeEndian.Uint32 returned %#x, expected %#x" : stdgo.GoString), stdgo.Go.toInterface(_v), stdgo.Go.toInterface((305419896 : stdgo.GoInt)));
            };
        };
    }
