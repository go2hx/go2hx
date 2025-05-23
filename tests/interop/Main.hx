package;

import go4hx.tests.interop.Interop;
// import go4hx.tests.interop.go_dash_colorful
import go4hx.tests.interop.a.A;
import stdgo.Go;
import go4hx.tests.interop.godashcolorful.Godashcolorful;
import stdgo.encoding.binary.Binary;
import stdgo.crypto.Crypto;
import stdgo.math.Math;
import stdgo.GoByte;
import stdgo.GoUInt16;
import stdgo.Slice;
import stdgo.GoString;

function main() {
	if (A.mD5 == A.sHA1) {
		throw "constants are the same";
	}
	A.fooB(A.sHA1);
	Godashcolorful.softPaletteEx;
	Binary.appendVarint;
	// float32 arg and return
	final value = Interop.float32(10.0);
	$type(value);
	if (value != 10)
		throw "incorrect value";
	final t = std.Type.typeof(value).getName();
	trace(t);
	if (t != "TInt" && t != "TFloat")
		throw "incorrect type";

	// Map<Int,Int> arg and return
	final m = [0 => 1, 1 => 2];
	final value = Interop.map_(stdgo.GoMap.fromIntMap(m, 0));
	$type(value);
	if (value[0] != 1)
		throw "incorrect value";

	// Interface arg and return
	final i = Interop.interface_(new X());
	i.run({s: ["Haxe"]});

	// Error (Interface) arg and return
	final err = Interop.error(stdgo.errors.Errors.new_("this is an error"));
	trace(err.error().toString());

	final i = Interop.interfaceByteOrder(new ByteOrder());
	// trace(Reflect.fields(i));
	trace(i.appendUint16([0, 1, 2], 3));

	$type(i);

	Crypto.registerHash;
	Math.acos(10);
}

class ByteOrder {
	public function new() {}

	// AppendUint16([]byte, uint16) []byte
	public dynamic function appendUint16(b:Slice<GoByte>, c:GoUInt16):Slice<GoByte> {
		trace(b, c);
		return b;
	}

	public function __underlying__()
		return Go.toInterface(this);
}

class X {
	public function new() {}

	public dynamic function run(s:{s:Slice<GoString>}) {
		trace("trigger! " + s);
	}

	public function __underlying__()
		return Go.toInterface(this);
}
