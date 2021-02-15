package stdgo;

typedef UInt8 = GoUInt;
typedef UInt16 = GoUInt;
typedef UInt32 = Int64;
typedef UInt64 = GoUInt; //low = int64, high = int64
typedef Int8 = GoInt;
typedef Int16 = GoInt;
typedef Int32 = GoInt;
typedef Float32 = Float;
typedef Float64 = Float;
typedef Complex64 = Float;
typedef Complex128 = Float; //low = float, high = float
typedef Byte = GoUInt;
typedef Rune = GoInt;
typedef UIntptr = GoUInt;
typedef GoInterface = {
    typeName:()->String,
};

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
    public inline function typeName():String {
        return "int64";
    }
}
abstract GoInt(Int) from Int to Int {
    public function new(n) {
        this = n;
    }
    @:from public static function fromFloat(f:Float) {
        return new GoInt(Std.int(f));
    }
    @:op(A < B) static function lt(a:GoInt,b:GoInt):Bool;
    @:op(A > B) static function rt(a:GoInt,b:GoInt):Bool;
    @:op(A <= B) static function lte(a:GoInt,b:GoInt):Bool;
    @:op(A >= B) static function rte(a:GoInt,b:GoInt):Bool;
    @:op(A == B) static function equal(a:GoInt,b:GoInt):Bool;

    @:op(A % B) static function mod(a:GoInt,b:GoInt):GoInt;
    @:op(A / B) static function div(a:GoInt,b:GoInt):GoInt;
    @:op(A * B) static function mul(a:GoInt,b:GoInt):GoInt;
    @:op(A - B) static function sub(a:GoInt,b:GoInt):GoInt;
    @:op(A + B) static function add(a:GoInt,b:GoInt):GoInt;
    @:op(A << B) static function sl(a:GoInt,b:GoInt):GoInt;
    @:op(A >> B) static function sr(a:GoInt,b:GoInt):GoInt;
    @:op(A >>> B) static function usr(a:GoInt,b:GoInt):GoInt;
    @:op(A & B) static function and(a:GoInt,b:GoInt):GoInt;
    @:op(A | B) static function or(a:GoInt,b:GoInt):GoInt;
    @:op(A ^ B) static function xor(a:GoInt,b:GoInt):GoInt;

    @:op(A += B) static function assignAdd(a:GoInt,b:GoInt):GoInt;
    @:op(A -= B) static function assignSub(a:GoInt,b:GoInt):GoInt;
    @:op(A /= B) static function assignDiv(a:GoInt,b:GoInt):GoInt;
    @:op(A *= B) static function assignMul(a:GoInt,b:GoInt):GoInt;
    @:op(A %= B) static function assignMod(a:GoInt,b:GoInt):GoInt;
    @:op(A &= B) static function assignAnd(a:GoInt,b:GoInt):GoInt;
    @:op(A |= B) static function assignOr(a:GoInt,b:GoInt):GoInt;
    @:op(A ^= B) static function assignXor(a:GoInt,b:GoInt):GoInt;
    @:op(A <<= B) static function assignSl(a:GoInt,b:GoInt):GoInt;
    @:op(A >>= B) static function assignSr(a:GoInt,b:GoInt):GoInt;
    @:op(A >>= B) static function assignUsr(a:GoInt,b:GoInt):GoInt;

    public inline function toInt() {
        return this;
    }
    public inline function typeName():String {
        return "int";
    }
}
abstract GoUInt(Int) from Int {
    public function new(n) {
        this = n;
    }
    @:from public static function fromFloat(f:Float) {
        return new GoUInt(Std.int(f));
    }
    public inline function typeName():String {
        return "uint";
    }
}


abstract GoDynamic(Dynamic) from Dynamic to Dynamic {
    public function new(obj:Dynamic) {
        this = obj;
    }
    @:op(A == B) static public function equals(a:Dynamic,b:GoDynamic):Bool {
        return false;
    }
    public inline function typeName():String {
        var b = !this.typeName;
        if (b)
            return this.typeName();
        return "interface{}";
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