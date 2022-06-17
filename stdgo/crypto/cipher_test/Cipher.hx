package stdgo.crypto.cipher_test;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _tests : Slice<stdgo.testing.Testing.InternalTest> = ((new Slice<stdgo.testing.Testing.InternalTest>(
((new stdgo.testing.Testing.InternalTest(((("TestCBCEncrypterAES" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCBCEncrypterAES) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCBCDecrypterAES" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCBCDecrypterAES) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCFBVectors" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCFBVectors) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCFBInverse" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCFBInverse) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCryptBlocks" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCryptBlocks) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestEmptyPlaintext" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testEmptyPlaintext) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCTR_AES" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCTR_AES) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestCTR" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testCTR) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestAESGCM" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testAESGCM) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGCMInvalidTagSize" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testGCMInvalidTagSize) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestTagFailureOverwrite" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testTagFailureOverwrite) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGCMCounterWrap" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testGCMCounterWrap) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestGCMAsm" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testGCMAsm) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestOFB" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testOFB) : stdgo.testing.Testing.InternalTest)),
((new stdgo.testing.Testing.InternalTest(((("TestXOR" : GoString))), stdgo.crypto.cipher_test.Cipher_test.testXOR) : stdgo.testing.Testing.InternalTest))) : Slice<stdgo.testing.Testing.InternalTest>));
var _benchmarks : Slice<stdgo.testing.Testing.InternalBenchmark> = ((new Slice<stdgo.testing.Testing.InternalBenchmark>(((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESGCM" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESGCM) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCFBEncrypt1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCFBEncrypt1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCFBDecrypt1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCFBDecrypt1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCFBDecrypt8K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCFBDecrypt8K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESOFB1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESOFB1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCTR1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCTR1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCTR8K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCTR8K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCBCEncrypt1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCBCEncrypt1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkAESCBCDecrypt1K" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkAESCBCDecrypt1K) : stdgo.testing.Testing.InternalBenchmark)), ((new stdgo.testing.Testing.InternalBenchmark(((("BenchmarkXORBytes" : GoString))), stdgo.crypto.cipher_test.Cipher_test.benchmarkXORBytes) : stdgo.testing.Testing.InternalBenchmark))) : Slice<stdgo.testing.Testing.InternalBenchmark>));
var _fuzzTargets : Slice<stdgo.testing.Testing.InternalFuzzTarget> = ((new Slice<stdgo.testing.Testing.InternalFuzzTarget>() : Slice<stdgo.testing.Testing.InternalFuzzTarget>));
var _examples : Slice<stdgo.testing.Testing.InternalExample> = ((new Slice<stdgo.testing.Testing.InternalExample>(((new stdgo.testing.Testing.InternalExample(((("ExampleNewGCM_decrypt" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleNewGCM_decrypt, ((("exampleplaintext\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleNewCBCDecrypter" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleNewCBCDecrypter, ((("exampleplaintext\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleNewCFBDecrypter" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleNewCFBDecrypter, ((("some plaintext\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleNewCTR" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleNewCTR, ((("some plaintext\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleNewOFB" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleNewOFB, ((("some plaintext\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleStreamReader" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleStreamReader, ((("some secret text\n" : GoString))), false) : stdgo.testing.Testing.InternalExample)), ((new stdgo.testing.Testing.InternalExample(((("ExampleStreamWriter" : GoString))), stdgo.crypto.cipher_test.Cipher_test.exampleStreamWriter, ((("cf0495cc6f75dafc23948538e79904a9\n" : GoString))), false) : stdgo.testing.Testing.InternalExample))) : Slice<stdgo.testing.Testing.InternalExample>));
function main():Void {
        var _m:Ref<stdgo.testing.Testing.M> = stdgo.testing.Testing.mainStart(((new stdgo.testing.internal.testdeps.Testdeps.TestDeps() : stdgo.testing.internal.testdeps.Testdeps.TestDeps)), _tests, _benchmarks, _fuzzTargets, _examples);
        stdgo.os.Os.exit(_m.run());
    }
@:keep var _ = {
        try {
            stdgo.testing.internal.testdeps.Testdeps.importPath = ((("crypto/cipher" : GoString)));
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
