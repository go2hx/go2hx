package stdgo.compress.bzip2;
typedef StructuralError = stdgo._internal.compress.bzip2.Bzip2_structuralerror.StructuralError;
typedef StructuralErrorPointer = stdgo._internal.compress.bzip2.Bzip2_structuralerrorpointer.StructuralErrorPointer;
/**
    * Package bzip2 implements bzip2 decompression.
**/
class Bzip2 {
    /**
        * NewReader returns an io.Reader which decompresses bzip2 data from r.
        * If r does not also implement io.ByteReader,
        * the decompressor may read more data than necessary from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader return stdgo._internal.compress.bzip2.Bzip2_newreader.newReader(_r);
    static public inline function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.compress.bzip2.Bzip2_testreader.testReader(_t);
    static public inline function testBitReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.compress.bzip2.Bzip2_testbitreader.testBitReader(_t);
    static public inline function testMTF(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.compress.bzip2.Bzip2_testmtf.testMTF(_t);
    static public inline function testZeroRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.compress.bzip2.Bzip2_testzeroread.testZeroRead(_t);
    static public inline function benchmarkDecodeDigits(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.compress.bzip2.Bzip2_benchmarkdecodedigits.benchmarkDecodeDigits(_b);
    static public inline function benchmarkDecodeNewton(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.compress.bzip2.Bzip2_benchmarkdecodenewton.benchmarkDecodeNewton(_b);
    static public inline function benchmarkDecodeRand(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.compress.bzip2.Bzip2_benchmarkdecoderand.benchmarkDecodeRand(_b);
}
