package stdgo;

typedef UInt8 = GoUInt;
typedef UInt16 = GoUInt;
typedef UInt32 = Int64;
typedef UInt64 = UInt; //low = int64, high = int64
typedef Int8 = GoInt;
typedef Int16 = GoInt;
typedef Int32 = GoInt;
typedef Float32 = Float;
typedef Float64 = Float;
typedef Complex64 = Float;
typedef Complex128 = Float; //low = float, high = float
typedef Byte = UInt;
typedef Rune = Int;

abstract Int64(haxe.Int64) from haxe.Int64 {
    public function new(n:haxe.Int64) {
        this = n;
    }
    public static inline function compare(a,b) {
        return haxe.Int64.compare(a,b);
    }
    @:from public static inline function fromInt(x:Int) {
        return new Int64(haxe.Int64.ofInt(x));
    }
    @:from public static function fromFloat(f:Float) {
        return new Int64(haxe.Int64.fromFloat(f));
    }
}
abstract GoInt(Int) from Int {
    public function new(n) {
        this = n;
    }
    @:from public static function fromFloat(f:Float) {
        return new GoInt(Std.int(f));
    }
    @:to public static function toFloat(x:GoInt):Float {
        return cast x.toInt();
    }
    @:op(a / b) public static function divideInts(a:GoInt,b:GoInt) {
        return new GoInt(Std.int(a.toInt() / b.toInt()));
    }
    public inline function toInt() {
        return this;
    }
    public static function int(x:Int) {
        return new GoInt(x);
    }
}
abstract GoUInt(Int) from Int {
    public function new(n) {
        this = n;
    }
    @:from public static function fromFloat(f:Float) {
        return new GoUInt(Std.int(f));
    }
}


abstract GoDynamic(Dynamic) from Dynamic {
    public function new(?obj) {
        if (obj == null)
            obj = {};
        this = obj;
    }
    @:op(A == B) static public function equals(a:Dynamic,b:GoDynamic):Bool {
        return stdgo.GoReflect.deepEqual(a,b);
    }
    public inline function toDynamic():Dynamic {
        return this;
    }
}
/*
uint8       the set of all unsigned  8-bit integers (0 to 255)
uint16      the set of all unsigned 16-bit integers (0 to 65535)
uint32      the set of all unsigned 32-bit integers (0 to 4294967295)
uint64      the set of all unsigned 64-bit integers (0 to 18446744073709551615)

int8        the set of all signed  8-bit integers (-128 to 127)
int16       the set of all signed 16-bit integers (-32768 to 32767)
int32       the set of all signed 32-bit integers (-2147483648 to 2147483647)
int64       the set of all signed 64-bit integers (-9223372036854775808 to 9223372036854775807)

float32     the set of all IEEE-754 32-bit floating-point numbers
float64     the set of all IEEE-754 64-bit floating-point numbers

complex64   the set of all complex numbers with float32 real and imaginary parts
complex128  the set of all complex numbers with float64 real and imaginary parts

byte        alias for uint8
rune        alias for int32
*/