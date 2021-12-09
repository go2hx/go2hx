package stdgo.encoding.binary;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

typedef ByteOrder = StructType & {
	public function uint16(arg0:Slice<GoByte>):GoUInt16;
	public function uint32(arg0:Slice<GoByte>):GoUInt32;
	public function uint64(arg0:Slice<GoByte>):GoUInt64;
	public function putUint16(arg0:Slice<GoByte>, arg1:GoUInt16):Void;
	public function putUint32(arg0:Slice<GoByte>, arg1:GoUInt32):Void;
	public function putUint64(arg0:Slice<GoByte>, arg1:GoUInt64):Void;
	public function toString():GoString;
};

@:structInit class T_littleEndian {
	public function goString():GoString {
		return "binary.LittleEndian";
	}

	public function toString():GoString {
		return "LittleEndian";
	}

	public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
		_b[((7 : GoInt))];
		_b[((0 : GoInt))] = ((_v : GoByte));
		_b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
		_b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
		_b[((4 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
		_b[((5 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
		_b[((6 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
		_b[((7 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
	}

	public function uint64(_b:Slice<GoByte>):GoUInt64 {
		_b[((7 : GoInt))];
		return
			((_b[((0 : GoInt))] : GoUInt64)) | (((_b[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
	}

	public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
		_b[((3 : GoInt))];
		_b[((0 : GoInt))] = ((_v : GoByte));
		_b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_b[((2 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
		_b[((3 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
	}

	public function uint32(_b:Slice<GoByte>):GoUInt32 {
		_b[((3 : GoInt))];
		return
			((_b[((0 : GoInt))] : GoUInt32)) | (((_b[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
	}

	public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
		_b[((1 : GoInt))];
		_b[((0 : GoInt))] = ((_v : GoByte));
		_b[((1 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
	}

	public function uint16(_b:Slice<GoByte>):GoUInt16 {
		_b[((1 : GoInt))];
		return ((_b[((0 : GoInt))] : GoUInt16)) | (((_b[((1 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt)));
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_littleEndian();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_bigEndian {
	public function goString():GoString {
		return "binary.BigEndian";
	}

	public function toString():GoString {
		return "BigEndian";
	}

	public function putUint64(_b:Slice<GoByte>, _v:GoUInt64):Void {
		_b[((7 : GoInt))];
		_b[((0 : GoInt))] = (((_v >> ((56 : GoUnTypedInt))) : GoByte));
		_b[((1 : GoInt))] = (((_v >> ((48 : GoUnTypedInt))) : GoByte));
		_b[((2 : GoInt))] = (((_v >> ((40 : GoUnTypedInt))) : GoByte));
		_b[((3 : GoInt))] = (((_v >> ((32 : GoUnTypedInt))) : GoByte));
		_b[((4 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
		_b[((5 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
		_b[((6 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_b[((7 : GoInt))] = ((_v : GoByte));
	}

	public function uint64(_b:Slice<GoByte>):GoUInt64 {
		_b[((7 : GoInt))];
		return
			((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
	}

	public function putUint32(_b:Slice<GoByte>, _v:GoUInt32):Void {
		_b[((3 : GoInt))];
		_b[((0 : GoInt))] = (((_v >> ((24 : GoUnTypedInt))) : GoByte));
		_b[((1 : GoInt))] = (((_v >> ((16 : GoUnTypedInt))) : GoByte));
		_b[((2 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_b[((3 : GoInt))] = ((_v : GoByte));
	}

	public function uint32(_b:Slice<GoByte>):GoUInt32 {
		_b[((3 : GoInt))];
		return
			((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
	}

	public function putUint16(_b:Slice<GoByte>, _v:GoUInt16):Void {
		_b[((1 : GoInt))];
		_b[((0 : GoInt))] = (((_v >> ((8 : GoUnTypedInt))) : GoByte));
		_b[((1 : GoInt))] = ((_v : GoByte));
	}

	public function uint16(_b:Slice<GoByte>):GoUInt16 {
		_b[((1 : GoInt))];
		return ((_b[((1 : GoInt))] : GoUInt16)) | (((_b[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt)));
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bigEndian();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_coder {
	public var _order:ByteOrder = ((null : ByteOrder));
	public var _buf:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _offset:GoInt = ((0 : GoInt));

	public function new(?_order:ByteOrder, ?_buf:Slice<GoUInt8>, ?_offset:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_order) + " " + Go.string(_buf) + " " + Go.string(_offset) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_coder(_order, _buf, _offset);
	}

	public function __set__(__tmp__) {
		this._order = __tmp__._order;
		this._buf = __tmp__._buf;
		this._offset = __tmp__._offset;
		return this;
	}
}

@:named @:structInit class T_decoder extends T_coder {
	public function _skip(_v:stdgo.reflect.Reflect.Value):Void {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		_d.value._offset = _d.value._offset + (_dataSize(_v.__copy__()));
	}

	public function _value(_v:stdgo.reflect.Reflect.Value):Void {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		if (_v.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
			var _l:GoInt = _v.len();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					_d.value._value(_v.index(_i).__copy__());
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
			var _t:stdgo.reflect.Reflect.Type = _v.type();
			var _l:GoInt = _v.numField();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					{
						var _v:stdgo.reflect.Reflect.Value = _v.field(_i).__copy__();
						if (_v.canSet() || _t.field(_i).name != (("_" : GoString))) {
							_d.value._value(_v.__copy__());
						} else {
							_d.value._skip(_v.__copy__());
						};
					};
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
			var _l:GoInt = _v.len();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					_d.value._value(_v.index(_i).__copy__());
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
			_v.setBool(_d.value._bool());
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.int8.__t__) {
			_v.setInt(((_d.value._int8() : GoInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.int16.__t__) {
			_v.setInt(((_d.value._int16() : GoInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.int32.__t__) {
			_v.setInt(((_d.value._int32() : GoInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
			_v.setInt(_d.value._int64());
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
			_v.setUint(((_d.value._uint8() : GoUInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__) {
			_v.setUint(((_d.value._uint16() : GoUInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__) {
			_v.setUint(((_d.value._uint32() : GoUInt64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
			_v.setUint(_d.value._uint64());
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.float32.__t__) {
			_v.setFloat(((stdgo.math.Math.float32frombits(_d.value._uint32()) : GoFloat64)));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
			_v.setFloat(stdgo.math.Math.float64frombits(_d.value._uint64()));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__) {
			_v.setComplex(new GoComplex128(((stdgo.math.Math.float32frombits(_d.value._uint32()) : GoFloat64)),
				((stdgo.math.Math.float32frombits(_d.value._uint32()) : GoFloat64))));
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
			_v.setComplex(new GoComplex128(stdgo.math.Math.float64frombits(_d.value._uint64()), stdgo.math.Math.float64frombits(_d.value._uint64())));
		};
	}

	public function _int64():GoInt64 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		return ((_d.value._uint64() : GoInt64));
	}

	public function _int32():GoInt32 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		return ((_d.value._uint32() : GoInt32));
	}

	public function _int16():GoInt16 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		return ((_d.value._uint16() : GoInt16));
	}

	public function _int8():GoInt8 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		return ((_d.value._uint8() : GoInt8));
	}

	public function _uint64():GoUInt64 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		var _x:GoUInt64 = _d.value._order.uint64(_d.value._buf.__slice__(_d.value._offset, _d.value._offset + ((8 : GoInt))));
		_d.value._offset = _d.value._offset + (((8 : GoInt)));
		return _x;
	}

	public function _uint32():GoUInt32 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		var _x:GoUInt32 = _d.value._order.uint32(_d.value._buf.__slice__(_d.value._offset, _d.value._offset + ((4 : GoInt))));
		_d.value._offset = _d.value._offset + (((4 : GoInt)));
		return _x;
	}

	public function _uint16():GoUInt16 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		var _x:GoUInt16 = _d.value._order.uint16(_d.value._buf.__slice__(_d.value._offset, _d.value._offset + ((2 : GoInt))));
		_d.value._offset = _d.value._offset + (((2 : GoInt)));
		return _x;
	}

	public function _uint8():GoUInt8 {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		var _x:GoUInt8 = _d.value._buf[_d.value._offset];
		_d.value._offset++;
		return _x;
	}

	public function _bool():Bool {
		var _d = new Pointer(() -> new T_decoder(this.__t__), __tmp__ -> new T_decoder(this.__t__ = __tmp__.__t__));
		var _x:GoUInt8 = _d.value._buf[_d.value._offset];
		_d.value._offset++;
		return _x != ((0 : GoUInt8));
	}

	public function new(?_order, ?_buf, ?_offset)
		super(_order, _buf, _offset);

	public override function __copy__()
		return new T_decoder(_order, _buf, _offset);
}

@:named @:structInit class T_encoder extends T_coder {
	public function _skip(_v:stdgo.reflect.Reflect.Value):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		var _n:GoInt = _dataSize(_v.__copy__());
		var _zero:Slice<GoUInt8> = _e.value._buf.__slice__(_e.value._offset, _e.value._offset + _n);
		{
			var _i;
			for (_obj in _zero.keyValueIterator()) {
				_i = _obj.key;
				_zero[_i] = ((0 : GoUInt8));
			};
		};
		_e.value._offset = _e.value._offset + (_n);
	}

	public function _value(_v:stdgo.reflect.Reflect.Value):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		if (_v.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
			var _l:GoInt = _v.len();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					_e.value._value(_v.index(_i).__copy__());
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
			var _t:stdgo.reflect.Reflect.Type = _v.type();
			var _l:GoInt = _v.numField();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					{
						var _v:stdgo.reflect.Reflect.Value = _v.field(_i).__copy__();
						if (_v.canSet() || _t.field(_i).name != (("_" : GoString))) {
							_e.value._value(_v.__copy__());
						} else {
							_e.value._skip(_v.__copy__());
						};
					};
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
			var _l:GoInt = _v.len();
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _l, _i++, {
					_e.value._value(_v.index(_i).__copy__());
				});
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
			_e.value._bool(_v.bool());
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.int.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.int8.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.int16.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.int32.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
			if (_v.type().kind().__t__ == stdgo.reflect.Reflect.int8.__t__) {
				_e.value._int8(((_v.int() : GoInt8)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.int16.__t__) {
				_e.value._int16(((_v.int() : GoInt16)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.int32.__t__) {
				_e.value._int32(((_v.int() : GoInt32)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
				_e.value._int64(_v.int());
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.uint.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__
			|| _v.kind().__t__ == stdgo.reflect.Reflect.uintptr.__t__) {
			if (_v.type().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
				_e.value._uint8(((_v.uint() : GoUInt8)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.uint16.__t__) {
				_e.value._uint16(((_v.uint() : GoUInt16)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.uint32.__t__) {
				_e.value._uint32(((_v.uint() : GoUInt32)));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.uint64.__t__) {
				_e.value._uint64(_v.uint());
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.float32.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
			if (_v.type().kind().__t__ == stdgo.reflect.Reflect.float32.__t__) {
				_e.value._uint32(stdgo.math.Math.float32bits(((_v.float() : GoFloat32))));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.float64.__t__) {
				_e.value._uint64(stdgo.math.Math.float64bits(_v.float()));
			};
		} else if (_v.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
			if (_v.type().kind().__t__ == stdgo.reflect.Reflect.complex64.__t__) {
				var _x:GoComplex128 = _v.complex();
				_e.value._uint32(stdgo.math.Math.float32bits(((_x.real : GoFloat32))));
				_e.value._uint32(stdgo.math.Math.float32bits(((_x.imag : GoFloat32))));
			} else if (_v.type().kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
				var _x:GoComplex128 = _v.complex();
				_e.value._uint64(stdgo.math.Math.float64bits(_x.real));
				_e.value._uint64(stdgo.math.Math.float64bits(_x.imag));
			};
		};
	}

	public function _int64(_x:GoInt64):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._uint64(((_x : GoUInt64)));
	}

	public function _int32(_x:GoInt32):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._uint32(((_x : GoUInt32)));
	}

	public function _int16(_x:GoInt16):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._uint16(((_x : GoUInt16)));
	}

	public function _int8(_x:GoInt8):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._uint8(((_x : GoUInt8)));
	}

	public function _uint64(_x:GoUInt64):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._order.putUint64(_e.value._buf.__slice__(_e.value._offset, _e.value._offset + ((8 : GoInt))), _x);
		_e.value._offset = _e.value._offset + (((8 : GoInt)));
	}

	public function _uint32(_x:GoUInt32):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._order.putUint32(_e.value._buf.__slice__(_e.value._offset, _e.value._offset + ((4 : GoInt))), _x);
		_e.value._offset = _e.value._offset + (((4 : GoInt)));
	}

	public function _uint16(_x:GoUInt16):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._order.putUint16(_e.value._buf.__slice__(_e.value._offset, _e.value._offset + ((2 : GoInt))), _x);
		_e.value._offset = _e.value._offset + (((2 : GoInt)));
	}

	public function _uint8(_x:GoUInt8):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		_e.value._buf[_e.value._offset] = _x;
		_e.value._offset++;
	}

	public function _bool(_x:Bool):Void {
		var _e = new Pointer(() -> new T_encoder(this.__t__), __tmp__ -> new T_encoder(this.__t__ = __tmp__.__t__));
		if (_x) {
			_e.value._buf[_e.value._offset] = ((1 : GoUInt8));
		} else {
			_e.value._buf[_e.value._offset] = ((0 : GoUInt8));
		};
		_e.value._offset++;
	}

	public function new(?_order, ?_buf, ?_offset)
		super(_order, _buf, _offset);

	public override function __copy__()
		return new T_encoder(_order, _buf, _offset);
}

var bigEndian:T_bigEndian = new T_bigEndian();
var _overflow:stdgo.Error = stdgo.errors.Errors.new_("binary: varint overflows a 64-bit integer");
var littleEndian:T_littleEndian = new T_littleEndian();
final maxVarintLen64:GoInt64 = ((10 : GoUnTypedInt));
final maxVarintLen16:GoInt64 = ((3 : GoUnTypedInt));
final maxVarintLen32:GoInt64 = ((5 : GoUnTypedInt));
var _structSize:stdgo.sync.Sync.Map_ = new stdgo.sync.Sync.Map_();

/**
	// Read reads structured binary data from r into data.
	// Data must be a pointer to a fixed-size value or a slice
	// of fixed-size values.
	// Bytes read from r are decoded using the specified byte order
	// and written to successive fields of the data.
	// When decoding boolean values, a zero byte is decoded as false, and
	// any other non-zero byte is decoded as true.
	// When reading into structs, the field data for fields with
	// blank (_) field names is skipped; i.e., blank field names
	// may be used for padding.
	// When reading into a struct, all non-blank fields must be exported
	// or Read may panic.
	//
	// The error is EOF only if no bytes were read.
	// If an EOF happens after reading some but not all the bytes,
	// Read returns ErrUnexpectedEOF.
**/
function read(_r:stdgo.io.Io.Reader, _order:ByteOrder, _data:AnyInterface):Error {
	{
		var _n:GoInt = _intDataSize(Go.toInterface(_data));
		if (_n != ((0 : GoInt))) {
			var _bs:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
			{
				var __tmp__ = stdgo.io.Io.readFull(_r, _bs),
					_:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				if (_err != null) {
					return _err;
				};
			};
			if (Go.assertable(((_data : Pointer<Bool>)))) {
				var _data:Pointer<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_data.value = _bs[((0 : GoInt))] != ((0 : GoUInt8));
			} else if (Go.assertable(((_data : Pointer<GoInt8>)))) {
				var _data:Pointer<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_data.value = ((_bs[((0 : GoInt))] : GoInt8));
			} else if (Go.assertable(((_data : Pointer<GoUInt8>)))) {
				var _data:Pointer<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = _bs[((0 : GoInt))];
			} else if (Go.assertable(((_data : Pointer<GoInt16>)))) {
				var _data:Pointer<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = ((_order.uint16(_bs) : GoInt16));
			} else if (Go.assertable(((_data : Pointer<GoUInt16>)))) {
				var _data:Pointer<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = _order.uint16(_bs);
			} else if (Go.assertable(((_data : Pointer<GoInt32>)))) {
				var _data:Pointer<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = ((_order.uint32(_bs) : GoInt32));
			} else if (Go.assertable(((_data : Pointer<GoUInt32>)))) {
				var _data:Pointer<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = _order.uint32(_bs);
			} else if (Go.assertable(((_data : Pointer<GoInt64>)))) {
				var _data:Pointer<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = ((_order.uint64(_bs) : GoInt64));
			} else if (Go.assertable(((_data : Pointer<GoUInt64>)))) {
				var _data:Pointer<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = _order.uint64(_bs);
			} else if (Go.assertable(((_data : Pointer<GoFloat32>)))) {
				var _data:Pointer<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = stdgo.math.Math.float32frombits(_order.uint32(_bs));
			} else if (Go.assertable(((_data : Pointer<GoFloat64>)))) {
				var _data:Pointer<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				_data.value = stdgo.math.Math.float64frombits(_order.uint64(_bs));
			} else if (Go.assertable(((_data : Slice<Bool>)))) {
				var _data:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _bs.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_data[_i] = _x != ((0 : GoUInt8));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoInt8>)))) {
				var _data:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _bs.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_data[_i] = ((_x : GoInt8));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
				var _data:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				Go.copy(_data, _bs);
			} else if (Go.assertable(((_data : Slice<GoInt16>)))) {
				var _data:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = ((_order.uint16(_bs.__slice__(((2 : GoInt)) * _i)) : GoInt16));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
				var _data:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = _order.uint16(_bs.__slice__(((2 : GoInt)) * _i));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoInt32>)))) {
				var _data:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = ((_order.uint32(_bs.__slice__(((4 : GoInt)) * _i)) : GoInt32));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
				var _data:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = _order.uint32(_bs.__slice__(((4 : GoInt)) * _i));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoInt64>)))) {
				var _data:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = ((_order.uint64(_bs.__slice__(((8 : GoInt)) * _i)) : GoInt64));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
				var _data:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = _order.uint64(_bs.__slice__(((8 : GoInt)) * _i));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
				var _data:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = stdgo.math.Math.float32frombits(_order.uint32(_bs.__slice__(((4 : GoInt)) * _i)));
					};
				};
			} else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
				var _data:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__()
					.value;
				{
					var _i;
					for (_obj in _data.keyValueIterator()) {
						_i = _obj.key;
						_data[_i] = stdgo.math.Math.float64frombits(_order.uint64(_bs.__slice__(((8 : GoInt)) * _i)));
					};
				};
			} else {
				var _data:AnyInterface = _data == null ? null : _data.__underlying__();
				_n = ((0 : GoInt));
			};
			if (_n != ((0 : GoInt))) {
				return ((null : stdgo.Error));
			};
		};
	};
	var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__();
	var _size:GoInt = -((1 : GoUnTypedInt));
	if (_v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__) {
		_v = _v.elem().__copy__();
		_size = _dataSize(_v.__copy__());
	} else if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
		_size = _dataSize(_v.__copy__());
	};
	if (_size < ((0 : GoInt))) {
		return stdgo.errors.Errors.new_((("binary.Read: invalid type " : GoString)) + stdgo.reflect.Reflect.typeOf(Go.toInterface(_data)).toString());
	};
	var _d:Pointer<T_decoder> = Go.pointer((({_order: _order, _buf: new Slice<GoUInt8>(...[for (i in 0...((_size : GoInt)).toBasic()) ((0 : GoUInt8))]),
		_offset: 0} : T_decoder)));
	{
		var __tmp__ = stdgo.io.Io.readFull(_r, _d.value._buf),
			_:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return _err;
		};
	};
	_d.value._value(_v.__copy__());
	return ((null : stdgo.Error));
}

/**
	// Write writes the binary representation of data into w.
	// Data must be a fixed-size value or a slice of fixed-size
	// values, or a pointer to such data.
	// Boolean values encode as one byte: 1 for true, and 0 for false.
	// Bytes written to w are encoded using the specified byte order
	// and read from successive fields of the data.
	// When writing structs, zero values are written for fields
	// with blank (_) field names.
**/
function write(_w:stdgo.io.Io.Writer, _order:ByteOrder, _data:AnyInterface):Error {
	{
		var _n:GoInt = _intDataSize(Go.toInterface(_data));
		if (_n != ((0 : GoInt))) {
			var _bs:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_n : GoInt)).toBasic()) ((0 : GoUInt8))]);
			if (Go.assertable(((_data : Pointer<Bool>)))) {
				var _v:Pointer<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				if (_v.value) {
					_bs[((0 : GoInt))] = ((1 : GoUInt8));
				} else {
					_bs[((0 : GoInt))] = ((0 : GoUInt8));
				};
			} else if (Go.assertable(((_data : Bool)))) {
				var _v:Bool = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				if (_v) {
					_bs[((0 : GoInt))] = ((1 : GoUInt8));
				} else {
					_bs[((0 : GoInt))] = ((0 : GoUInt8));
				};
			} else if (Go.assertable(((_data : Slice<Bool>)))) {
				var _v:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						if (_x) {
							_bs[_i] = ((1 : GoUInt8));
						} else {
							_bs[_i] = ((0 : GoUInt8));
						};
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoInt8>)))) {
				var _v:Pointer<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_bs[((0 : GoInt))] = ((_v.value : GoByte));
			} else if (Go.assertable(((_data : GoInt8)))) {
				var _v:GoInt8 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_bs[((0 : GoInt))] = ((_v : GoByte));
			} else if (Go.assertable(((_data : Slice<GoInt8>)))) {
				var _v:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_bs[_i] = ((_x : GoByte));
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoUInt8>)))) {
				var _v:Pointer<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_bs[((0 : GoInt))] = _v.value;
			} else if (Go.assertable(((_data : GoUInt8)))) {
				var _v:GoUInt8 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_bs[((0 : GoInt))] = _v;
			} else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
				var _v:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_bs = _v;
			} else if (Go.assertable(((_data : Pointer<GoInt16>)))) {
				var _v:Pointer<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint16(_bs, ((_v.value : GoUInt16)));
			} else if (Go.assertable(((_data : GoInt16)))) {
				var _v:GoInt16 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint16(_bs, ((_v : GoUInt16)));
			} else if (Go.assertable(((_data : Slice<GoInt16>)))) {
				var _v:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint16(_bs.__slice__(((2 : GoInt)) * _i), ((_x : GoUInt16)));
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoUInt16>)))) {
				var _v:Pointer<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint16(_bs, _v.value);
			} else if (Go.assertable(((_data : GoUInt16)))) {
				var _v:GoUInt16 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint16(_bs, _v);
			} else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
				var _v:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint16(_bs.__slice__(((2 : GoInt)) * _i), _x);
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoInt32>)))) {
				var _v:Pointer<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, ((_v.value : GoUInt32)));
			} else if (Go.assertable(((_data : GoInt32)))) {
				var _v:GoInt32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, ((_v : GoUInt32)));
			} else if (Go.assertable(((_data : Slice<GoInt32>)))) {
				var _v:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint32(_bs.__slice__(((4 : GoInt)) * _i), ((_x : GoUInt32)));
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoUInt32>)))) {
				var _v:Pointer<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, _v.value);
			} else if (Go.assertable(((_data : GoUInt32)))) {
				var _v:GoUInt32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, _v);
			} else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
				var _v:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint32(_bs.__slice__(((4 : GoInt)) * _i), _x);
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoInt64>)))) {
				var _v:Pointer<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, ((_v.value : GoUInt64)));
			} else if (Go.assertable(((_data : GoInt64)))) {
				var _v:GoInt64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, ((_v : GoUInt64)));
			} else if (Go.assertable(((_data : Slice<GoInt64>)))) {
				var _v:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint64(_bs.__slice__(((8 : GoInt)) * _i), ((_x : GoUInt64)));
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoUInt64>)))) {
				var _v:Pointer<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, _v.value);
			} else if (Go.assertable(((_data : GoUInt64)))) {
				var _v:GoUInt64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, _v);
			} else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
				var _v:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint64(_bs.__slice__(((8 : GoInt)) * _i), _x);
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoFloat32>)))) {
				var _v:Pointer<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, stdgo.math.Math.float32bits(_v.value));
			} else if (Go.assertable(((_data : GoFloat32)))) {
				var _v:GoFloat32 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint32(_bs, stdgo.math.Math.float32bits(_v));
			} else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
				var _v:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint32(_bs.__slice__(((4 : GoInt)) * _i), stdgo.math.Math.float32bits(_x));
					};
				};
			} else if (Go.assertable(((_data : Pointer<GoFloat64>)))) {
				var _v:Pointer<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, stdgo.math.Math.float64bits(_v.value));
			} else if (Go.assertable(((_data : GoFloat64)))) {
				var _v:GoFloat64 = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				_order.putUint64(_bs, stdgo.math.Math.float64bits(_v));
			} else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
				var _v:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
				{
					var _i;
					var _x;
					for (_obj in _v.keyValueIterator()) {
						_i = _obj.key;
						_x = _obj.value;
						_order.putUint64(_bs.__slice__(((8 : GoInt)) * _i), stdgo.math.Math.float64bits(_x));
					};
				};
			};
			var __tmp__ = _w.write(_bs),
				_:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			return _err;
		};
	};
	var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(Go.toInterface(_data)).__copy__()).__copy__();
	var _size:GoInt = _dataSize(_v.__copy__());
	if (_size < ((0 : GoInt))) {
		return stdgo.errors.Errors.new_((("binary.Write: invalid type " : GoString)) + stdgo.reflect.Reflect.typeOf(Go.toInterface(_data)).toString());
	};
	var _buf:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_size : GoInt)).toBasic()) ((0 : GoUInt8))]);
	var _e:Pointer<T_encoder> = Go.pointer((({_order: _order, _buf: _buf, _offset: 0} : T_encoder)));
	_e.value._value(_v.__copy__());
	var __tmp__ = _w.write(_buf),
		_:GoInt = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	return _err;
}

/**
	// Size returns how many bytes Write would generate to encode the value v, which
	// must be a fixed-size value or a slice of fixed-size values, or a pointer to such data.
	// If v is neither of these, Size returns -1.
**/
function size(_v:AnyInterface):GoInt {
	return _dataSize(stdgo.reflect.Reflect.indirect(stdgo.reflect.Reflect.valueOf(Go.toInterface(_v)).__copy__()).__copy__());
}

/**
	// dataSize returns the number of bytes the actual data represented by v occupies in memory.
	// For compound structures, it sums the sizes of the elements. Thus, for instance, for a slice
	// it returns the length of the slice times the element size and does not count the memory
	// occupied by the header. If the type of v is not acceptable, dataSize returns -1.
**/
function _dataSize(_v:stdgo.reflect.Reflect.Value):GoInt {
	if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
		{
			var _s:GoInt = _sizeof(_v.type().elem());
			if (_s >= ((0 : GoInt))) {
				return _s * _v.len();
			};
		};
		return -((1 : GoUnTypedInt));
	} else if (_v.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
		var _t:stdgo.reflect.Reflect.Type = _v.type();
		{
			var __tmp__ = _structSize.load(Go.toInterface(_t)),
				_size:AnyInterface = __tmp__._0,
				_ok:Bool = __tmp__._1;
			if (_ok) {
				return ((_size.value : GoInt));
			};
		};
		var _size:GoInt = _sizeof(_t);
		_structSize.store(Go.toInterface(_t), Go.toInterface(_size));
		return _size;
	} else {
		return _sizeof(_v.type());
	};
}

/**
	// sizeof returns the size >= 0 of variables for the given type or -1 if the type is not acceptable.
**/
function _sizeof(_t:stdgo.reflect.Reflect.Type):GoInt {
	if (_t.kind().__t__ == stdgo.reflect.Reflect.array.__t__) {
		{
			var _s:GoInt = _sizeof(_t.elem());
			if (_s >= ((0 : GoInt))) {
				return _s * _t.len();
			};
		};
	} else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
		var _sum:GoInt = ((0 : GoInt));
		{
			var _i:GoInt = ((0 : GoInt)), _n:GoInt = _t.numField();
			Go.cfor(_i < _n, _i++, {
				var _s:GoInt = _sizeof(_t.field(_i).type);
				if (_s < ((0 : GoInt))) {
					return -((1 : GoUnTypedInt));
				};
				_sum = _sum + (_s);
			});
		};
		return _sum;
	} else if (_t.kind().__t__ == stdgo.reflect.Reflect.bool.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.uint8.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.uint16.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.uint32.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.uint64.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.int8.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.int16.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.int32.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.int64.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.float32.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.float64.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.complex64.__t__
		|| _t.kind().__t__ == stdgo.reflect.Reflect.complex128.__t__) {
		return ((_t.size() : GoInt));
	};
	return -((1 : GoUnTypedInt));
}

/**
	// intDataSize returns the size of the data required to represent the data when encoded.
	// It returns zero if the type cannot be implemented by the fast path in Read or Write.
**/
function _intDataSize(_data:AnyInterface):GoInt {
	if (Go.assertable(((_data : Bool)))
		|| Go.assertable(((_data : GoInt8)))
		|| Go.assertable(((_data : GoUInt8)))
		|| Go.assertable(((_data : Pointer<Bool>)))
		|| Go.assertable(((_data : Pointer<GoInt8>)))
		|| Go.assertable(((_data : Pointer<GoUInt8>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((1 : GoInt));
	} else if (Go.assertable(((_data : Slice<Bool>)))) {
		var _data:Slice<Bool> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return _data.length;
	} else if (Go.assertable(((_data : Slice<GoInt8>)))) {
		var _data:Slice<GoInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return _data.length;
	} else if (Go.assertable(((_data : Slice<GoUInt8>)))) {
		var _data:Slice<GoUInt8> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return _data.length;
	} else if (Go.assertable(((_data : GoInt16)))
		|| Go.assertable(((_data : GoUInt16)))
		|| Go.assertable(((_data : Pointer<GoInt16>)))
		|| Go.assertable(((_data : Pointer<GoUInt16>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((2 : GoInt));
	} else if (Go.assertable(((_data : Slice<GoInt16>)))) {
		var _data:Slice<GoInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((2 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : Slice<GoUInt16>)))) {
		var _data:Slice<GoUInt16> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((2 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : GoInt32)))
		|| Go.assertable(((_data : GoUInt32)))
		|| Go.assertable(((_data : Pointer<GoInt32>)))
		|| Go.assertable(((_data : Pointer<GoUInt32>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((4 : GoInt));
	} else if (Go.assertable(((_data : Slice<GoInt32>)))) {
		var _data:Slice<GoInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((4 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : Slice<GoUInt32>)))) {
		var _data:Slice<GoUInt32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((4 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : GoInt64)))
		|| Go.assertable(((_data : GoUInt64)))
		|| Go.assertable(((_data : Pointer<GoInt64>)))
		|| Go.assertable(((_data : Pointer<GoUInt64>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((8 : GoInt));
	} else if (Go.assertable(((_data : Slice<GoInt64>)))) {
		var _data:Slice<GoInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((8 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : Slice<GoUInt64>)))) {
		var _data:Slice<GoUInt64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((8 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : GoFloat32))) || Go.assertable(((_data : Pointer<GoFloat32>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((4 : GoInt));
	} else if (Go.assertable(((_data : GoFloat64))) || Go.assertable(((_data : Pointer<GoFloat64>)))) {
		var _data:AnyInterface = _data == null ? null : _data.__underlying__();
		return ((8 : GoInt));
	} else if (Go.assertable(((_data : Slice<GoFloat32>)))) {
		var _data:Slice<GoFloat32> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((4 : GoInt)) * _data.length;
	} else if (Go.assertable(((_data : Slice<GoFloat64>)))) {
		var _data:Slice<GoFloat64> = _data == null ? null : _data.__underlying__() == null ? null : _data == null ? null : _data.__underlying__().value;
		return ((8 : GoInt)) * _data.length;
	};
	return ((0 : GoInt));
}

/**
	// PutUvarint encodes a uint64 into buf and returns the number of bytes written.
	// If the buffer is too small, PutUvarint will panic.
**/
function putUvarint(_buf:Slice<GoByte>, _x:GoUInt64):GoInt {
	var _i:GoInt = ((0 : GoInt));
	while (_x >= ((128 : GoUInt64))) {
		_buf[_i] = ((_x : GoByte)) | ((128 : GoUInt8));
		_x = (_x >> (((7 : GoUnTypedInt))));
		_i++;
	};
	_buf[_i] = ((_x : GoByte));
	return _i + ((1 : GoInt));
}

/**
	// Uvarint decodes a uint64 from buf and returns that value and the
	// number of bytes read (> 0). If an error occurred, the value is 0
	// and the number of bytes n is <= 0 meaning:
	//
	// 	n == 0: buf too small
	// 	n  < 0: value larger than 64 bits (overflow)
	// 	        and -n is the number of bytes read
	//
**/
function uvarint(_buf:Slice<GoByte>):{var _0:GoUInt64; var _1:GoInt;} {
	var _x:GoUInt64 = ((0 : GoUInt64));
	var _s:GoUInt = ((0 : GoUInt));
	{
		var _i;
		var _b;
		for (_obj in _buf.keyValueIterator()) {
			_i = _obj.key;
			_b = _obj.value;
			if (_i == maxVarintLen64) {
				return {_0: ((0 : GoUInt64)), _1: -(_i + ((1 : GoInt)))};
			};
			if (_b < ((128 : GoUInt8))) {
				if (_i == maxVarintLen64 - ((1 : GoUnTypedInt)) && _b > ((1 : GoUInt8))) {
					return {_0: ((0 : GoUInt64)), _1: -(_i + ((1 : GoInt)))};
				};
				return {_0: _x | (((_b : GoUInt64)) << _s), _1: _i + ((1 : GoInt))};
			};
			_x = _x | (((((_b & ((127 : GoUInt8))) : GoUInt64)) << _s));
			_s = _s + (((7 : GoUInt)));
		};
	};
	return {_0: ((0 : GoUInt64)), _1: ((0 : GoInt))};
}

/**
	// PutVarint encodes an int64 into buf and returns the number of bytes written.
	// If the buffer is too small, PutVarint will panic.
**/
function putVarint(_buf:Slice<GoByte>, _x:GoInt64):GoInt {
	var _ux:GoUInt64 = (((_x : GoUInt64)) << ((1 : GoUnTypedInt)));
	if (_x < ((0 : GoInt64))) {
		_ux = -1 ^ _ux;
	};
	return putUvarint(_buf, _ux);
}

/**
	// Varint decodes an int64 from buf and returns that value and the
	// number of bytes read (> 0). If an error occurred, the value is 0
	// and the number of bytes n is <= 0 with the following meaning:
	//
	// 	n == 0: buf too small
	// 	n  < 0: value larger than 64 bits (overflow)
	// 	        and -n is the number of bytes read
	//
**/
function varint(_buf:Slice<GoByte>):{var _0:GoInt64; var _1:GoInt;} {
	var __tmp__ = uvarint(_buf),
		_ux:GoUInt64 = __tmp__._0,
		_n:GoInt = __tmp__._1;
	var _x:GoInt64 = (((_ux >> ((1 : GoUnTypedInt))) : GoInt64));
	if (_ux & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
		_x = -1 ^ _x;
	};
	return {_0: _x, _1: _n};
}

/**
	// ReadUvarint reads an encoded unsigned integer from r and returns it as a uint64.
**/
function readUvarint(_r:stdgo.io.Io.ByteReader):{var _0:GoUInt64; var _1:Error;} {
	var _x:GoUInt64 = ((0 : GoUInt64));
	var _s:GoUInt = ((0 : GoUInt));
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < maxVarintLen64, _i++, {
			var __tmp__ = _r.readByte(),
				_b:GoUInt8 = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			if (_err != null) {
				return {_0: _x, _1: _err};
			};
			if (_b < ((128 : GoUInt8))) {
				if (_i == maxVarintLen64 - ((1 : GoUnTypedInt)) && _b > ((1 : GoUInt8))) {
					return {_0: _x, _1: _overflow};
				};
				return {_0: _x | (((_b : GoUInt64)) << _s), _1: ((null : stdgo.Error))};
			};
			_x = _x | (((((_b & ((127 : GoUInt8))) : GoUInt64)) << _s));
			_s = _s + (((7 : GoUInt)));
		});
	};
	return {_0: _x, _1: _overflow};
}

/**
	// ReadVarint reads an encoded signed integer from r and returns it as an int64.
**/
function readVarint(_r:stdgo.io.Io.ByteReader):{var _0:GoInt64; var _1:Error;} {
	var __tmp__ = readUvarint(_r),
		_ux:GoUInt64 = __tmp__._0,
		_err:stdgo.Error = __tmp__._1;
	var _x:GoInt64 = (((_ux >> ((1 : GoUnTypedInt))) : GoInt64));
	if (_ux & ((1 : GoUInt64)) != ((0 : GoUInt64))) {
		_x = -1 ^ _x;
	};
	return {_0: _x, _1: _err};
}

class T_littleEndian_extension_fields {
	public function uint16(__tmp__, _b:Slice<GoByte>):GoUInt16
		return __tmp__.uint16(_b);

	public function putUint16(__tmp__, _b:Slice<GoByte>, _v:GoUInt16):Void
		__tmp__.putUint16(_b, _v);

	public function uint32(__tmp__, _b:Slice<GoByte>):GoUInt32
		return __tmp__.uint32(_b);

	public function putUint32(__tmp__, _b:Slice<GoByte>, _v:GoUInt32):Void
		__tmp__.putUint32(_b, _v);

	public function uint64(__tmp__, _b:Slice<GoByte>):GoUInt64
		return __tmp__.uint64(_b);

	public function putUint64(__tmp__, _b:Slice<GoByte>, _v:GoUInt64):Void
		__tmp__.putUint64(_b, _v);

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function goString(__tmp__):GoString
		return __tmp__.goString();
}

class T_bigEndian_extension_fields {
	public function uint16(__tmp__, _b:Slice<GoByte>):GoUInt16
		return __tmp__.uint16(_b);

	public function putUint16(__tmp__, _b:Slice<GoByte>, _v:GoUInt16):Void
		__tmp__.putUint16(_b, _v);

	public function uint32(__tmp__, _b:Slice<GoByte>):GoUInt32
		return __tmp__.uint32(_b);

	public function putUint32(__tmp__, _b:Slice<GoByte>, _v:GoUInt32):Void
		__tmp__.putUint32(_b, _v);

	public function uint64(__tmp__, _b:Slice<GoByte>):GoUInt64
		return __tmp__.uint64(_b);

	public function putUint64(__tmp__, _b:Slice<GoByte>, _v:GoUInt64):Void
		__tmp__.putUint64(_b, _v);

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function goString(__tmp__):GoString
		return __tmp__.goString();
}

class T_decoder_extension_fields {
	public function _bool(__tmp__):Bool
		return __tmp__._bool();

	public function _uint8(__tmp__):GoUInt8
		return __tmp__._uint8();

	public function _uint16(__tmp__):GoUInt16
		return __tmp__._uint16();

	public function _uint32(__tmp__):GoUInt32
		return __tmp__._uint32();

	public function _uint64(__tmp__):GoUInt64
		return __tmp__._uint64();

	public function _int8(__tmp__):GoInt8
		return __tmp__._int8();

	public function _int16(__tmp__):GoInt16
		return __tmp__._int16();

	public function _int32(__tmp__):GoInt32
		return __tmp__._int32();

	public function _int64(__tmp__):GoInt64
		return __tmp__._int64();

	public function _value(__tmp__, _v:stdgo.reflect.Reflect.Value):Void
		__tmp__._value(_v);

	public function _skip(__tmp__, _v:stdgo.reflect.Reflect.Value):Void
		__tmp__._skip(_v);
}

class T_encoder_extension_fields {
	public function _bool(__tmp__, _x:Bool):Void
		__tmp__._bool(_x);

	public function _uint8(__tmp__, _x:GoUInt8):Void
		__tmp__._uint8(_x);

	public function _uint16(__tmp__, _x:GoUInt16):Void
		__tmp__._uint16(_x);

	public function _uint32(__tmp__, _x:GoUInt32):Void
		__tmp__._uint32(_x);

	public function _uint64(__tmp__, _x:GoUInt64):Void
		__tmp__._uint64(_x);

	public function _int8(__tmp__, _x:GoInt8):Void
		__tmp__._int8(_x);

	public function _int16(__tmp__, _x:GoInt16):Void
		__tmp__._int16(_x);

	public function _int32(__tmp__, _x:GoInt32):Void
		__tmp__._int32(_x);

	public function _int64(__tmp__, _x:GoInt64):Void
		__tmp__._int64(_x);

	public function _value(__tmp__, _v:stdgo.reflect.Reflect.Value):Void
		__tmp__._value(_v);

	public function _skip(__tmp__, _v:stdgo.reflect.Reflect.Value):Void
		__tmp__._skip(_v);
}
