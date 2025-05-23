package std.go.math;


function float64bits(_f:stdgo.GoFloat64):stdgo.GoUInt64 {
	final bits = haxe.io.Bytes.alloc(8);
	bits.setDouble(0, _f.toBasic());
	return haxe.Int64.make(bits.get(4) | (bits.get(5) << 8) | (bits.get(6) << 16) | (bits.get(7) << 24),
		bits.get(0) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24));
}

function float32bits(_f:stdgo.GoFloat32):stdgo.GoUInt32 {
	final bits = haxe.io.Bytes.alloc(4);
	bits.setFloat(0, _f.toBasic());
	return (bits.get(0)) | (bits.get(1) << 8) | (bits.get(2) << 16) | (bits.get(3) << 24);
}

function float32frombits(_b:stdgo.GoUInt32):stdgo.GoFloat32 {
	final bits = haxe.io.Bytes.alloc(4);
	final v = _b.toBasic();
	bits.set(0, v & 0xff);
	bits.set(1, (v >> 8) & 0xff);
	bits.set(2, (v >> 16) & 0xff);
	bits.set(3, (v >> 24) & 0xff); // little-endian
	return bits.getFloat(0);
}

function float64frombits(_b:stdgo.GoUInt64):stdgo.GoFloat64 {
	final bits = haxe.io.Bytes.alloc(8);
	final low = _b.toBasic().low;
	final high = _b.toBasic().high;
	bits.set(0, low & 0xff);
	bits.set(1, (low >> 8) & 0xff);
	bits.set(2, (low >> 16) & 0xff);
	bits.set(3, (low >> 24) & 0xff); // little-endian
	bits.set(4, high & 0xff);
	bits.set(5, (high >> 8) & 0xff);
	bits.set(6, (high >> 16) & 0xff);
	bits.set(7, (high >> 24) & 0xff); // little-endian
	return bits.getDouble(0);
}