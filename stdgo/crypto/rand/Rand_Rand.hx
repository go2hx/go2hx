package stdgo.crypto.rand;
/**
    Package rand implements a cryptographically secure
    random number generator.
**/
class Rand {
    /**
        Read is a helper function that calls Reader.Read using io.ReadFull.
        On return, n == len(b) if and only if err == nil.
    **/
    static public inline function read(_b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_read.read(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public inline function testRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.rand.Rand_testRead.testRead(_t);
    }
    static public inline function testReadEmpty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.crypto.rand.Rand_testReadEmpty.testReadEmpty(_t);
    }
    /**
        Prime returns a number of the given bit length that is prime with high probability.
        Prime will return error for any error returned by rand.Read or if bits < 2.
    **/
    static public inline function prime(_rand:stdgo._internal.io.Io_Reader.Reader, _bits:StdTypes.Int):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        final _bits = (_bits : stdgo.GoInt);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_prime.prime(_rand, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Int returns a uniform random value in [0, max). It panics if max <= 0.
    **/
    static public inline function int_(_rand:stdgo._internal.io.Io_Reader.Reader, _max:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        final _max = (_max : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_int_.int_(_rand, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
