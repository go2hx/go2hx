package stdgo._internal.encoding.gob;
function testGobMapInterfaceEncode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("up" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.GoUIntptr((new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)) : stdgo.GoUIntptr)));
x.set(("i0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(-1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)));
x.set(("i1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt8>(1, 1, ...[(-1 : stdgo.GoInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>)));
x.set(("i2" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt16>(1, 1, ...[(-1 : stdgo.GoInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt16>)));
x.set(("i3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt32>(1, 1, ...[(-1 : stdgo.GoInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>)));
x.set(("i4" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoInt64>(1, 1, ...[(-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)));
x.set(("u0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt>(1, 1, ...[(1u32 : stdgo.GoUInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt>)));
x.set(("u1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)));
x.set(("u2" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt16>(1, 1, ...[(1 : stdgo.GoUInt16)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>)));
x.set(("u3" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt32>(1, 1, ...[(1u32 : stdgo.GoUInt32)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>)));
x.set(("u4" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUInt64>(1, 1, ...[(1i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)));
x.set(("f0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat32>(1, 1, ...[(1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat32>)));
x.set(("f1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoFloat64>(1, 1, ...[(1 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)));
x.set(("c0" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoComplex64>(1, 1, ...[new stdgo.GoComplex128((2i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64))]) : stdgo.Slice<stdgo.GoComplex64>)));
x.set(("c1" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoComplex128>(1, 1, ...[new stdgo.GoComplex128((2 : stdgo.GoFloat64), (-2 : stdgo.GoFloat64))]) : stdgo.Slice<stdgo.GoComplex128>)));
x.set(("us" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoUIntptr>(1, 1, ...[(new stdgo.GoUIntptr(0) : stdgo.GoUIntptr)]) : stdgo.Slice<stdgo.GoUIntptr>)));
x.set(("bo" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<Bool>(1, 1, ...[false]) : stdgo.Slice<Bool>)));
x.set(("st" : stdgo.GoString), stdgo.Go.toInterface((new stdgo.Slice<stdgo.GoString>(1, 1, ...[("s" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        var _err = (@:check2r _enc.encode(stdgo.Go.toInterface(_m)) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.errorf(("encode map: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
