package stdgo.encoding.binary_test;
import stdgo.encoding.binary.Binary;
class T__struct_7_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.StdGoTypes.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T__struct_7>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.encoding.binary_test.Binary_test.T__struct_7_asInterface) class T__struct_7_static_extension {

}
@:local @:using(stdgo.encoding.binary_test.Binary_test.T__struct_7_static_extension) typedef T__struct_7 = {
    public var pi : stdgo.StdGoTypes.GoFloat64;
    public var uate : stdgo.StdGoTypes.GoUInt8;
    public var mine : stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>;
    public var too : stdgo.StdGoTypes.GoUInt16;
};
function exampleWrite():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _pi:stdgo.StdGoTypes.GoFloat64 = (3.141592653589793 : stdgo.StdGoTypes.GoFloat64);
        var _err:stdgo.Error = stdgo.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(_pi));
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.printf(("% x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
function exampleWrite_multi():Void {
        var _buf = (stdgo.Go.setRef(({} : stdgo.bytes.Bytes.Buffer)) : stdgo.StdGoTypes.Ref<stdgo.bytes.Bytes.Buffer>);
        var _data:stdgo.Slice<stdgo.StdGoTypes.AnyInterface> = (new stdgo.Slice<stdgo.StdGoTypes.AnyInterface>(3, 3, stdgo.Go.toInterface((61374 : stdgo.StdGoTypes.GoUInt16)), stdgo.Go.toInterface((-54 : stdgo.StdGoTypes.GoInt8)), stdgo.Go.toInterface((254 : stdgo.StdGoTypes.GoUInt8))) : stdgo.Slice<stdgo.StdGoTypes.AnyInterface>);
        for (__0 => _v in _data) {
            var _err:stdgo.Error = stdgo.encoding.binary.Binary.write(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), _v);
            if (_err != null) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Write failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.printf(("%x" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
    }
function exampleRead():Void {
        var _pi:stdgo.StdGoTypes.GoFloat64 = (0 : stdgo.StdGoTypes.GoFloat64);
        var _b = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(8, 8, (24 : stdgo.StdGoTypes.GoUInt8), (45 : stdgo.StdGoTypes.GoUInt8), (68 : stdgo.StdGoTypes.GoUInt8), (84 : stdgo.StdGoTypes.GoUInt8), (251 : stdgo.StdGoTypes.GoUInt8), (33 : stdgo.StdGoTypes.GoUInt8), (9 : stdgo.StdGoTypes.GoUInt8), (64 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _buf = stdgo.bytes.Bytes.newReader(_b);
        var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(stdgo.Go.asInterface(_buf), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.pointer(_pi)));
        if (_err != null) {
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo.fmt.Fmt.print(stdgo.Go.toInterface(_pi));
    }
function exampleRead_multi():Void {
        var _b = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(
14,
14,
(24 : stdgo.StdGoTypes.GoUInt8),
(45 : stdgo.StdGoTypes.GoUInt8),
(68 : stdgo.StdGoTypes.GoUInt8),
(84 : stdgo.StdGoTypes.GoUInt8),
(251 : stdgo.StdGoTypes.GoUInt8),
(33 : stdgo.StdGoTypes.GoUInt8),
(9 : stdgo.StdGoTypes.GoUInt8),
(64 : stdgo.StdGoTypes.GoUInt8),
(255 : stdgo.StdGoTypes.GoUInt8),
(1 : stdgo.StdGoTypes.GoUInt8),
(2 : stdgo.StdGoTypes.GoUInt8),
(3 : stdgo.StdGoTypes.GoUInt8),
(190 : stdgo.StdGoTypes.GoUInt8),
(239 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _r = stdgo.bytes.Bytes.newReader(_b);
        var _data:T__struct_7 = ({ pi : (0 : stdgo.StdGoTypes.GoFloat64), uate : (0 : stdgo.StdGoTypes.GoUInt8), mine : new stdgo.GoArray<stdgo.StdGoTypes.GoUInt8>(...[for (i in 0 ... 3) (0 : stdgo.StdGoTypes.GoUInt8)]), too : (0 : stdgo.StdGoTypes.GoUInt16) } : T__struct_7);
        {
            var _err:stdgo.Error = stdgo.encoding.binary.Binary.read(stdgo.Go.asInterface(_r), stdgo.Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_data) : stdgo.StdGoTypes.Ref<T__struct_7>))));
            if (_err != null) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("binary.Read failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.pi));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.uate));
        stdgo.fmt.Fmt.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_data.mine));
        stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_data.too));
    }
function exampleByteOrder_put():Void {
        var _b = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((4 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        stdgo.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (1000 : stdgo.StdGoTypes.GoUInt16));
        stdgo.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (2000 : stdgo.StdGoTypes.GoUInt16));
        stdgo.fmt.Fmt.printf(("% x\n" : stdgo.GoString), stdgo.Go.toInterface(_b));
    }
function exampleByteOrder_get():Void {
        var _b = (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(4, 4, (232 : stdgo.StdGoTypes.GoUInt8), (3 : stdgo.StdGoTypes.GoUInt8), (208 : stdgo.StdGoTypes.GoUInt8), (7 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>);
        var _x1:stdgo.StdGoTypes.GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((0 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        var _x2:stdgo.StdGoTypes.GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((2 : stdgo.StdGoTypes.GoInt)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>));
        stdgo.fmt.Fmt.printf(("%#04x %#04x\n" : stdgo.GoString), stdgo.Go.toInterface(_x1), stdgo.Go.toInterface(_x2));
    }
function examplePutUvarint():Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _x in (new stdgo.Slice<stdgo.StdGoTypes.GoUInt64>(6, 6, (1i64 : stdgo.StdGoTypes.GoUInt64), (2i64 : stdgo.StdGoTypes.GoUInt64), (127i64 : stdgo.StdGoTypes.GoUInt64), (128i64 : stdgo.StdGoTypes.GoUInt64), (255i64 : stdgo.StdGoTypes.GoUInt64), (256i64 : stdgo.StdGoTypes.GoUInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt64>)) {
            var _n:stdgo.StdGoTypes.GoInt = stdgo.encoding.binary.Binary.putUvarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
        };
    }
function examplePutVarint():Void {
        var _buf = new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>((10 : stdgo.StdGoTypes.GoInt).toBasic(), 0).__setNumber32__();
        for (__0 => _x in (new stdgo.Slice<stdgo.StdGoTypes.GoInt64>(
9,
9,
(-65i64 : stdgo.StdGoTypes.GoInt64),
(-64i64 : stdgo.StdGoTypes.GoInt64),
(-2i64 : stdgo.StdGoTypes.GoInt64),
(-1i64 : stdgo.StdGoTypes.GoInt64),
(0i64 : stdgo.StdGoTypes.GoInt64),
(1i64 : stdgo.StdGoTypes.GoInt64),
(2i64 : stdgo.StdGoTypes.GoInt64),
(63i64 : stdgo.StdGoTypes.GoInt64),
(64i64 : stdgo.StdGoTypes.GoInt64)) : stdgo.Slice<stdgo.StdGoTypes.GoInt64>)) {
            var _n:stdgo.StdGoTypes.GoInt = stdgo.encoding.binary.Binary.putVarint(_buf, _x);
            stdgo.fmt.Fmt.printf(("%x\n" : stdgo.GoString), stdgo.Go.toInterface((_buf.__slice__(0, _n) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)));
        };
    }
function exampleUvarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>(6, 6, (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (128 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (255 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>), (new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (128 : stdgo.StdGoTypes.GoUInt8), (2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.uvarint(_b), _x:stdgo.StdGoTypes.GoUInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Uvarint did not consume all of in" : stdgo.GoString)));
            };
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
function exampleVarint():Void {
        var _inputs = (new stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>(
9,
9,
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (129 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (127 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (3 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (0 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (2 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (4 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(1, 1, (126 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>),
(new stdgo.Slice<stdgo.StdGoTypes.GoUInt8>(2, 2, (128 : stdgo.StdGoTypes.GoUInt8), (1 : stdgo.StdGoTypes.GoUInt8)) : stdgo.Slice<stdgo.StdGoTypes.GoUInt8>)) : stdgo.Slice<stdgo.Slice<stdgo.StdGoTypes.GoUInt8>>);
        for (__0 => _b in _inputs) {
            var __tmp__ = stdgo.encoding.binary.Binary.varint(_b), _x:stdgo.StdGoTypes.GoInt64 = __tmp__._0, _n:stdgo.StdGoTypes.GoInt = __tmp__._1;
            if (_n != ((_b.length))) {
                stdgo.fmt.Fmt.println(stdgo.Go.toInterface(("Varint did not consume all of in" : stdgo.GoString)));
            };
            stdgo.fmt.Fmt.println(stdgo.Go.toInterface(_x));
        };
    }
