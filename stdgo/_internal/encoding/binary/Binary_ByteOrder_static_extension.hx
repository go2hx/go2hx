package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
@:keep class ByteOrder_static_extension {
    @:interfacetypeffun
    static public function string(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder):stdgo.GoString return t.string();
    @:interfacetypeffun
    static public function putUint64(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void t.putUint64(_0, _1);
    @:interfacetypeffun
    static public function putUint32(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void t.putUint32(_0, _1);
    @:interfacetypeffun
    static public function putUint16(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void t.putUint16(_0, _1);
    @:interfacetypeffun
    static public function uint64(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 return t.uint64(_0);
    @:interfacetypeffun
    static public function uint32(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32 return t.uint32(_0);
    @:interfacetypeffun
    static public function uint16(t:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, _0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return t.uint16(_0);
}
