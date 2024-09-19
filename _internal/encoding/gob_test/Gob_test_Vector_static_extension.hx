package _internal.encoding.gob_test;
@:keep @:allow(_internal.encoding.gob_test.Gob_test.Vector_asInterface) class Vector_static_extension {
    @:keep
    static public function unmarshalBinary( _v:stdgo.Ref<_internal.encoding.gob_test.Gob_test_Vector.Vector>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _v:stdgo.Ref<_internal.encoding.gob_test.Gob_test_Vector.Vector> = _v;
        var _b = stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_data);
        var __tmp__ = stdgo._internal.fmt.Fmt_fscanln.fscanln(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.pointer(_v._x)), stdgo.Go.toInterface(stdgo.Go.pointer(_v._y)), stdgo.Go.toInterface(stdgo.Go.pointer(_v._z))), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return _err;
    }
    @:keep
    static public function marshalBinary( _v:_internal.encoding.gob_test.Gob_test_Vector.Vector):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _v:_internal.encoding.gob_test.Gob_test_Vector.Vector = _v?.__copy__();
        var _b:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), stdgo.Go.toInterface(_v._x), stdgo.Go.toInterface(_v._y), stdgo.Go.toInterface(_v._z));
        return { _0 : _b.bytes(), _1 : (null : stdgo.Error) };
    }
}
