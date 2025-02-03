package stdgo.compress.bzip2;
/**
    Package bzip2 implements bzip2 decompression.
**/
class Bzip2 {
    /**
        NewReader returns an io.Reader which decompresses bzip2 data from r.
        If r does not also implement io.ByteReader,
        the decompressor may read more data than necessary from r.
    **/
    static public inline function newReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo._internal.compress.bzip2.Bzip2_newReader.newReader(_r);
    }
    static public inline function testReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.compress.bzip2.Bzip2_testReader.testReader(_t);
    }
    static public inline function testBitReader(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.compress.bzip2.Bzip2_testBitReader.testBitReader(_t);
    }
    static public inline function testMTF(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.compress.bzip2.Bzip2_testMTF.testMTF(_t);
    }
    static public inline function testZeroRead(_t:stdgo._internal.testing.Testing_T_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>);
        stdgo._internal.compress.bzip2.Bzip2_testZeroRead.testZeroRead(_t);
    }
    static public inline function benchmarkDecodeDigits(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.compress.bzip2.Bzip2_benchmarkDecodeDigits.benchmarkDecodeDigits(_b);
    }
    static public inline function benchmarkDecodeNewton(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.compress.bzip2.Bzip2_benchmarkDecodeNewton.benchmarkDecodeNewton(_b);
    }
    static public inline function benchmarkDecodeRand(_b:stdgo._internal.testing.Testing_B.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_B.B>);
        stdgo._internal.compress.bzip2.Bzip2_benchmarkDecodeRand.benchmarkDecodeRand(_b);
    }
}
