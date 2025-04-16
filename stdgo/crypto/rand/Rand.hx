package stdgo.crypto.rand;
var reader(get, set) : stdgo._internal.io.Io_reader.Reader;
private function get_reader():stdgo._internal.io.Io_reader.Reader return stdgo._internal.crypto.rand.Rand_reader.reader;
private function set_reader(v:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        stdgo._internal.crypto.rand.Rand_reader.reader = v;
        return v;
    }
/**
    * Package rand implements a cryptographically secure
    * random number generator.
**/
class Rand {
    /**
        * Read is a helper function that calls Reader.Read using io.ReadFull.
        * On return, n == len(b) if and only if err == nil.
    **/
    static public inline function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return stdgo._internal.crypto.rand.Rand_read.read(_b);
    static public inline function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.rand.Rand_testread.testRead(_t);
    static public inline function testReadEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.crypto.rand.Rand_testreadempty.testReadEmpty(_t);
    /**
        * Prime returns a number of the given bit length that is prime with high probability.
        * Prime will return error for any error returned by rand.Read or if bits < 2.
    **/
    static public inline function prime(_rand:stdgo._internal.io.Io_reader.Reader, _bits:stdgo.GoInt):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rand.Rand_prime.prime(_rand, _bits);
    /**
        * Int returns a uniform random value in [0, max). It panics if max <= 0.
    **/
    static public inline function int_(_rand:stdgo._internal.io.Io_reader.Reader, _max:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):{ var _0 : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>; var _1 : stdgo.Error; } return stdgo._internal.crypto.rand.Rand_int_.int_(_rand, _max);
}
