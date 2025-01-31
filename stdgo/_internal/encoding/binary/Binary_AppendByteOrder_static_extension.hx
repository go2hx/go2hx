package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:keep class AppendByteOrder_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function appendUint64(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8> return t.appendUint64(_0, _1);
    @:interfacetypeffun
    static public function appendUint32(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> return t.appendUint32(_0, _1);
    @:interfacetypeffun
    static public function appendUint16(t:stdgo._internal.encoding.binary.Binary_AppendByteOrder.AppendByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8> return t.appendUint16(_0, _1);
}
