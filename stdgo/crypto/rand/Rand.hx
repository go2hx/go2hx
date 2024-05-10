package stdgo.crypto.rand;
var reader(get, set) : stdgo._internal.io.Io.Reader;
private function get_reader():stdgo._internal.io.Io.Reader return stdgo._internal.crypto.rand.Rand.reader;
private function set_reader(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader {
        stdgo._internal.crypto.rand.Rand.reader = v;
        return v;
    }
@:structInit @:private @:using(stdgo.crypto.rand.Rand.T_reader_static_extension) abstract T_reader(stdgo._internal.crypto.rand.Rand.T_reader) from stdgo._internal.crypto.rand.Rand.T_reader to stdgo._internal.crypto.rand.Rand.T_reader {
    public function new() this = new stdgo._internal.crypto.rand.Rand.T_reader();
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class T_reader_static_extension {
    static public function read(r:T_reader, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand.T_reader_static_extension.read(r, b);
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
    static public function read(b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.crypto.rand.Rand.read(b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function testRead(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.rand.Rand.testRead(t);
    }
    static public function testReadEmpty(t:stdgo._internal.testing.Testing.T_):Void {
        stdgo._internal.crypto.rand.Rand.testReadEmpty(t);
    }
    /**
        Prime returns a number of the given bit length that is prime with high probability.
        Prime will return error for any error returned by rand.Read or if bits < 2.
    **/
    static public function prime(rand:stdgo._internal.io.Io.Reader, bits:StdTypes.Int):stdgo.Tuple<stdgo._internal.math.big.Big.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rand.Rand.prime(rand, bits);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        Int returns a uniform random value in [0, max). It panics if max <= 0.
    **/
    static public function int_(rand:stdgo._internal.io.Io.Reader, max:stdgo._internal.math.big.Big.Int_):stdgo.Tuple<stdgo._internal.math.big.Big.Int_, stdgo.Error> {
        return {
            final obj = stdgo._internal.crypto.rand.Rand.int_(rand, max);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
