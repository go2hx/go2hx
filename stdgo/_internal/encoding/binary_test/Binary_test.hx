package stdgo._internal.encoding.binary_test;
import stdgo._internal.encoding.binary.Binary;
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.encoding.binary_test.Binary_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo._internal.encoding.binary_test.Binary_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var pi : stdgo.GoFloat64;
    public var uate : stdgo.GoUInt8;
    public var mine : stdgo.GoArray<stdgo.GoUInt8>;
    public var too : stdgo.GoUInt16;
};
function exampleWrite():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _pi:stdgo.GoFloat64 = (3.141592653589793 : stdgo.GoFloat64);
        var _err:stdgo.Error = stdgo._internal.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(_pi));
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
function exampleWrite_multi():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes.Buffer>);
        var _data:stdgo.Slice<stdgo.AnyInterface> = (new stdgo.Slice<stdgo.AnyInterface>(3, 3, ...[stdgo.Go.toInterface((61374 : stdgo.GoUInt16)), stdgo.Go.toInterface((-54 : stdgo.GoInt8)), stdgo.Go.toInterface((254 : stdgo.GoUInt8))]) : stdgo.Slice<stdgo.AnyInterface>);
        for (__0 => _v in _data) {
            var _err:stdgo.Error = stdgo._internal.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary.littleEndian), _v);
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.printf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
function exampleRead():Void {
        var _pi:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(8, 8, ...[(24 : stdgo.GoUInt8), (45 : stdgo.GoUInt8), (68 : stdgo.GoUInt8), (84 : stdgo.GoUInt8), (251 : stdgo.GoUInt8), (33 : stdgo.GoUInt8), (9 : stdgo.GoUInt8), (64 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _buf = stdgo._internal.bytes.Bytes.newReader(_b);
        var _err:stdgo.Error = stdgo._internal.encoding.binary.Binary.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_pi)));
        if (_err != null) {
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt.print(stdgo.Go.toInterface(_pi));
    }
function exampleRead_multi():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(14, 14, ...[
(24 : stdgo.GoUInt8),
(45 : stdgo.GoUInt8),
(68 : stdgo.GoUInt8),
(84 : stdgo.GoUInt8),
(251 : stdgo.GoUInt8),
(33 : stdgo.GoUInt8),
(9 : stdgo.GoUInt8),
(64 : stdgo.GoUInt8),
(255 : stdgo.GoUInt8),
(1 : stdgo.GoUInt8),
(2 : stdgo.GoUInt8),
(3 : stdgo.GoUInt8),
(190 : stdgo.GoUInt8),
(239 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _r = stdgo._internal.bytes.Bytes.newReader(_b);
        var _data:T__struct_7 = ({ pi : (0 : stdgo.GoFloat64), uate : (0 : stdgo.GoUInt8), mine : new stdgo.GoArray<stdgo.GoUInt8>(3, 3, ...[for (i in 0 ... 3) (0 : stdgo.GoUInt8)]), too : (0 : stdgo.GoUInt16) } : T__struct_7);
        {
            var _err:stdgo.Error = stdgo._internal.encoding.binary.Binary.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.Ref<T__struct_7>))));
            if (_err != null) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_data.pi));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_data.uate));
        stdgo._internal.fmt.Fmt.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_data.mine));
        stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_data.too));
    }
function exampleByteOrder_put():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((4 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (1000 : stdgo.GoUInt16));
        stdgo._internal.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (2000 : stdgo.GoUInt16));
        stdgo._internal.fmt.Fmt.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
function exampleByteOrder_get():Void {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>(4, 4, ...[(232 : stdgo.GoUInt8), (3 : stdgo.GoUInt8), (208 : stdgo.GoUInt8), (7 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _x1:stdgo.GoUInt16 = stdgo._internal.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        var _x2:stdgo.GoUInt16 = stdgo._internal.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        stdgo._internal.fmt.Fmt.printf(("%#04x %#04x\n" : stdgo.GoString), stdgo.Go.toInterface(_x1), stdgo.Go.toInterface(_x2));
    }
function examplePutUvarint():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _x in (new stdgo.Slice<stdgo.GoUInt64>(6, 6, ...[(1i64 : stdgo.GoUInt64), (2i64 : stdgo.GoUInt64), (127i64 : stdgo.GoUInt64), (128i64 : stdgo.GoUInt64), (255i64 : stdgo.GoUInt64), (256i64 : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>)) {
            var _n:stdgo.GoInt = stdgo._internal.encoding.binary.Binary.putUvarint(_buf, _x);
            stdgo._internal.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
function examplePutVarint():Void {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((10 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        for (__0 => _x in (new stdgo.Slice<stdgo.GoInt64>(9, 9, ...[(-65i64 : stdgo.GoInt64), (-64i64 : stdgo.GoInt64), (-2i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (2i64 : stdgo.GoInt64), (63i64 : stdgo.GoInt64), (64i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>)) {
            var _n:stdgo.GoInt = stdgo._internal.encoding.binary.Binary.putVarint(_buf, _x);
            stdgo._internal.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
        };
    }
function exampleUvarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(6, 6, ...[(new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(127 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(128 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(255 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(128 : stdgo.GoUInt8), (2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo._internal.encoding.binary.Binary.uvarint(_b), _x:stdgo.GoUInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Uvarint did not consume all of in" : stdgo.GoString)));
            };
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
function exampleVarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>(9, 9, ...[(new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(129 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(127 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(3 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(0 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(2 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(4 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(126 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(128 : stdgo.GoUInt8), (1 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)]) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo._internal.encoding.binary.Binary.varint(_b), _x:stdgo.GoInt64 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(("Varint did not consume all of in" : stdgo.GoString)));
            };
            stdgo._internal.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
