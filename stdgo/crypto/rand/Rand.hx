package stdgo.crypto.rand;
var reader(get, set) : stdgo._internal.io.Io_Reader.Reader;
private function get_reader():stdgo._internal.io.Io_Reader.Reader return stdgo._internal.crypto.rand.Rand_reader.reader;
private function set_reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        stdgo._internal.crypto.rand.Rand_reader.reader = v;
        return v;
    }
@:structInit @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) abstract T_reader(stdgo._internal.crypto.rand.Rand_T_reader.T_reader) from stdgo._internal.crypto.rand.Rand_T_reader.T_reader to stdgo._internal.crypto.rand.Rand_T_reader.T_reader {
    public function new() this = new stdgo._internal.crypto.rand.Rand_T_reader.T_reader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_readerPointer = stdgo._internal.crypto.rand.Rand_T_readerPointer.T_readerPointer;
class T_reader_static_extension {
    static public function read(_r:T_reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_T_reader_static_extension.T_reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
/**
    Package rand implements a cryptographically secure
    random number generator.
**/
class Rand {
    /**
        Read is a helper function that calls Reader.Read using io.ReadFull.
        On return, n == len(b) if and only if err == nil.
    **/
    static public function read(_b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand_read.read(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.crypto.rand.Rand_testRead.testRead(_t);
    }
    static public function testReadEmpty(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        stdgo._internal.crypto.rand.Rand_testReadEmpty.testReadEmpty(_t);
    }
    /**
        Prime returns a number of the given bit length that is prime with high probability.
        Prime will return error for any error returned by rand.Read or if bits < 2.
    **/
    static public function prime(_rand:stdgo._internal.io.Io_Reader.Reader, _bits:StdTypes.Int):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rand.Rand_prime.prime(_rand, _bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Int returns a uniform random value in [0, max). It panics if max <= 0.
    **/
    static public function int_(_rand:stdgo._internal.io.Io_Reader.Reader, _max:stdgo._internal.math.big.Big_Int_.Int_):stdgo.Tuple<stdgo._internal.math.big.Big_Int_.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rand.Rand_int_.int_(_rand, _max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
