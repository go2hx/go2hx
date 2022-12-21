package stdgo.encoding.binary_test;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:structInit @:local private class T__struct_7 {
	public var pi:GoFloat64 = 0;
	public var uate:GoUInt8 = 0;
	public var mine:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...3) (0 : GoUInt8)]);
	public var too:GoUInt16 = 0;

	public function new(?pi:GoFloat64, ?uate:GoUInt8, ?mine:GoArray<GoUInt8>, ?too:GoUInt16) {
		if (pi != null)
			this.pi = pi;
		if (uate != null)
			this.uate = uate;
		if (mine != null)
			this.mine = mine;
		if (too != null)
			this.too = too;
	}

	public function __underlying__()
		return Go.toInterface(this);

	public function __copy__() {
		return new T__struct_7(pi, uate, mine, too);
	}
}

function exampleWrite():Void {
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _pi:GoFloat64 = (3.141592653589793 : GoFloat64);
	var _err:Error = stdgo.encoding.binary.Binary.write(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), Go.toInterface(_pi));
	if (_err != null) {
		stdgo.fmt.Fmt.println(Go.str("binary.Write failed:"), _err);
	};
	stdgo.fmt.Fmt.printf(Go.str("% x"), Go.toInterface(_buf.bytes()));
}

function exampleWrite_multi():Void {
	var _buf = ({} : stdgo.bytes.Bytes.Buffer);
	var _data:Slice<AnyInterface> = (new Slice<AnyInterface>(0, 0, Go.toInterface((61374 : GoUInt16)), Go.toInterface((-54 : GoInt8)),
		Go.toInterface((254 : GoUInt8))) : Slice<AnyInterface>);
	for (_0 => _v in _data) {
		var _err:Error = stdgo.encoding.binary.Binary.write(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian), _v);
		if (_err != null) {
			stdgo.fmt.Fmt.println(Go.str("binary.Write failed:"), _err);
		};
	};
	stdgo.fmt.Fmt.printf(Go.str("%x"), Go.toInterface(_buf.bytes()));
}

function exampleRead():Void {
	var _pi:GoFloat64 = (0 : GoFloat64);
	var _b = (new Slice<GoUInt8>(0, 0, (24 : GoUInt8), (45 : GoUInt8), (68 : GoUInt8), (84 : GoUInt8), (251 : GoUInt8), (33 : GoUInt8), (9 : GoUInt8),
		(64 : GoUInt8)) : Slice<GoUInt8>);
	var _buf = stdgo.bytes.Bytes.newReader(_b);
	var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_buf), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian),
		Go.toInterface(Go.pointer(_pi)));
	if (_err != null) {
		stdgo.fmt.Fmt.println(Go.str("binary.Read failed:"), _err);
	};
	stdgo.fmt.Fmt.print(_pi);
}

function exampleRead_multi():Void {
	var _b = (new Slice<GoUInt8>(0, 0, (24 : GoUInt8), (45 : GoUInt8), (68 : GoUInt8), (84 : GoUInt8), (251 : GoUInt8), (33 : GoUInt8), (9 : GoUInt8),
		(64 : GoUInt8), (255 : GoUInt8), (1 : GoUInt8), (2 : GoUInt8), (3 : GoUInt8), (190 : GoUInt8), (239 : GoUInt8)) : Slice<GoUInt8>);
	var _r = stdgo.bytes.Bytes.newReader(_b);
	var _data:T__struct_7 = ({
		pi: (0 : GoFloat64),
		uate: (0 : GoUInt8),
		mine: new GoArray<GoUInt8>(...[for (i in 0...3) (0 : GoUInt8)]),
		too: (0 : GoUInt16)
	} : T__struct_7);
	{
		var _err:Error = stdgo.encoding.binary.Binary.read(Go.asInterface(_r), Go.asInterface(stdgo.encoding.binary.Binary.littleEndian),
			Go.toInterface((_data : Ref<T__struct_7>)));
		if (_err != null) {
			stdgo.fmt.Fmt.println(Go.str("binary.Read failed:"), _err);
		};
	};
	stdgo.fmt.Fmt.println(_data.pi);
	stdgo.fmt.Fmt.println(_data.uate);
	stdgo.fmt.Fmt.printf(Go.str("% x\n"), Go.toInterface(_data.mine));
	stdgo.fmt.Fmt.println(_data.too);
}

function exampleByteOrder_put():Void {
	var _b = new Slice<GoUInt8>((4 : GoInt).toBasic(), 0, ...[for (i in 0...(4 : GoInt).toBasic()) (0 : GoUInt8)]);
	stdgo.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((0 : GoInt)) : Slice<GoUInt8>), (1000 : GoUInt16));
	stdgo.encoding.binary.Binary.littleEndian.putUint16((_b.__slice__((2 : GoInt)) : Slice<GoUInt8>), (2000 : GoUInt16));
	stdgo.fmt.Fmt.printf(Go.str("% x\n"), Go.toInterface(_b));
}

function exampleByteOrder_get():Void {
	var _b = (new Slice<GoUInt8>(0, 0, (232 : GoUInt8), (3 : GoUInt8), (208 : GoUInt8), (7 : GoUInt8)) : Slice<GoUInt8>);
	var _x1:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((0 : GoInt)) : Slice<GoUInt8>));
	var _x2:GoUInt16 = stdgo.encoding.binary.Binary.littleEndian.uint16((_b.__slice__((2 : GoInt)) : Slice<GoUInt8>));
	stdgo.fmt.Fmt.printf(Go.str("%#04x %#04x\n"), Go.toInterface(_x1), Go.toInterface(_x2));
}

function examplePutUvarint():Void {
	var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_0 => _x in (new Slice<GoUInt64>(0, 0, ("1" : GoUInt64), ("2" : GoUInt64), ("127" : GoUInt64), ("128" : GoUInt64), ("255" : GoUInt64),
		("256" : GoUInt64)) : Slice<GoUInt64>)) {
		var _n:GoInt = stdgo.encoding.binary.Binary.putUvarint(_buf, _x);
		stdgo.fmt.Fmt.printf(Go.str("%x\n"), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)));
	};
}

function examplePutVarint():Void {
	var _buf = new Slice<GoUInt8>((10 : GoInt).toBasic(), 0, ...[for (i in 0...(10 : GoInt).toBasic()) (0 : GoUInt8)]);
	for (_0 => _x in (new Slice<GoInt64>(0, 0, ("-65" : GoInt64), ("-64" : GoInt64), ("-2" : GoInt64), ("-1" : GoInt64), ("0" : GoInt64), ("1" : GoInt64),
		("2" : GoInt64), ("63" : GoInt64), ("64" : GoInt64)) : Slice<GoInt64>)) {
		var _n:GoInt = stdgo.encoding.binary.Binary.putVarint(_buf, _x);
		stdgo.fmt.Fmt.printf(Go.str("%x\n"), Go.toInterface((_buf.__slice__(0, _n) : Slice<GoUInt8>)));
	};
}

function exampleUvarint():Void {
	var _inputs = (new Slice<Slice<GoUInt8>>(0, 0, (new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (2 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (127 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (255 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (2 : GoUInt8)) : Slice<GoUInt8>)) : Slice<Slice<GoUInt8>>);
	for (_0 => _b in _inputs) {
		var __tmp__ = stdgo.encoding.binary.Binary.uvarint(_b),
			_x:GoUInt64 = __tmp__._0,
			_n:GoInt = __tmp__._1;
		if (_n != ((_b.length))) {
			stdgo.fmt.Fmt.println(Go.str("Uvarint did not consume all of in"));
		};
		stdgo.fmt.Fmt.println(Std.string(_x.toBasic()));
	};
}

function exampleVarint():Void {
	var _inputs = (new Slice<Slice<GoUInt8>>(0, 0, (new Slice<GoUInt8>(0, 0, (129 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (127 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (3 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (1 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (0 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (2 : GoUInt8)) : Slice<GoUInt8>), (new Slice<GoUInt8>(0, 0, (4 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (126 : GoUInt8)) : Slice<GoUInt8>),
		(new Slice<GoUInt8>(0, 0, (128 : GoUInt8), (1 : GoUInt8)) : Slice<GoUInt8>)) : Slice<Slice<GoUInt8>>);
	for (_0 => _b in _inputs) {
		var __tmp__ = stdgo.encoding.binary.Binary.varint(_b),
			_x:GoInt64 = __tmp__._0,
			_n:GoInt = __tmp__._1;
		if (_n != ((_b.length))) {
			stdgo.fmt.Fmt.println(Go.str("Varint did not consume all of in"));
		};
		stdgo.fmt.Fmt.println(_x);
	};
}
