package stdgo;
@:runtimeValue
typedef UInt8 = UInt;
typedef UInt16 = UInt;
typedef UInt32 = haxe.Int64;
typedef UInt64 = UInt; //low = int64, high = int64
typedef Int8 = Int;
typedef Int16 = Int;
typedef Int32 = Int;
typedef Int64 = Int;
typedef Float32 = Float;
typedef Float64 = Float;
typedef Complex64 = Float;
typedef Complex128 = Float; //low = float, high = float
typedef Byte = UInt;
typedef Rune = Int;
typedef UIntPtr = UInt;

interface ArrayAccess<T> {
	function get(i:Int):T;
	function set(i:Int,value:T):T;
}
interface MapAccess<K,V> {
    function get(k:K):Null<V>;
    function set(k:K,v:V):Void;
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