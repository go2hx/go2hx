package stdgo.math.bits_test;

import stdgo.math.bits.Bits;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

/**
	// Exported (global) variable serving as input for some
	// of the benchmarks to ensure side-effect free calls
	// are not optimized away.
**/
var input:GoUInt64 = ("285870213051353865" : GoUInt64);

/**
	// Exported (global) variable to store function results
	// during benchmarking to ensure side-effect free calls
	// are not optimized away.
**/
var output:GoInt = (0 : GoInt);

private final __M:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
private final __M32:GoUnTypedInt = ("4294967295" : GoUnTypedInt);
private final __M64:GoUnTypedInt = (0 : GoUnTypedInt);
private final _divZeroError:GoString = (Go.str("runtime error: integer divide by zero") : GoString);
private final _overflowError:GoString = (Go.str("runtime error: integer overflow") : GoString);

/**
	// tab contains results for all uint8 values
**/
private var _tab:GoArray<T_entry> = new GoArray<T_entry>(...[
	for (i in 0...256) ({
		_nlz:(0 : GoInt), _ntz:(0 : GoInt), _pop:(0 : GoInt)
	} : T_entry)
]);

@:follow typedef T_entry = {
	var _nlz:GoInt;
	var _ntz:GoInt;
	var _pop:GoInt;
};

@:local typedef T__struct_0 = {
	public var _x:GoUInt64;
	public var _r:GoUInt64;
};

@:local typedef T__struct_1 = {
	public var _x:GoUInt;
	public var _y:GoUInt;
	public var _c:GoUInt;
	public var _z:GoUInt;
	public var _cout:GoUInt;
};

@:local typedef T__struct_2 = {
	public var _x:GoUInt32;
	public var _y:GoUInt32;
	public var _c:GoUInt32;
	public var _z:GoUInt32;
	public var _cout:GoUInt32;
};

@:local typedef T__struct_3 = {
	public var _x:GoUInt64;
	public var _y:GoUInt64;
	public var _c:GoUInt64;
	public var _z:GoUInt64;
	public var _cout:GoUInt64;
};

@:local typedef T__struct_4 = {
	public var _x:GoUInt;
	public var _y:GoUInt;
	public var _hi:GoUInt;
	public var _lo:GoUInt;
	public var _r:GoUInt;
};

@:local typedef T__struct_5 = {
	public var _x:GoUInt32;
	public var _y:GoUInt32;
	public var _hi:GoUInt32;
	public var _lo:GoUInt32;
	public var _r:GoUInt32;
};

@:local typedef T__struct_6 = {
	public var _x:GoUInt64;
	public var _y:GoUInt64;
	public var _hi:GoUInt64;
	public var _lo:GoUInt64;
	public var _r:GoUInt64;
};

@:local typedef T__struct_7 = {
	public var _hi:GoUInt64;
	public var _lo:GoUInt64;
	public var _y:GoUInt64;
	public var _rem:GoUInt64;
};

function testUintSize(_t:stdgo.testing.Testing.T):Void {
	var _x:GoUInt = (0 : GoUInt);
	{
		var _want:GoUIntptr = (32 : GoUIntptr);
		if ((32 : GoUIntptr) != _want) {
			_t.fatalf((Go.str("UintSize = %d; want %d") : GoString), Go.toInterface((32 : GoInt)), Go.toInterface(_want));
		};
	};
}

function testLeadingZeros(_t:stdgo.testing.Testing.T):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			var _nlz:GoInt = _tab[_i]._nlz;
			{
				var _k:GoInt = (0 : GoInt);
				Go.cfor(_k < (56:GoInt), _k++, {
					var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
					if (_x <= (255 : GoUInt64)) {
						var _got:GoInt = leadingZeros8((_x : GoUInt8));
						var _want:GoInt = (_nlz - _k) + (0 : GoInt);
						if (_x == (0 : GoUInt64)) {
							_want = (8 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("LeadingZeros8(%#02x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
					};
					if (_x <= (65535 : GoUInt64)) {
						var _got:GoInt = leadingZeros16((_x : GoUInt16));
						var _want:GoInt = (_nlz - _k) + (8 : GoInt);
						if (_x == (0 : GoUInt64)) {
							_want = (16 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("LeadingZeros16(%#04x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
					};
					if (_x <= ("4294967295" : GoUInt64)) {
						var _got:GoInt = leadingZeros32((_x : GoUInt32));
						var _want:GoInt = (_nlz - _k) + (24 : GoInt);
						if (_x == (0 : GoUInt64)) {
							_want = (32 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("LeadingZeros32(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
						if (true) {
							_got = leadingZeros((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("LeadingZeros(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
									Go.toInterface(_want));
							};
						};
					};
					if (_x <= ("18446744073709551615" : GoUInt64)) {
						var _got:GoInt = leadingZeros64((_x : GoUInt64));
						var _want:GoInt = (_nlz - _k) + (56 : GoInt);
						if (_x == (0 : GoUInt64)) {
							_want = (64 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("LeadingZeros64(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
						if (false) {
							_got = leadingZeros((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("LeadingZeros(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
									Go.toInterface(_want));
							};
						};
					};
				});
			};
		});
	};
}

function benchmarkLeadingZeros(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (leadingZeros((input : GoUInt) >> ((_i : GoUInt) % (32 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkLeadingZeros8(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (leadingZeros8((input : GoUInt8) >> ((_i : GoUInt) % (8 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkLeadingZeros16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (leadingZeros16((input : GoUInt16) >> ((_i : GoUInt) % (16 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkLeadingZeros32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (leadingZeros32((input : GoUInt32) >> ((_i : GoUInt) % (32 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkLeadingZeros64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (leadingZeros64((input : GoUInt64) >> ((_i : GoUInt) % (64 : GoUInt))));
		});
	};
	output = _s;
}

function testTrailingZeros(_t:stdgo.testing.Testing.T):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			var _ntz:GoInt = _tab[_i]._ntz;
			{
				var _k:GoInt = (0 : GoInt);
				Go.cfor(_k < (56:GoInt), _k++, {
					var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
					var _want:GoInt = _ntz + _k;
					if (_x <= (255 : GoUInt64)) {
						var _got:GoInt = trailingZeros8((_x : GoUInt8));
						if (_x == (0 : GoUInt64)) {
							_want = (8 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("TrailingZeros8(%#02x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
					};
					if (_x <= (65535 : GoUInt64)) {
						var _got:GoInt = trailingZeros16((_x : GoUInt16));
						if (_x == (0 : GoUInt64)) {
							_want = (16 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("TrailingZeros16(%#04x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
					};
					if (_x <= ("4294967295" : GoUInt64)) {
						var _got:GoInt = trailingZeros32((_x : GoUInt32));
						if (_x == (0 : GoUInt64)) {
							_want = (32 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("TrailingZeros32(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
						if (true) {
							_got = trailingZeros((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("TrailingZeros(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
									Go.toInterface(_want));
							};
						};
					};
					if (_x <= ("18446744073709551615" : GoUInt64)) {
						var _got:GoInt = trailingZeros64((_x : GoUInt64));
						if (_x == (0 : GoUInt64)) {
							_want = (64 : GoInt);
						};
						if (_got != _want) {
							_t.fatalf((Go.str("TrailingZeros64(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
								Go.toInterface(_want));
						};
						if (false) {
							_got = trailingZeros((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("TrailingZeros(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got),
									Go.toInterface(_want));
							};
						};
					};
				});
			};
		});
	};
}

function benchmarkTrailingZeros(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (trailingZeros((input : GoUInt) << ((_i : GoUInt) % (32 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkTrailingZeros8(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (trailingZeros8((input : GoUInt8) << ((_i : GoUInt) % (8 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkTrailingZeros16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (trailingZeros16((input : GoUInt16) << ((_i : GoUInt) % (16 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkTrailingZeros32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (trailingZeros32((input : GoUInt32) << ((_i : GoUInt) % (32 : GoUInt))));
		});
	};
	output = _s;
}

function benchmarkTrailingZeros64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (trailingZeros64((input : GoUInt64) << ((_i : GoUInt) % (64 : GoUInt))));
		});
	};
	output = _s;
}

function testOnesCount(_t:stdgo.testing.Testing.T):Void {
	var _x:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i <= (64 : GoInt), _i++, {
			_testOnesCount(_t, _x, _i);
			_x = (_x << (1 : GoUnTypedInt)) | (1 : GoUInt64);
		});
	};
	{
		var _i:GoInt = (64 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_testOnesCount(_t, _x, _i);
			_x = _x << (1 : GoUnTypedInt);
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			{
				var _k:GoInt = (0 : GoInt);
				Go.cfor(_k < (56:GoInt), _k++, {
					_testOnesCount(_t, (_i : GoUInt64) << (_k : GoUInt), _tab[_i]._pop);
				});
			};
		});
	};
}

function _testOnesCount(_t:stdgo.testing.Testing.T, _x:GoUInt64, _want:GoInt):Void {
	if (_x <= (255 : GoUInt64)) {
		var _got:GoInt = onesCount8((_x : GoUInt8));
		if (_got != _want) {
			_t.fatalf((Go.str("OnesCount8(%#02x) == %d; want %d") : GoString), Go.toInterface((_x : GoUInt8)), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (_x <= (65535 : GoUInt64)) {
		var _got:GoInt = onesCount16((_x : GoUInt16));
		if (_got != _want) {
			_t.fatalf((Go.str("OnesCount16(%#04x) == %d; want %d") : GoString), Go.toInterface((_x : GoUInt16)), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	if (_x <= ("4294967295" : GoUInt64)) {
		var _got:GoInt = onesCount32((_x : GoUInt32));
		if (_got != _want) {
			_t.fatalf((Go.str("OnesCount32(%#08x) == %d; want %d") : GoString), Go.toInterface((_x : GoUInt32)), Go.toInterface(_got), Go.toInterface(_want));
		};
		if (true) {
			_got = onesCount((_x : GoUInt));
			if (_got != _want) {
				_t.fatalf((Go.str("OnesCount(%#08x) == %d; want %d") : GoString), Go.toInterface((_x : GoUInt32)), Go.toInterface(_got),
					Go.toInterface(_want));
			};
		};
	};
	if (_x <= ("18446744073709551615" : GoUInt64)) {
		var _got:GoInt = onesCount64((_x : GoUInt64));
		if (_got != _want) {
			_t.fatalf((Go.str("OnesCount64(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
		};
		if (false) {
			_got = onesCount((_x : GoUInt));
			if (_got != _want) {
				_t.fatalf((Go.str("OnesCount(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
			};
		};
	};
}

function benchmarkOnesCount(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (onesCount((input : GoUInt)));
		});
	};
	output = _s;
}

function benchmarkOnesCount8(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (onesCount8((input : GoUInt8)));
		});
	};
	output = _s;
}

function benchmarkOnesCount16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (onesCount16((input : GoUInt16)));
		});
	};
	output = _s;
}

function benchmarkOnesCount32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (onesCount32((input : GoUInt32)));
		});
	};
	output = _s;
}

function benchmarkOnesCount64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (onesCount64((input : GoUInt64)));
		});
	};
	output = _s;
}

function testRotateLeft(_t:stdgo.testing.Testing.T):Void {
	var _m:GoUInt64 = ("285870213051353865" : GoUInt64);
	{
		var _k:GoUInt = (0 : GoUInt);
		Go.cfor(_k < (128:GoUInt), _k++, {
			var _x8:GoUInt8 = (_m : GoUInt8);
			var _got8:GoUInt8 = rotateLeft8(_x8, (_k : GoInt));
			var _want8:GoUInt8 = (_x8 << (_k & (7 : GoUInt))) | (_x8 >> ((8 : GoUInt) - (_k & (7 : GoUInt))));
			if (_got8 != _want8) {
				_t.fatalf((Go.str("RotateLeft8(%#02x, %d) == %#02x; want %#02x") : GoString), Go.toInterface(_x8), Go.toInterface(_k), Go.toInterface(_got8),
					Go.toInterface(_want8));
			};
			_got8 = rotateLeft8(_want8, -(_k : GoInt));
			if (_got8 != _x8) {
				_t.fatalf((Go.str("RotateLeft8(%#02x, -%d) == %#02x; want %#02x") : GoString), Go.toInterface(_want8), Go.toInterface(_k),
					Go.toInterface(_got8), Go.toInterface(_x8));
			};
			var _x16:GoUInt16 = (_m : GoUInt16);
			var _got16:GoUInt16 = rotateLeft16(_x16, (_k : GoInt));
			var _want16:GoUInt16 = (_x16 << (_k & (15 : GoUInt))) | (_x16 >> ((16 : GoUInt) - (_k & (15 : GoUInt))));
			if (_got16 != _want16) {
				_t.fatalf((Go.str("RotateLeft16(%#04x, %d) == %#04x; want %#04x") : GoString), Go.toInterface(_x16), Go.toInterface(_k),
					Go.toInterface(_got16), Go.toInterface(_want16));
			};
			_got16 = rotateLeft16(_want16, -(_k : GoInt));
			if (_got16 != _x16) {
				_t.fatalf((Go.str("RotateLeft16(%#04x, -%d) == %#04x; want %#04x") : GoString), Go.toInterface(_want16), Go.toInterface(_k),
					Go.toInterface(_got16), Go.toInterface(_x16));
			};
			var _x32:GoUInt32 = (_m : GoUInt32);
			var _got32:GoUInt32 = rotateLeft32(_x32, (_k : GoInt));
			var _want32:GoUInt32 = (_x32 << (_k & (31 : GoUInt))) | (_x32 >> ((32 : GoUInt) - (_k & (31 : GoUInt))));
			if (_got32 != _want32) {
				_t.fatalf((Go.str("RotateLeft32(%#08x, %d) == %#08x; want %#08x") : GoString), Go.toInterface(_x32), Go.toInterface(_k),
					Go.toInterface(_got32), Go.toInterface(_want32));
			};
			_got32 = rotateLeft32(_want32, -(_k : GoInt));
			if (_got32 != _x32) {
				_t.fatalf((Go.str("RotateLeft32(%#08x, -%d) == %#08x; want %#08x") : GoString), Go.toInterface(_want32), Go.toInterface(_k),
					Go.toInterface(_got32), Go.toInterface(_x32));
			};
			if (true) {
				var _x:GoUInt = (_m : GoUInt);
				var _got:GoUInt = rotateLeft(_x, (_k : GoInt));
				var _want:GoUInt = (_x << (_k & (31 : GoUInt))) | (_x >> ((32 : GoUInt) - (_k & (31 : GoUInt))));
				if (_got != _want) {
					_t.fatalf((Go.str("RotateLeft(%#08x, %d) == %#08x; want %#08x") : GoString), Go.toInterface(_x), Go.toInterface(_k), Go.toInterface(_got),
						Go.toInterface(_want));
				};
				_got = rotateLeft(_want, -(_k : GoInt));
				if (_got != _x) {
					_t.fatalf((Go.str("RotateLeft(%#08x, -%d) == %#08x; want %#08x") : GoString), Go.toInterface(_want), Go.toInterface(_k),
						Go.toInterface(_got), Go.toInterface(_x));
				};
			};
			var _x64:GoUInt64 = (_m : GoUInt64);
			var _got64:GoUInt64 = rotateLeft64(_x64, (_k : GoInt));
			var _want64:GoUInt64 = (_x64 << (_k & (63 : GoUInt))) | (_x64 >> ((64 : GoUInt) - (_k & (63 : GoUInt))));
			if (_got64 != _want64) {
				_t.fatalf((Go.str("RotateLeft64(%#016x, %d) == %#016x; want %#016x") : GoString), Go.toInterface(_x64), Go.toInterface(_k),
					Go.toInterface(_got64), Go.toInterface(_want64));
			};
			_got64 = rotateLeft64(_want64, -(_k : GoInt));
			if (_got64 != _x64) {
				_t.fatalf((Go.str("RotateLeft64(%#016x, -%d) == %#016x; want %#016x") : GoString), Go.toInterface(_want64), Go.toInterface(_k),
					Go.toInterface(_got64), Go.toInterface(_x64));
			};
			if (false) {
				var _x:GoUInt = (_m : GoUInt);
				var _got:GoUInt = rotateLeft(_x, (_k : GoInt));
				var _want:GoUInt = (_x << (_k & (63 : GoUInt))) | (_x >> ((64 : GoUInt) - (_k & (63 : GoUInt))));
				if (_got != _want) {
					_t.fatalf((Go.str("RotateLeft(%#016x, %d) == %#016x; want %#016x") : GoString), Go.toInterface(_x), Go.toInterface(_k),
						Go.toInterface(_got), Go.toInterface(_want));
				};
				_got = rotateLeft(_want, -(_k : GoInt));
				if (_got != _x) {
					_t.fatalf((Go.str("RotateLeft(%#08x, -%d) == %#08x; want %#08x") : GoString), Go.toInterface(_want), Go.toInterface(_k),
						Go.toInterface(_got), Go.toInterface(_x));
				};
			};
		});
	};
}

function benchmarkRotateLeft(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (rotateLeft((input : GoUInt), _i));
		});
	};
	output = (_s : GoInt);
}

function benchmarkRotateLeft8(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt8 = (0 : GoUInt8);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (rotateLeft8((input : GoUInt8), _i));
		});
	};
	output = (_s : GoInt);
}

function benchmarkRotateLeft16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt16 = (0 : GoUInt16);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (rotateLeft16((input : GoUInt16), _i));
		});
	};
	output = (_s : GoInt);
}

function benchmarkRotateLeft32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (rotateLeft32((input : GoUInt32), _i));
		});
	};
	output = (_s : GoInt);
}

function benchmarkRotateLeft64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (rotateLeft64((input : GoUInt64), _i));
		});
	};
	output = (_s : GoInt);
}

function testReverse(_t:stdgo.testing.Testing.T):Void {
	{
		var _i:GoUInt = (0 : GoUInt);
		Go.cfor(_i < (64:GoUInt), _i++, {
			_testReverse(_t, (1 : GoUInt64) << _i, (1 : GoUInt64) << ((63 : GoUInt) - _i));
		});
	};
	for (_0 => _test in (new Slice<T__struct_0>(0, 0, ({_x: (0 : GoUInt64), _r: (0 : GoUInt64)} : T__struct_0),
		({_x: (1 : GoUInt64), _r: ("9223372036854775808" : GoUInt64)} : T__struct_0),
		({_x: (2 : GoUInt64), _r: ("4611686018427387904" : GoUInt64)} : T__struct_0),
		({_x: (3 : GoUInt64), _r: ("13835058055282163712" : GoUInt64)} : T__struct_0),
		({_x: (4 : GoUInt64), _r: ("2305843009213693952" : GoUInt64)} : T__struct_0),
		({_x: (5 : GoUInt64), _r: ("11529215046068469760" : GoUInt64)} : T__struct_0),
		({_x: (6 : GoUInt64), _r: ("6917529027641081856" : GoUInt64)} : T__struct_0),
		({_x: (7 : GoUInt64), _r: ("16140901064495857664" : GoUInt64)} : T__struct_0),
		({_x: (8 : GoUInt64), _r: ("1152921504606846976" : GoUInt64)} : T__struct_0),
		({_x: (9 : GoUInt64), _r: ("10376293541461622784" : GoUInt64)} : T__struct_0),
		({_x: (10 : GoUInt64), _r: ("5764607523034234880" : GoUInt64)} : T__struct_0),
		({_x: (11 : GoUInt64), _r: ("14987979559889010688" : GoUInt64)} : T__struct_0),
		({_x: (12 : GoUInt64), _r: ("3458764513820540928" : GoUInt64)} : T__struct_0),
		({_x: (13 : GoUInt64), _r: ("12682136550675316736" : GoUInt64)} : T__struct_0),
		({_x: (14 : GoUInt64), _r: ("8070450532247928832" : GoUInt64)} : T__struct_0),
		({_x: (15 : GoUInt64), _r: ("17293822569102704640" : GoUInt64)} : T__struct_0),
		({_x: (90727559 : GoUInt64), _r: ("16223679584099368960" : GoUInt64)} : T__struct_0),
		({_x: ("81985529216486895" : GoUInt64), _r: ("17848844570815808640" : GoUInt64)} : T__struct_0)) : Slice<T__struct_0>)) {
		_testReverse(_t, _test._x, _test._r);
		_testReverse(_t, _test._r, _test._x);
	};
}

function _testReverse(_t:stdgo.testing.Testing.T, _x64:GoUInt64, _want64:GoUInt64):Void {
	var _x8:GoUInt8 = (_x64 : GoUInt8);
	var _got8:GoUInt8 = reverse8(_x8);
	var _want8:GoUInt8 = (_want64 >> (56 : GoUnTypedInt) : GoUInt8);
	if (_got8 != _want8) {
		_t.fatalf((Go.str("Reverse8(%#02x) == %#02x; want %#02x") : GoString), Go.toInterface(_x8), Go.toInterface(_got8), Go.toInterface(_want8));
	};
	var _x16:GoUInt16 = (_x64 : GoUInt16);
	var _got16:GoUInt16 = reverse16(_x16);
	var _want16:GoUInt16 = (_want64 >> (48 : GoUnTypedInt) : GoUInt16);
	if (_got16 != _want16) {
		_t.fatalf((Go.str("Reverse16(%#04x) == %#04x; want %#04x") : GoString), Go.toInterface(_x16), Go.toInterface(_got16), Go.toInterface(_want16));
	};
	var _x32:GoUInt32 = (_x64 : GoUInt32);
	var _got32:GoUInt32 = reverse32(_x32);
	var _want32:GoUInt32 = (_want64 >> (32 : GoUnTypedInt) : GoUInt32);
	if (_got32 != _want32) {
		_t.fatalf((Go.str("Reverse32(%#08x) == %#08x; want %#08x") : GoString), Go.toInterface(_x32), Go.toInterface(_got32), Go.toInterface(_want32));
	};
	if (true) {
		var _x:GoUInt = (_x32 : GoUInt);
		var _got:GoUInt = reverse(_x);
		var _want:GoUInt = (_want32 : GoUInt);
		if (_got != _want) {
			_t.fatalf((Go.str("Reverse(%#08x) == %#08x; want %#08x") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	var _got64:GoUInt64 = reverse64(_x64);
	if (_got64 != _want64) {
		_t.fatalf((Go.str("Reverse64(%#016x) == %#016x; want %#016x") : GoString), Go.toInterface(_x64), Go.toInterface(_got64), Go.toInterface(_want64));
	};
	if (false) {
		var _x:GoUInt = (_x64 : GoUInt);
		var _got:GoUInt = reverse(_x);
		var _want:GoUInt = (_want64 : GoUInt);
		if (_got != _want) {
			_t.fatalf((Go.str("Reverse(%#08x) == %#016x; want %#016x") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function benchmarkReverse(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverse((_i : GoUInt)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverse8(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt8 = (0 : GoUInt8);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverse8((_i : GoUInt8)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverse16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt16 = (0 : GoUInt16);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverse16((_i : GoUInt16)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverse32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverse32((_i : GoUInt32)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverse64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverse64((_i : GoUInt64)));
		});
	};
	output = (_s : GoInt);
}

function testReverseBytes(_t:stdgo.testing.Testing.T):Void {
	for (_0 => _test in (new Slice<T__struct_0>(0, 0, ({_x: (0 : GoUInt64), _r: (0 : GoUInt64)} : T__struct_0),
		({_x: (1 : GoUInt64), _r: ("72057594037927936" : GoUInt64)} : T__struct_0),
		({_x: (291 : GoUInt64), _r: ("2522297266304188416" : GoUInt64)} : T__struct_0),
		({_x: (74565 : GoUInt64), _r: ("4981826712313528320" : GoUInt64)} : T__struct_0),
		({_x: (19088743 : GoUInt64), _r: ("7441392446501552128" : GoUInt64)} : T__struct_0),
		({_x: ("4886718345" : GoUInt64), _r: ("9900958322440273920" : GoUInt64)} : T__struct_0),
		({_x: ("1250999896491" : GoUInt64), _r: ("12360524198932709376" : GoUInt64)} : T__struct_0),
		({_x: ("320255973501901" : GoUInt64), _r: ("14820090075427307776" : GoUInt64)} : T__struct_0),
		({_x: ("81985529216486895" : GoUInt64), _r: ("17279655951921914625" : GoUInt64)} : T__struct_0)) : Slice<T__struct_0>)) {
		_testReverseBytes(_t, _test._x, _test._r);
		_testReverseBytes(_t, _test._r, _test._x);
	};
}

function _testReverseBytes(_t:stdgo.testing.Testing.T, _x64:GoUInt64, _want64:GoUInt64):Void {
	var _x16:GoUInt16 = (_x64 : GoUInt16);
	var _got16:GoUInt16 = reverseBytes16(_x16);
	var _want16:GoUInt16 = (_want64 >> (48 : GoUnTypedInt) : GoUInt16);
	if (_got16 != _want16) {
		_t.fatalf((Go.str("ReverseBytes16(%#04x) == %#04x; want %#04x") : GoString), Go.toInterface(_x16), Go.toInterface(_got16), Go.toInterface(_want16));
	};
	var _x32:GoUInt32 = (_x64 : GoUInt32);
	var _got32:GoUInt32 = reverseBytes32(_x32);
	var _want32:GoUInt32 = (_want64 >> (32 : GoUnTypedInt) : GoUInt32);
	if (_got32 != _want32) {
		_t.fatalf((Go.str("ReverseBytes32(%#08x) == %#08x; want %#08x") : GoString), Go.toInterface(_x32), Go.toInterface(_got32), Go.toInterface(_want32));
	};
	if (true) {
		var _x:GoUInt = (_x32 : GoUInt);
		var _got:GoUInt = reverseBytes(_x);
		var _want:GoUInt = (_want32 : GoUInt);
		if (_got != _want) {
			_t.fatalf((Go.str("ReverseBytes(%#08x) == %#08x; want %#08x") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
	var _got64:GoUInt64 = reverseBytes64(_x64);
	if (_got64 != _want64) {
		_t.fatalf((Go.str("ReverseBytes64(%#016x) == %#016x; want %#016x") : GoString), Go.toInterface(_x64), Go.toInterface(_got64), Go.toInterface(_want64));
	};
	if (false) {
		var _x:GoUInt = (_x64 : GoUInt);
		var _got:GoUInt = reverseBytes(_x);
		var _want:GoUInt = (_want64 : GoUInt);
		if (_got != _want) {
			_t.fatalf((Go.str("ReverseBytes(%#016x) == %#016x; want %#016x") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
		};
	};
}

function benchmarkReverseBytes(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverseBytes((_i : GoUInt)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverseBytes16(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt16 = (0 : GoUInt16);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverseBytes16((_i : GoUInt16)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverseBytes32(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverseBytes32((_i : GoUInt32)));
		});
	};
	output = (_s : GoInt);
}

function benchmarkReverseBytes64(_b:stdgo.testing.Testing.B):Void {
	var _s:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			_s = _s + (reverseBytes64((_i : GoUInt64)));
		});
	};
	output = (_s : GoInt);
}

function testLen(_t:stdgo.testing.Testing.T):Void {
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (256:GoInt), _i++, {
			var _len:GoInt = (8 : GoInt) - _tab[_i]._nlz;
			{
				var _k:GoInt = (0 : GoInt);
				Go.cfor(_k < (56:GoInt), _k++, {
					var _x:GoUInt64 = (_i : GoUInt64) << (_k : GoUInt);
					var _want:GoInt = (0 : GoInt);
					if (_x != (0 : GoUInt64)) {
						_want = _len + _k;
					};
					if (_x <= (255 : GoUInt64)) {
						var _got:GoInt = len8((_x : GoUInt8));
						if (_got != _want) {
							_t.fatalf((Go.str("Len8(%#02x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
					if (_x <= (65535 : GoUInt64)) {
						var _got:GoInt = len16((_x : GoUInt16));
						if (_got != _want) {
							_t.fatalf((Go.str("Len16(%#04x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
						};
					};
					if (_x <= ("4294967295" : GoUInt64)) {
						var _got:GoInt = len32((_x : GoUInt32));
						if (_got != _want) {
							_t.fatalf((Go.str("Len32(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
						};
						if (true) {
							var _got:GoInt = len((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("Len(%#08x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
							};
						};
					};
					if (_x <= ("18446744073709551615" : GoUInt64)) {
						var _got:GoInt = len64((_x : GoUInt64));
						if (_got != _want) {
							_t.fatalf((Go.str("Len64(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
						};
						if (false) {
							var _got:GoInt = len((_x : GoUInt));
							if (_got != _want) {
								_t.fatalf((Go.str("Len(%#016x) == %d; want %d") : GoString), Go.toInterface(_x), Go.toInterface(_got), Go.toInterface(_want));
							};
						};
					};
				});
			};
		});
	};
}

function testAddSubUint(_t:stdgo.testing.Testing.T):Void {
	var _test:(GoString, (GoUInt, GoUInt, GoUInt) -> {
		var _0:GoUInt;
		var _1:GoUInt;
	}, GoUInt, GoUInt, GoUInt, GoUInt,
		GoUInt) -> Void = function(_msg:GoString, _f:(_x:GoUInt, _y:GoUInt, _c:GoUInt) -> {
			var _0:GoUInt;
			var _1:GoUInt;
		}, _x:GoUInt, _y:GoUInt, _c:GoUInt, _z:GoUInt, _cout:GoUInt):Void {
			var __tmp__ = _f(_x, _y, _c), _z1:GoUInt = __tmp__._0, _cout1:GoUInt = __tmp__._1;
			if ((_z1 != _z) || (_cout1 != _cout)) {
				_t.errorf((Go.str("%s: got z:cout = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1),
					Go.toInterface(_z), Go.toInterface(_cout));
			};
		};
	for (_0 => _a in (new Slice<T__struct_1>(0, 0, ({
		_x: (0 : GoUInt),
		_y: (0 : GoUInt),
		_c: (0 : GoUInt),
		_z: (0 : GoUInt),
		_cout: (0 : GoUInt)
	} : T__struct_1), ({
		_x: (0 : GoUInt),
		_y: (1 : GoUInt),
		_c: (0 : GoUInt),
		_z: (1 : GoUInt),
		_cout: (0 : GoUInt)
		} : T__struct_1), ({
		_x: (0 : GoUInt),
		_y: (0 : GoUInt),
		_c: (1 : GoUInt),
		_z: (1 : GoUInt),
		_cout: (0 : GoUInt)
		} : T__struct_1), ({
		_x: (0 : GoUInt),
		_y: (1 : GoUInt),
		_c: (1 : GoUInt),
		_z: (2 : GoUInt),
		_cout: (0 : GoUInt)
		} : T__struct_1), ({
		_x: (12345 : GoUInt),
		_y: (67890 : GoUInt),
		_c: (0 : GoUInt),
		_z: (80235 : GoUInt),
		_cout: (0 : GoUInt)
		} : T__struct_1), ({
		_x: (12345 : GoUInt),
		_y: (67890 : GoUInt),
		_c: (1 : GoUInt),
		_z: (80236 : GoUInt),
		_cout: (0 : GoUInt)
		} : T__struct_1), ({
		_x: ("4294967295" : GoUInt),
		_y: (1 : GoUInt),
		_c: (0 : GoUInt),
		_z: (0 : GoUInt),
		_cout: (1 : GoUInt)
		} : T__struct_1), ({
		_x: ("4294967295" : GoUInt),
		_y: (0 : GoUInt),
		_c: (1 : GoUInt),
		_z: (0 : GoUInt),
		_cout: (1 : GoUInt)
		} : T__struct_1), ({
		_x: ("4294967295" : GoUInt),
		_y: (1 : GoUInt),
		_c: (1 : GoUInt),
		_z: (1 : GoUInt),
		_cout: (1 : GoUInt)
		} : T__struct_1), ({
		_x: ("4294967295" : GoUInt),
		_y: ("4294967295" : GoUInt),
		_c: (0 : GoUInt),
		_z: ("4294967294" : GoUInt),
		_cout: (1 : GoUInt)
		} : T__struct_1), ({
		_x: ("4294967295" : GoUInt),
		_y: ("4294967295" : GoUInt),
		_c: (1 : GoUInt),
		_z: ("4294967295" : GoUInt),
		_cout: (1 : GoUInt)
		} : T__struct_1)) : Slice<T__struct_1>)) {
		_test((Go.str("Add") : GoString), add, _a._x, _a._y, _a._c, _a._z, _a._cout);
		_test((Go.str("Add symmetric") : GoString), add, _a._y, _a._x, _a._c, _a._z, _a._cout);
		_test((Go.str("Sub") : GoString), sub, _a._z, _a._x, _a._c, _a._y, _a._cout);
		_test((Go.str("Sub symmetric") : GoString), sub, _a._z, _a._y, _a._c, _a._x, _a._cout);
		_test((Go.str("Add intrinsic") : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return add(_x, _y, _c);
		}, _a._x, _a._y, _a._c, _a._z, _a._cout);
		_test((Go.str("Add intrinsic symmetric") : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return add(_x, _y, _c);
		}, _a._y, _a._x, _a._c, _a._z, _a._cout);
		_test((Go.str("Sub intrinsic") : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return sub(_x, _y, _c);
		}, _a._z, _a._x, _a._c, _a._y, _a._cout);
		_test((Go.str("Sub intrinsic symmetric") : GoString), function(_x:GoUInt, _y:GoUInt, _c:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return sub(_x, _y, _c);
		}, _a._z, _a._y, _a._c, _a._x, _a._cout);
	};
}

function testAddSubUint32(_t:stdgo.testing.Testing.T):Void {
	var _test:(GoString, (GoUInt32, GoUInt32, GoUInt32) -> {
		var _0:GoUInt32;
		var _1:GoUInt32;
	}, GoUInt32, GoUInt32,
		GoUInt32, GoUInt32, GoUInt32) -> Void = function(_msg:GoString, _f:(_x:GoUInt32, _y:GoUInt32, _c:GoUInt32) -> {
			var _0:GoUInt32;
			var _1:GoUInt32;
		}, _x:GoUInt32, _y:GoUInt32, _c:GoUInt32, _z:GoUInt32, _cout:GoUInt32):Void {
			var __tmp__ = _f(_x, _y, _c), _z1:GoUInt32 = __tmp__._0, _cout1:GoUInt32 = __tmp__._1;
			if ((_z1 != _z) || (_cout1 != _cout)) {
				_t.errorf((Go.str("%s: got z:cout = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1),
					Go.toInterface(_z), Go.toInterface(_cout));
			};
		};
	for (_0 => _a in (new Slice<T__struct_2>(0, 0, ({
		_x: (0 : GoUInt32),
		_y: (0 : GoUInt32),
		_c: (0 : GoUInt32),
		_z: (0 : GoUInt32),
		_cout: (0 : GoUInt32)
	} : T__struct_2), ({
		_x: (0 : GoUInt32),
		_y: (1 : GoUInt32),
		_c: (0 : GoUInt32),
		_z: (1 : GoUInt32),
		_cout: (0 : GoUInt32)
		} : T__struct_2), ({
		_x: (0 : GoUInt32),
		_y: (0 : GoUInt32),
		_c: (1 : GoUInt32),
		_z: (1 : GoUInt32),
		_cout: (0 : GoUInt32)
		} : T__struct_2), ({
		_x: (0 : GoUInt32),
		_y: (1 : GoUInt32),
		_c: (1 : GoUInt32),
		_z: (2 : GoUInt32),
		_cout: (0 : GoUInt32)
		} : T__struct_2), ({
		_x: (12345 : GoUInt32),
		_y: (67890 : GoUInt32),
		_c: (0 : GoUInt32),
		_z: (80235 : GoUInt32),
		_cout: (0 : GoUInt32)
		} : T__struct_2), ({
		_x: (12345 : GoUInt32),
		_y: (67890 : GoUInt32),
		_c: (1 : GoUInt32),
		_z: (80236 : GoUInt32),
		_cout: (0 : GoUInt32)
		} : T__struct_2), ({
		_x: ("4294967295" : GoUInt32),
		_y: (1 : GoUInt32),
		_c: (0 : GoUInt32),
		_z: (0 : GoUInt32),
		_cout: (1 : GoUInt32)
		} : T__struct_2), ({
		_x: ("4294967295" : GoUInt32),
		_y: (0 : GoUInt32),
		_c: (1 : GoUInt32),
		_z: (0 : GoUInt32),
		_cout: (1 : GoUInt32)
		} : T__struct_2), ({
		_x: ("4294967295" : GoUInt32),
		_y: (1 : GoUInt32),
		_c: (1 : GoUInt32),
		_z: (1 : GoUInt32),
		_cout: (1 : GoUInt32)
		} : T__struct_2), ({
		_x: ("4294967295" : GoUInt32),
		_y: ("4294967295" : GoUInt32),
		_c: (0 : GoUInt32),
		_z: ("4294967294" : GoUInt32),
		_cout: (1 : GoUInt32)
		} : T__struct_2), ({
		_x: ("4294967295" : GoUInt32),
		_y: ("4294967295" : GoUInt32),
		_c: (1 : GoUInt32),
		_z: ("4294967295" : GoUInt32),
		_cout: (1 : GoUInt32)
		} : T__struct_2)) : Slice<T__struct_2>)) {
		_test((Go.str("Add32") : GoString), add32, _a._x, _a._y, _a._c, _a._z, _a._cout);
		_test((Go.str("Add32 symmetric") : GoString), add32, _a._y, _a._x, _a._c, _a._z, _a._cout);
		_test((Go.str("Sub32") : GoString), sub32, _a._z, _a._x, _a._c, _a._y, _a._cout);
		_test((Go.str("Sub32 symmetric") : GoString), sub32, _a._z, _a._y, _a._c, _a._x, _a._cout);
	};
}

function testAddSubUint64(_t:stdgo.testing.Testing.T):Void {
	var _test:(GoString, (GoUInt64, GoUInt64, GoUInt64) -> {
		var _0:GoUInt64;
		var _1:GoUInt64;
	}, GoUInt64, GoUInt64,
		GoUInt64, GoUInt64, GoUInt64) -> Void = function(_msg:GoString, _f:(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64) -> {
			var _0:GoUInt64;
			var _1:GoUInt64;
		}, _x:GoUInt64, _y:GoUInt64, _c:GoUInt64, _z:GoUInt64, _cout:GoUInt64):Void {
			var __tmp__ = _f(_x, _y, _c), _z1:GoUInt64 = __tmp__._0, _cout1:GoUInt64 = __tmp__._1;
			if ((_z1 != _z) || (_cout1 != _cout)) {
				_t.errorf((Go.str("%s: got z:cout = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_z1), Go.toInterface(_cout1),
					Go.toInterface(_z), Go.toInterface(_cout));
			};
		};
	for (_0 => _a in (new Slice<T__struct_3>(0, 0, ({
		_x: (0 : GoUInt64),
		_y: (0 : GoUInt64),
		_c: (0 : GoUInt64),
		_z: (0 : GoUInt64),
		_cout: (0 : GoUInt64)
	} : T__struct_3), ({
		_x: (0 : GoUInt64),
		_y: (1 : GoUInt64),
		_c: (0 : GoUInt64),
		_z: (1 : GoUInt64),
		_cout: (0 : GoUInt64)
		} : T__struct_3), ({
		_x: (0 : GoUInt64),
		_y: (0 : GoUInt64),
		_c: (1 : GoUInt64),
		_z: (1 : GoUInt64),
		_cout: (0 : GoUInt64)
		} : T__struct_3), ({
		_x: (0 : GoUInt64),
		_y: (1 : GoUInt64),
		_c: (1 : GoUInt64),
		_z: (2 : GoUInt64),
		_cout: (0 : GoUInt64)
		} : T__struct_3), ({
		_x: (12345 : GoUInt64),
		_y: (67890 : GoUInt64),
		_c: (0 : GoUInt64),
		_z: (80235 : GoUInt64),
		_cout: (0 : GoUInt64)
		} : T__struct_3), ({
		_x: (12345 : GoUInt64),
		_y: (67890 : GoUInt64),
		_c: (1 : GoUInt64),
		_z: (80236 : GoUInt64),
		_cout: (0 : GoUInt64)
		} : T__struct_3), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: (1 : GoUInt64),
		_c: (0 : GoUInt64),
		_z: (0 : GoUInt64),
		_cout: (1 : GoUInt64)
		} : T__struct_3), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: (0 : GoUInt64),
		_c: (1 : GoUInt64),
		_z: (0 : GoUInt64),
		_cout: (1 : GoUInt64)
		} : T__struct_3), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: (1 : GoUInt64),
		_c: (1 : GoUInt64),
		_z: (1 : GoUInt64),
		_cout: (1 : GoUInt64)
		} : T__struct_3), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: ("18446744073709551615" : GoUInt64),
		_c: (0 : GoUInt64),
		_z: ("18446744073709551614" : GoUInt64),
		_cout: (1 : GoUInt64)
		} : T__struct_3), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: ("18446744073709551615" : GoUInt64),
		_c: (1 : GoUInt64),
		_z: ("18446744073709551615" : GoUInt64),
		_cout: (1 : GoUInt64)
		} : T__struct_3)) : Slice<T__struct_3>)) {
		_test((Go.str("Add64") : GoString), add64, _a._x, _a._y, _a._c, _a._z, _a._cout);
		_test((Go.str("Add64 symmetric") : GoString), add64, _a._y, _a._x, _a._c, _a._z, _a._cout);
		_test((Go.str("Sub64") : GoString), sub64, _a._z, _a._x, _a._c, _a._y, _a._cout);
		_test((Go.str("Sub64 symmetric") : GoString), sub64, _a._z, _a._y, _a._c, _a._x, _a._cout);
		_test((Go.str("Add64 intrinsic") : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return add64(_x, _y, _c);
		}, _a._x, _a._y, _a._c, _a._z, _a._cout);
		_test((Go.str("Add64 intrinsic symmetric") : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return add64(_x, _y, _c);
		}, _a._y, _a._x, _a._c, _a._z, _a._cout);
		_test((Go.str("Sub64 intrinsic") : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return sub64(_x, _y, _c);
		}, _a._z, _a._x, _a._c, _a._y, _a._cout);
		_test((Go.str("Sub64 intrinsic symmetric") : GoString), function(_x:GoUInt64, _y:GoUInt64, _c:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return sub64(_x, _y, _c);
		}, _a._z, _a._y, _a._c, _a._x, _a._cout);
	};
}

function testAdd64OverflowPanic(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<(GoUInt64, GoUInt64) -> GoUInt64>(0, 0, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = add64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c > (0 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = add64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c != (0 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = add64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c == (1 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = add64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c != (1 : GoUInt64)) {
			return _x;
		};
		throw Go.toInterface((Go.str("overflow") : GoString));
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = add64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c == (0 : GoUInt64)) {
			return _x;
		};
		throw Go.toInterface((Go.str("overflow") : GoString));
	}) : Slice<(GoUInt64, GoUInt64) -> GoUInt64>);
	for (_0 => _test in _tests) {
		var _shouldPanic:(() -> Void) -> Void = function(_f:() -> Void):Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					{
						var _err:AnyInterface = Go.toInterface(({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						}));
						if (_err == null) {
							_t.fatalf((Go.str("expected panic") : GoString));
						};
					};
				};
				a();
			});
			try {
				_f();
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		_shouldPanic(function():Void {
			_test(("18446744073709551615" : GoUInt64), (1 : GoUInt64));
		});
		_shouldPanic(function():Void {
			_test((1 : GoUInt64), ("18446744073709551615" : GoUInt64));
		});
		_shouldPanic(function():Void {
			_test(("18446744073709551615" : GoUInt64), ("18446744073709551615" : GoUInt64));
		});
		_test(("18446744073709551615" : GoUInt64), (0 : GoUInt64));
		_test((0 : GoUInt64), (0 : GoUInt64));
		_test((1 : GoUInt64), (1 : GoUInt64));
	};
}

function testSub64OverflowPanic(_t:stdgo.testing.Testing.T):Void {
	var _tests = (new Slice<(GoUInt64, GoUInt64) -> GoUInt64>(0, 0, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = sub64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c > (0 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = sub64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c != (0 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = sub64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c == (1 : GoUInt64)) {
			throw Go.toInterface((Go.str("overflow") : GoString));
		};
		return _x;
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = sub64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c != (1 : GoUInt64)) {
			return _x;
		};
		throw Go.toInterface((Go.str("overflow") : GoString));
	}, function(_a:GoUInt64, _b:GoUInt64):GoUInt64 {
		var __tmp__ = sub64(_a, _b, (0 : GoUInt64)), _x:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
		if (_c == (0 : GoUInt64)) {
			return _x;
		};
		throw Go.toInterface((Go.str("overflow") : GoString));
	}) : Slice<(GoUInt64, GoUInt64) -> GoUInt64>);
	for (_0 => _test in _tests) {
		var _shouldPanic:(() -> Void) -> Void = function(_f:() -> Void):Void {
			var __deferstack__:Array<Void->Void> = [];
			__deferstack__.unshift(() -> {
				var a = function():Void {
					{
						var _err:AnyInterface = Go.toInterface(({
							final r = Go.recover_exception;
							Go.recover_exception = null;
							r;
						}));
						if (_err == null) {
							_t.fatalf((Go.str("expected panic") : GoString));
						};
					};
				};
				a();
			});
			try {
				_f();
				for (defer in __deferstack__) {
					defer();
				};
				{
					for (defer in __deferstack__) {
						defer();
					};
					if (Go.recover_exception != null)
						throw Go.recover_exception;
					return;
				};
			} catch (__exception__) {
				if (!(__exception__.native is AnyInterfaceData))
					throw __exception__;
				Go.recover_exception = __exception__.native;
				for (defer in __deferstack__) {
					defer();
				};
				if (Go.recover_exception != null)
					throw Go.recover_exception;
				return;
			};
		};
		_shouldPanic(function():Void {
			_test((0 : GoUInt64), (1 : GoUInt64));
		});
		_shouldPanic(function():Void {
			_test((1 : GoUInt64), ("18446744073709551615" : GoUInt64));
		});
		_shouldPanic(function():Void {
			_test(("18446744073709551614" : GoUInt64), ("18446744073709551615" : GoUInt64));
		});
		_test(("18446744073709551615" : GoUInt64), (0 : GoUInt64));
		_test((0 : GoUInt64), (0 : GoUInt64));
		_test((1 : GoUInt64), (1 : GoUInt64));
	};
}

function testMulDiv(_t:stdgo.testing.Testing.T):Void {
	var _testMul:(GoString, (GoUInt, GoUInt) -> {
		var _0:GoUInt;
		var _1:GoUInt;
	}, GoUInt, GoUInt, GoUInt,
		GoUInt) -> Void = function(_msg:GoString, _f:(_x:GoUInt, _y:GoUInt) -> {
			var _0:GoUInt;
			var _1:GoUInt;
		}, _x:GoUInt, _y:GoUInt, _hi:GoUInt, _lo:GoUInt):Void {
			var __tmp__ = _f(_x, _y), _hi1:GoUInt = __tmp__._0, _lo1:GoUInt = __tmp__._1;
			if ((_hi1 != _hi) || (_lo1 != _lo)) {
				_t.errorf((Go.str("%s: got hi:lo = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1),
					Go.toInterface(_hi), Go.toInterface(_lo));
			};
		};
	var _testDiv:(GoString, (GoUInt, GoUInt, GoUInt) -> {
		var _0:GoUInt;
		var _1:GoUInt;
	}, GoUInt, GoUInt, GoUInt, GoUInt,
		GoUInt) -> Void = function(_msg:GoString, _f:(_hi:GoUInt, _lo:GoUInt, _y:GoUInt) -> {
			var _0:GoUInt;
			var _1:GoUInt;
		}, _hi:GoUInt, _lo:GoUInt, _y:GoUInt, _q:GoUInt, _r:GoUInt):Void {
			var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt = __tmp__._0, _r1:GoUInt = __tmp__._1;
			if ((_q1 != _q) || (_r1 != _r)) {
				_t.errorf((Go.str("%s: got q:r = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1),
					Go.toInterface(_q), Go.toInterface(_r));
			};
		};
	for (_0 => _a in (new Slice<T__struct_4>(0, 0, ({
		_x: ("2147483648" : GoUInt),
		_y: (2 : GoUInt),
		_hi: (1 : GoUInt),
		_lo: (0 : GoUInt),
		_r: (1 : GoUInt)
	} : T__struct_4), ({
		_x: ("4294967295" : GoUInt),
		_y: ("4294967295" : GoUInt),
		_hi: ("4294967294" : GoUInt),
		_lo: (1 : GoUInt),
		_r: (42 : GoUInt)
		} : T__struct_4)) : Slice<T__struct_4>)) {
		_testMul((Go.str("Mul") : GoString), mul, _a._x, _a._y, _a._hi, _a._lo);
		_testMul((Go.str("Mul symmetric") : GoString), mul, _a._y, _a._x, _a._hi, _a._lo);
		_testDiv((Go.str("Div") : GoString), div, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
		_testDiv((Go.str("Div symmetric") : GoString), div, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
		_testMul((Go.str("Mul intrinsic") : GoString), function(_x:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return mul(_x, _y);
		}, _a._x, _a._y, _a._hi, _a._lo);
		_testMul((Go.str("Mul intrinsic symmetric") : GoString), function(_x:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return mul(_x, _y);
		}, _a._y, _a._x, _a._hi, _a._lo);
		_testDiv((Go.str("Div intrinsic") : GoString), function(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return div(_hi, _lo, _y);
		}, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
		_testDiv((Go.str("Div intrinsic symmetric") : GoString), function(_hi:GoUInt, _lo:GoUInt, _y:GoUInt):{var _0:GoUInt; var _1:GoUInt;} {
			return div(_hi, _lo, _y);
		}, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
	};
}

function testMulDiv32(_t:stdgo.testing.Testing.T):Void {
	var _testMul:(GoString, (GoUInt32, GoUInt32) -> {
		var _0:GoUInt32;
		var _1:GoUInt32;
	}, GoUInt32, GoUInt32, GoUInt32,
		GoUInt32) -> Void = function(_msg:GoString, _f:(_x:GoUInt32, _y:GoUInt32) -> {
			var _0:GoUInt32;
			var _1:GoUInt32;
		}, _x:GoUInt32, _y:GoUInt32, _hi:GoUInt32, _lo:GoUInt32):Void {
			var __tmp__ = _f(_x, _y), _hi1:GoUInt32 = __tmp__._0, _lo1:GoUInt32 = __tmp__._1;
			if ((_hi1 != _hi) || (_lo1 != _lo)) {
				_t.errorf((Go.str("%s: got hi:lo = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1),
					Go.toInterface(_hi), Go.toInterface(_lo));
			};
		};
	var _testDiv:(GoString, (GoUInt32, GoUInt32, GoUInt32) -> {
		var _0:GoUInt32;
		var _1:GoUInt32;
	}, GoUInt32, GoUInt32,
		GoUInt32, GoUInt32, GoUInt32) -> Void = function(_msg:GoString, _f:(_hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32) -> {
			var _0:GoUInt32;
			var _1:GoUInt32;
		}, _hi:GoUInt32, _lo:GoUInt32, _y:GoUInt32, _q:GoUInt32, _r:GoUInt32):Void {
			var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt32 = __tmp__._0, _r1:GoUInt32 = __tmp__._1;
			if ((_q1 != _q) || (_r1 != _r)) {
				_t.errorf((Go.str("%s: got q:r = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1),
					Go.toInterface(_q), Go.toInterface(_r));
			};
		};
	for (_0 => _a in (new Slice<T__struct_5>(0, 0, ({
		_x: ("2147483648" : GoUInt32),
		_y: (2 : GoUInt32),
		_hi: (1 : GoUInt32),
		_lo: (0 : GoUInt32),
		_r: (1 : GoUInt32)
	} : T__struct_5), ({
		_x: ("3296590476" : GoUInt32),
		_y: (50911 : GoUInt32),
		_hi: (39076 : GoUInt32),
		_lo: ("2575665140" : GoUInt32),
		_r: (13 : GoUInt32)
		} : T__struct_5), ({
		_x: ("4294967295" : GoUInt32),
		_y: ("4294967295" : GoUInt32),
		_hi: ("4294967294" : GoUInt32),
		_lo: (1 : GoUInt32),
		_r: (42 : GoUInt32)
		} : T__struct_5)) : Slice<T__struct_5>)) {
		_testMul((Go.str("Mul32") : GoString), mul32, _a._x, _a._y, _a._hi, _a._lo);
		_testMul((Go.str("Mul32 symmetric") : GoString), mul32, _a._y, _a._x, _a._hi, _a._lo);
		_testDiv((Go.str("Div32") : GoString), div32, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
		_testDiv((Go.str("Div32 symmetric") : GoString), div32, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
	};
}

function testMulDiv64(_t:stdgo.testing.Testing.T):Void {
	var _testMul:(GoString, (GoUInt64, GoUInt64) -> {
		var _0:GoUInt64;
		var _1:GoUInt64;
	}, GoUInt64, GoUInt64, GoUInt64,
		GoUInt64) -> Void = function(_msg:GoString, _f:(_x:GoUInt64, _y:GoUInt64) -> {
			var _0:GoUInt64;
			var _1:GoUInt64;
		}, _x:GoUInt64, _y:GoUInt64, _hi:GoUInt64, _lo:GoUInt64):Void {
			var __tmp__ = _f(_x, _y), _hi1:GoUInt64 = __tmp__._0, _lo1:GoUInt64 = __tmp__._1;
			if ((_hi1 != _hi) || (_lo1 != _lo)) {
				_t.errorf((Go.str("%s: got hi:lo = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_hi1), Go.toInterface(_lo1),
					Go.toInterface(_hi), Go.toInterface(_lo));
			};
		};
	var _testDiv:(GoString, (GoUInt64, GoUInt64, GoUInt64) -> {
		var _0:GoUInt64;
		var _1:GoUInt64;
	}, GoUInt64, GoUInt64,
		GoUInt64, GoUInt64, GoUInt64) -> Void = function(_msg:GoString, _f:(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64) -> {
			var _0:GoUInt64;
			var _1:GoUInt64;
		}, _hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64, _q:GoUInt64, _r:GoUInt64):Void {
			var __tmp__ = _f(_hi, _lo, _y), _q1:GoUInt64 = __tmp__._0, _r1:GoUInt64 = __tmp__._1;
			if ((_q1 != _q) || (_r1 != _r)) {
				_t.errorf((Go.str("%s: got q:r = %#x:%#x; want %#x:%#x") : GoString), Go.toInterface(_msg), Go.toInterface(_q1), Go.toInterface(_r1),
					Go.toInterface(_q), Go.toInterface(_r));
			};
		};
	for (_0 => _a in (new Slice<T__struct_6>(0, 0, ({
		_x: ("9223372036854775808" : GoUInt64),
		_y: (2 : GoUInt64),
		_hi: (1 : GoUInt64),
		_lo: (0 : GoUInt64),
		_r: (1 : GoUInt64)
	} : T__struct_6), ({
		_x: ("15241578750190521" : GoUInt64),
		_y: ("975461057789971041" : GoUInt64),
		_hi: ("805972396572648" : GoUInt64),
		_lo: ("11373457362572903193" : GoUInt64),
		_r: (13 : GoUInt64)
		} : T__struct_6), ({
		_x: ("18446744073709551615" : GoUInt64),
		_y: ("18446744073709551615" : GoUInt64),
		_hi: ("18446744073709551614" : GoUInt64),
		_lo: (1 : GoUInt64),
		_r: (42 : GoUInt64)
		} : T__struct_6)) : Slice<T__struct_6>)) {
		_testMul((Go.str("Mul64") : GoString), mul64, _a._x, _a._y, _a._hi, _a._lo);
		_testMul((Go.str("Mul64 symmetric") : GoString), mul64, _a._y, _a._x, _a._hi, _a._lo);
		_testDiv((Go.str("Div64") : GoString), div64, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
		_testDiv((Go.str("Div64 symmetric") : GoString), div64, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
		_testMul((Go.str("Mul64 intrinsic") : GoString), function(_x:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return mul64(_x, _y);
		}, _a._x, _a._y, _a._hi, _a._lo);
		_testMul((Go.str("Mul64 intrinsic symmetric") : GoString), function(_x:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return mul64(_x, _y);
		}, _a._y, _a._x, _a._hi, _a._lo);
		_testDiv((Go.str("Div64 intrinsic") : GoString), function(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return div64(_hi, _lo, _y);
		}, _a._hi, _a._lo + _a._r, _a._y, _a._x, _a._r);
		_testDiv((Go.str("Div64 intrinsic symmetric") : GoString), function(_hi:GoUInt64, _lo:GoUInt64, _y:GoUInt64):{var _0:GoUInt64; var _1:GoUInt64;} {
			return div64(_hi, _lo, _y);
		}, _a._hi, _a._lo + _a._r, _a._x, _a._y, _a._r);
	};
}

function testDivPanicOverflow(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div should have panicked when y<=hi") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer overflow") : GoString))) {
						_t.errorf((Go.str("Div expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer overflow") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div((1 : GoUInt), (0 : GoUInt), (1 : GoUInt)),
			_q:GoUInt = __tmp__._0,
			_r:GoUInt = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDiv32PanicOverflow(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div32 should have panicked when y<=hi") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer overflow") : GoString))) {
						_t.errorf((Go.str("Div32 expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer overflow") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div32((1 : GoUInt32), (0 : GoUInt32), (1 : GoUInt32)),
			_q:GoUInt32 = __tmp__._0,
			_r:GoUInt32 = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div32 should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDiv64PanicOverflow(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div64 should have panicked when y<=hi") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer overflow") : GoString))) {
						_t.errorf((Go.str("Div64 expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer overflow") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div64((1 : GoUInt64), (0 : GoUInt64), (1 : GoUInt64)),
			_q:GoUInt64 = __tmp__._0,
			_r:GoUInt64 = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div64 should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDivPanicZero(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div should have panicked when y==0") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer divide by zero") : GoString))) {
						_t.errorf((Go.str("Div expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer divide by zero") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div((1 : GoUInt), (1 : GoUInt), (0 : GoUInt)),
			_q:GoUInt = __tmp__._0,
			_r:GoUInt = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDiv32PanicZero(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div32 should have panicked when y==0") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer divide by zero") : GoString))) {
						_t.errorf((Go.str("Div32 expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer divide by zero") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div32((1 : GoUInt32), (1 : GoUInt32), (0 : GoUInt32)),
			_q:GoUInt32 = __tmp__._0,
			_r:GoUInt32 = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div32 should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testDiv64PanicZero(_t:stdgo.testing.Testing.T):Void {
	var __deferstack__:Array<Void->Void> = [];
	__deferstack__.unshift(() -> {
		var a = function():Void {
			{
				var _err:AnyInterface = Go.toInterface(({
					final r = Go.recover_exception;
					Go.recover_exception = null;
					r;
				}));
				if (_err == null) {
					_t.error(Go.toInterface((Go.str("Div64 should have panicked when y==0") : GoString)));
				} else {
					var __tmp__ = try {
						{value: (_err.value : stdgo.runtime.Runtime.T_error), ok: true};
					} catch (_) {
						{value: (null : stdgo.runtime.Runtime.T_error), ok: false};
					}, _e = __tmp__.value, _ok = __tmp__.ok;
					if (!_ok || (_e.error() != (Go.str("runtime error: integer divide by zero") : GoString))) {
						_t.errorf((Go.str("Div64 expected panic: %q, got: %q ") : GoString),
							Go.toInterface((Go.str("runtime error: integer divide by zero") : GoString)), Go.toInterface(_e.error()));
					};
				};
			};
		};
		a();
	});
	try {
		var __tmp__ = div64((1 : GoUInt64), (1 : GoUInt64), (0 : GoUInt64)),
			_q:GoUInt64 = __tmp__._0,
			_r:GoUInt64 = __tmp__._1;
		_t.errorf((Go.str("undefined q, r = %v, %v calculated when Div64 should have panicked") : GoString), Go.toInterface(_q), Go.toInterface(_r));
		for (defer in __deferstack__) {
			defer();
		};
		{
			for (defer in __deferstack__) {
				defer();
			};
			if (Go.recover_exception != null)
				throw Go.recover_exception;
			return;
		};
	} catch (__exception__) {
		if (!(__exception__.native is AnyInterfaceData))
			throw __exception__;
		Go.recover_exception = __exception__.native;
		for (defer in __deferstack__) {
			defer();
		};
		if (Go.recover_exception != null)
			throw Go.recover_exception;
		return;
	};
}

function testRem32(_t:stdgo.testing.Testing.T):Void {
	var _hi:GoUInt32 = (510510 : GoUInt32),
		_lo:GoUInt32 = (9699690 : GoUInt32),
		_y:GoUInt32 = (510511 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			var _r:GoUInt32 = rem32(_hi, _lo, _y);
			var __tmp__ = div32(_hi, _lo, _y),
				_0:GoUInt32 = __tmp__._0,
				_r2:GoUInt32 = __tmp__._1;
			if (_r != _r2) {
				_t.errorf((Go.str("Rem32(%v, %v, %v) returned %v, but Div32 returned rem %v") : GoString), Go.toInterface(_hi), Go.toInterface(_lo),
					Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
			};
			_y = _y + ((13 : GoUInt32));
		});
	};
}

function testRem32Overflow(_t:stdgo.testing.Testing.T):Void {
	var _hi:GoUInt32 = (510510 : GoUInt32),
		_lo:GoUInt32 = (9699690 : GoUInt32),
		_y:GoUInt32 = (7 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			var _r:GoUInt32 = rem32(_hi, _lo, _y);
			var __tmp__ = div64((0 : GoUInt64), ((_hi : GoUInt64) << (32 : GoUnTypedInt)) | (_lo : GoUInt64), (_y : GoUInt64)),
				_0:GoUInt64 = __tmp__._0,
				_r2:GoUInt64 = __tmp__._1;
			if (_r != (_r2 : GoUInt32)) {
				_t.errorf((Go.str("Rem32(%v, %v, %v) returned %v, but Div64 returned rem %v") : GoString), Go.toInterface(_hi), Go.toInterface(_lo),
					Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
			};
			_y = _y + ((13 : GoUInt32));
		});
	};
}

function testRem64(_t:stdgo.testing.Testing.T):Void {
	var _hi:GoUInt64 = (510510 : GoUInt64),
		_lo:GoUInt64 = (9699690 : GoUInt64),
		_y:GoUInt64 = (510511 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (1000:GoInt), _i++, {
			var _r:GoUInt64 = rem64(_hi, _lo, _y);
			var __tmp__ = div64(_hi, _lo, _y),
				_0:GoUInt64 = __tmp__._0,
				_r2:GoUInt64 = __tmp__._1;
			if (_r != _r2) {
				_t.errorf((Go.str("Rem64(%v, %v, %v) returned %v, but Div64 returned rem %v") : GoString), Go.toInterface(_hi), Go.toInterface(_lo),
					Go.toInterface(_y), Go.toInterface(_r), Go.toInterface(_r2));
			};
			_y = _y + ((13 : GoUInt64));
		});
	};
}

function testRem64Overflow(_t:stdgo.testing.Testing.T):Void {
	var rem64Tests = (new Slice<T__struct_7>(0, 0, ({
		_hi: (42 : GoUInt64),
		_lo: (1119 : GoUInt64),
		_y: (42 : GoUInt64),
		_rem: (27 : GoUInt64)
	} : T__struct_7), ({
		_hi: (42 : GoUInt64),
		_lo: (1119 : GoUInt64),
		_y: (38 : GoUInt64),
		_rem: (9 : GoUInt64)
		} : T__struct_7), ({
		_hi: (42 : GoUInt64),
		_lo: (1119 : GoUInt64),
		_y: (26 : GoUInt64),
		_rem: (23 : GoUInt64)
		} : T__struct_7), ({
		_hi: (469 : GoUInt64),
		_lo: (0 : GoUInt64),
		_y: (467 : GoUInt64),
		_rem: (271 : GoUInt64)
		} : T__struct_7), ({
		_hi: (469 : GoUInt64),
		_lo: (0 : GoUInt64),
		_y: (113 : GoUInt64),
		_rem: (58 : GoUInt64)
		} : T__struct_7), ({
		_hi: (111111 : GoUInt64),
		_lo: (111111 : GoUInt64),
		_y: (1171 : GoUInt64),
		_rem: (803 : GoUInt64)
		} : T__struct_7), ({
		_hi: ("3968194946088682615" : GoUInt64),
		_lo: ("3192705705065114702" : GoUInt64),
		_y: (1000037 : GoUInt64),
		_rem: (56067 : GoUInt64)
		} : T__struct_7)) : Slice<T__struct_7>);
	for (_0 => _rt in rem64Tests) {
		if (_rt._hi < _rt._y) {
			_t.fatalf((Go.str("Rem64(%v, %v, %v) is not a test with quo overflow") : GoString), Go.toInterface(_rt._hi), Go.toInterface(_rt._lo),
				Go.toInterface(_rt._y));
		};
		var _rem:GoUInt64 = rem64(_rt._hi, _rt._lo, _rt._y);
		if (_rem != _rt._rem) {
			_t.errorf((Go.str("Rem64(%v, %v, %v) returned %v, wanted %v") : GoString), Go.toInterface(_rt._hi), Go.toInterface(_rt._lo),
				Go.toInterface(_rt._y), Go.toInterface(_rem), Go.toInterface(_rt._rem));
		};
	};
}

function benchmarkAdd(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt = (0 : GoUInt), _c:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = add((input : GoUInt), (_i : GoUInt), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkAdd32(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt32 = (0 : GoUInt32), _c:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = add32((input : GoUInt32), (_i : GoUInt32), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkAdd64(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt64 = (0 : GoUInt64), _c:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = add64((input : GoUInt64), (_i : GoUInt64), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkAdd64multiple(_b:stdgo.testing.Testing.B):Void {
	var _z0:GoUInt64 = (input : GoUInt64);
	var _z1:GoUInt64 = (input : GoUInt64);
	var _z2:GoUInt64 = (input : GoUInt64);
	var _z3:GoUInt64 = (input : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _c:GoUInt64 = (0 : GoUInt64);
			{
				var __tmp__ = add64(_z0, (_i : GoUInt64), _c);
				_z0 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = add64(_z1, (_i : GoUInt64), _c);
				_z1 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = add64(_z2, (_i : GoUInt64), _c);
				_z2 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = add64(_z3, (_i : GoUInt64), _c);
				_z3 = __tmp__._0;
			};
		});
	};
	output = (((_z0 + _z1) + _z2) + _z3 : GoInt);
}

function benchmarkSub(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt = (0 : GoUInt), _c:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = sub((input : GoUInt), (_i : GoUInt), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkSub32(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt32 = (0 : GoUInt32), _c:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = sub32((input : GoUInt32), (_i : GoUInt32), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkSub64(_b:stdgo.testing.Testing.B):Void {
	var _z:GoUInt64 = (0 : GoUInt64), _c:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = sub64((input : GoUInt64), (_i : GoUInt64), _c);
				_z = __tmp__._0;
				_c = __tmp__._1;
			};
		});
	};
	output = (_z + _c : GoInt);
}

function benchmarkSub64multiple(_b:stdgo.testing.Testing.B):Void {
	var _z0:GoUInt64 = (input : GoUInt64);
	var _z1:GoUInt64 = (input : GoUInt64);
	var _z2:GoUInt64 = (input : GoUInt64);
	var _z3:GoUInt64 = (input : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			var _c:GoUInt64 = (0 : GoUInt64);
			{
				var __tmp__ = sub64(_z0, (_i : GoUInt64), _c);
				_z0 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = sub64(_z1, (_i : GoUInt64), _c);
				_z1 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = sub64(_z2, (_i : GoUInt64), _c);
				_z2 = __tmp__._0;
				_c = __tmp__._1;
			};
			{
				var __tmp__ = sub64(_z3, (_i : GoUInt64), _c);
				_z3 = __tmp__._0;
			};
		});
	};
	output = (((_z0 + _z1) + _z2) + _z3 : GoInt);
}

function benchmarkMul(_b:stdgo.testing.Testing.B):Void {
	var _hi:GoUInt = (0 : GoUInt), _lo:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = mul((input : GoUInt), (_i : GoUInt));
				_hi = __tmp__._0;
				_lo = __tmp__._1;
			};
		});
	};
	output = (_hi + _lo : GoInt);
}

function benchmarkMul32(_b:stdgo.testing.Testing.B):Void {
	var _hi:GoUInt32 = (0 : GoUInt32), _lo:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = mul32((input : GoUInt32), (_i : GoUInt32));
				_hi = __tmp__._0;
				_lo = __tmp__._1;
			};
		});
	};
	output = (_hi + _lo : GoInt);
}

function benchmarkMul64(_b:stdgo.testing.Testing.B):Void {
	var _hi:GoUInt64 = (0 : GoUInt64), _lo:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = mul64((input : GoUInt64), (_i : GoUInt64));
				_hi = __tmp__._0;
				_lo = __tmp__._1;
			};
		});
	};
	output = (_hi + _lo : GoInt);
}

function benchmarkDiv(_b:stdgo.testing.Testing.B):Void {
	var _q:GoUInt = (0 : GoUInt), _r:GoUInt = (0 : GoUInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = div((1 : GoUInt), (_i : GoUInt), (input : GoUInt));
				_q = __tmp__._0;
				_r = __tmp__._1;
			};
		});
	};
	output = (_q + _r : GoInt);
}

function benchmarkDiv32(_b:stdgo.testing.Testing.B):Void {
	var _q:GoUInt32 = (0 : GoUInt32), _r:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = div32((1 : GoUInt32), (_i : GoUInt32), (input : GoUInt32));
				_q = __tmp__._0;
				_r = __tmp__._1;
			};
		});
	};
	output = (_q + _r : GoInt);
}

function benchmarkDiv64(_b:stdgo.testing.Testing.B):Void {
	var _q:GoUInt64 = (0 : GoUInt64), _r:GoUInt64 = (0 : GoUInt64);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _b.n, _i++, {
			{
				var __tmp__ = div64((1 : GoUInt64), (_i : GoUInt64), (input : GoUInt64));
				_q = __tmp__._0;
				_r = __tmp__._1;
			};
		});
	};
	output = (_q + _r : GoInt);
}

function exampleAdd32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, (33 : GoUInt32), (12 : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, (21 : GoUInt32), (23 : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt32)),
		_d1:GoUInt32 = __tmp__._0,
		_carry:GoUInt32 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt32 = __tmp__._0,
		_0:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v + %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt32>(0, 0, (1 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, (1 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt32));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.add32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v + %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
}

function exampleAdd64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, (33 : GoUInt64), (12 : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, (21 : GoUInt64), (23 : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt64)),
		_d1:GoUInt64 = __tmp__._0,
		_carry:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt64 = __tmp__._0,
		_0:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v + %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt64>(0, 0, (1 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, (1 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt64));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.add64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v + %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
}

function exampleSub32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, (33 : GoUInt32), (23 : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, (21 : GoUInt32), (12 : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt32)),
		_d1:GoUInt32 = __tmp__._0,
		_carry:GoUInt32 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt32 = __tmp__._0,
		_0:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v - %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt32>(0, 0, (3 : GoUInt32), (2147483647 : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, (1 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt32));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.sub32(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _d0, _d1) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v - %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
}

function exampleSub64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, (33 : GoUInt64), (23 : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, (21 : GoUInt64), (12 : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt64)),
		_d1:GoUInt64 = __tmp__._0,
		_carry:GoUInt64 = __tmp__._1;
	var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry),
		_d0:GoUInt64 = __tmp__._0,
		_0:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v - %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
	_n1 = (new Slice<GoUInt64>(0, 0, (3 : GoUInt64), ("9223372036854775807" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, (1 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(1 : GoInt)], _n2[(1 : GoInt)], (0 : GoUInt64));
		_d1 = __tmp__._0;
		_carry = __tmp__._1;
	};
	{
		var __tmp__ = stdgo.math.bits.Bits.sub64(_n1[(0 : GoInt)], _n2[(0 : GoInt)], _carry);
		_d0 = __tmp__._0;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _d0, _d1) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v - %v = %v (carry bit was %v)\n") : GoString), Go.toInterface(_n1), Go.toInterface(_n2), Go.toInterface(_nsum),
		Go.toInterface(_carry));
}

function exampleMul32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), (12 : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), (12 : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_hi:GoUInt32 = __tmp__._0,
		_lo:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _hi, _lo) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v * %v = %v\n") : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), (2 : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.mul32(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_hi = __tmp__._0;
		_lo = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _hi, _lo) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("%v * %v = %v\n") : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}

function exampleMul64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), (12 : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), (12 : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_hi:GoUInt64 = __tmp__._0,
		_lo:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _hi, _lo) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v * %v = %v\n") : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), (2 : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.mul64(_n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_hi = __tmp__._0;
		_lo = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _hi, _lo) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("%v * %v = %v\n") : GoString), Go.toInterface(_n1[(1 : GoInt)]), Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}

function exampleDiv32():Void {
	var _n1 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), (6 : GoUInt32)) : Slice<GoUInt32>);
	var _n2 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), (3 : GoUInt32)) : Slice<GoUInt32>);
	var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_quo:GoUInt32 = __tmp__._0,
		_rem:GoUInt32 = __tmp__._1;
	var _nsum = (new Slice<GoUInt32>(0, 0, _quo, _rem) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("[%v %v] / %v = %v\n") : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]),
		Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt32>(0, 0, (2 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	_n2 = (new Slice<GoUInt32>(0, 0, (0 : GoUInt32), ("2147483648" : GoUInt32)) : Slice<GoUInt32>);
	{
		var __tmp__ = stdgo.math.bits.Bits.div32(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_quo = __tmp__._0;
		_rem = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt32>(0, 0, _quo, _rem) : Slice<GoUInt32>);
	stdgo.fmt.Fmt.printf((Go.str("[%v %v] / %v = %v\n") : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]),
		Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}

function exampleDiv64():Void {
	var _n1 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), (6 : GoUInt64)) : Slice<GoUInt64>);
	var _n2 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), (3 : GoUInt64)) : Slice<GoUInt64>);
	var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]),
		_quo:GoUInt64 = __tmp__._0,
		_rem:GoUInt64 = __tmp__._1;
	var _nsum = (new Slice<GoUInt64>(0, 0, _quo, _rem) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("[%v %v] / %v = %v\n") : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]),
		Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
	_n1 = (new Slice<GoUInt64>(0, 0, (2 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	_n2 = (new Slice<GoUInt64>(0, 0, (0 : GoUInt64), ("9223372036854775808" : GoUInt64)) : Slice<GoUInt64>);
	{
		var __tmp__ = stdgo.math.bits.Bits.div64(_n1[(0 : GoInt)], _n1[(1 : GoInt)], _n2[(1 : GoInt)]);
		_quo = __tmp__._0;
		_rem = __tmp__._1;
	};
	_nsum = (new Slice<GoUInt64>(0, 0, _quo, _rem) : Slice<GoUInt64>);
	stdgo.fmt.Fmt.printf((Go.str("[%v %v] / %v = %v\n") : GoString), Go.toInterface(_n1[(0 : GoInt)]), Go.toInterface(_n1[(1 : GoInt)]),
		Go.toInterface(_n2[(1 : GoInt)]), Go.toInterface(_nsum));
}

function exampleLeadingZeros8():Void {
	stdgo.fmt.Fmt.printf((Go.str("LeadingZeros8(%08b) = %d\n") : GoString), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros8((1 : GoUInt8))));
}

function exampleLeadingZeros16():Void {
	stdgo.fmt.Fmt.printf((Go.str("LeadingZeros16(%016b) = %d\n") : GoString), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros16((1 : GoUInt16))));
}

function exampleLeadingZeros32():Void {
	stdgo.fmt.Fmt.printf((Go.str("LeadingZeros32(%032b) = %d\n") : GoString), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros32((1 : GoUInt32))));
}

function exampleLeadingZeros64():Void {
	stdgo.fmt.Fmt.printf((Go.str("LeadingZeros64(%064b) = %d\n") : GoString), Go.toInterface((1 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.leadingZeros64((1 : GoUInt64))));
}

function exampleTrailingZeros8():Void {
	stdgo.fmt.Fmt.printf((Go.str("TrailingZeros8(%08b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros8((14 : GoUInt8))));
}

function exampleTrailingZeros16():Void {
	stdgo.fmt.Fmt.printf((Go.str("TrailingZeros16(%016b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros16((14 : GoUInt16))));
}

function exampleTrailingZeros32():Void {
	stdgo.fmt.Fmt.printf((Go.str("TrailingZeros32(%032b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros32((14 : GoUInt32))));
}

function exampleTrailingZeros64():Void {
	stdgo.fmt.Fmt.printf((Go.str("TrailingZeros64(%064b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.trailingZeros64((14 : GoUInt64))));
}

function exampleOnesCount():Void {
	stdgo.fmt.Fmt.printf((Go.str("OnesCount(%b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount((14 : GoUInt))));
}

function exampleOnesCount8():Void {
	stdgo.fmt.Fmt.printf((Go.str("OnesCount8(%08b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount8((14 : GoUInt8))));
}

function exampleOnesCount16():Void {
	stdgo.fmt.Fmt.printf((Go.str("OnesCount16(%016b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount16((14 : GoUInt16))));
}

function exampleOnesCount32():Void {
	stdgo.fmt.Fmt.printf((Go.str("OnesCount32(%032b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount32((14 : GoUInt32))));
}

function exampleOnesCount64():Void {
	stdgo.fmt.Fmt.printf((Go.str("OnesCount64(%064b) = %d\n") : GoString), Go.toInterface((14 : GoInt)),
		Go.toInterface(stdgo.math.bits.Bits.onesCount64((14 : GoUInt64))));
}

function exampleRotateLeft8():Void {
	stdgo.fmt.Fmt.printf((Go.str("%08b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%08b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (2 : GoInt))));
	stdgo.fmt.Fmt.printf((Go.str("%08b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft8((15 : GoUInt8), (-2 : GoInt))));
}

function exampleRotateLeft16():Void {
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (2 : GoInt))));
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft16((15 : GoUInt16), (-2 : GoInt))));
}

function exampleRotateLeft32():Void {
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15 : GoUInt32), (2 : GoInt))));
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft32((15 : GoUInt32), (-2 : GoInt))));
}

function exampleRotateLeft64():Void {
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15 : GoUInt64), (2 : GoInt))));
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.rotateLeft64((15 : GoUInt64), (-2 : GoInt))));
}

function exampleReverse8():Void {
	stdgo.fmt.Fmt.printf((Go.str("%08b\n") : GoString), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%08b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse8((19 : GoUInt8))));
}

function exampleReverse16():Void {
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse16((19 : GoUInt16))));
}

function exampleReverse32():Void {
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse32((19 : GoUInt32))));
}

function exampleReverse64():Void {
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface((19 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverse64((19 : GoUInt64))));
}

function exampleReverseBytes16():Void {
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%016b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes16((15 : GoUInt16))));
}

function exampleReverseBytes32():Void {
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%032b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes32((15 : GoUInt32))));
}

function exampleReverseBytes64():Void {
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface((15 : GoInt)));
	stdgo.fmt.Fmt.printf((Go.str("%064b\n") : GoString), Go.toInterface(stdgo.math.bits.Bits.reverseBytes64((15 : GoUInt64))));
}

function exampleLen8():Void {
	stdgo.fmt.Fmt.printf((Go.str("Len8(%08b) = %d\n") : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len8((8 : GoUInt8))));
}

function exampleLen16():Void {
	stdgo.fmt.Fmt.printf((Go.str("Len16(%016b) = %d\n") : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len16((8 : GoUInt16))));
}

function exampleLen32():Void {
	stdgo.fmt.Fmt.printf((Go.str("Len32(%032b) = %d\n") : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len32((8 : GoUInt32))));
}

function exampleLen64():Void {
	stdgo.fmt.Fmt.printf((Go.str("Len64(%064b) = %d\n") : GoString), Go.toInterface((8 : GoInt)), Go.toInterface(stdgo.math.bits.Bits.len64((8 : GoUInt64))));
}

@:keep var _ = {
	try {
		_tab[(0 : GoInt)] = ({_nlz: (8 : GoInt), _ntz: (8 : GoInt), _pop: (0 : GoInt)} : T_entry);
		{
			var _i:GoInt = (1 : GoInt);
			Go.cfor(_i < (_tab.length), _i++, {
				var _x:GoInt = _i;
				var _n:GoInt = (0 : GoInt);
				while ((_x & (128 : GoInt)) == (0 : GoInt)) {
					_n++;
					_x = _x << ((1 : GoUnTypedInt));
				};
				_tab[_i]._nlz = _n;
				_x = _i;
				_n = (0 : GoInt);
				while ((_x & (1 : GoInt)) == (0 : GoInt)) {
					_n++;
					_x = _x >> ((1 : GoUnTypedInt));
				};
				_tab[_i]._ntz = _n;
				_x = _i;
				_n = (0 : GoInt);
				while (_x != (0 : GoInt)) {
					_n = _n + ((_x & (1 : GoInt) : GoInt));
					_x = _x >> ((1 : GoUnTypedInt));
				};
				_tab[_i]._pop = _n;
			});
		};
	} catch (__exception__)
		if (__exception__.message != "__return__")
			throw __exception__;
	true;
};
