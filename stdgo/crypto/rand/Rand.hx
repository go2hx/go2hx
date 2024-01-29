package stdgo.crypto.rand;
/**
    // Package rand implements a cryptographically secure
    // random number generator.
**/
private var __go2hxdoc__package : Bool;
var reader(get_reader, set_reader) : stdgo._internal.io.Io.Reader;
function get_reader():stdgo._internal.io.Io.Reader return stdgo._internal.crypto.rand.Rand.reader;
function set_reader(v:stdgo._internal.io.Io.Reader):stdgo._internal.io.Io.Reader return stdgo._internal.crypto.rand.Rand.reader = v;
@:invalid typedef T_reader = Dynamic;
/**
    // Read is a helper function that calls Reader.Read using io.ReadFull.
    // On return, n == len(b) if and only if err == nil.
**/
inline function read(b:Array<Int>):stdgo.Tuple.<Int, stdgo.Error> throw "not implemented";
inline function testRead(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
inline function testReadEmpty(t:stdgo._internal.testing.Testing.T_):Void throw "not implemented";
/**
    // Prime returns a number of the given bit length that is prime with high probability.
    // Prime will return error for any error returned by rand.Read or if bits < 2.
**/
inline function prime(rand:stdgo._internal.io.Io.Reader, bits:Int):stdgo.Tuple.<stdgo._internal.math.big.Big.Int_, stdgo.Error> throw "not implemented";
/**
    // Int returns a uniform random value in [0, max). It panics if max <= 0.
**/
inline function int_(rand:stdgo._internal.io.Io.Reader, max:stdgo._internal.math.big.Big.Int_):stdgo.Tuple.<stdgo._internal.math.big.Big.Int_, stdgo.Error> throw "not implemented";
@:invalid typedef T_reader_asInterface = Dynamic;
@:invalid typedef T_reader_static_extension = Dynamic;
