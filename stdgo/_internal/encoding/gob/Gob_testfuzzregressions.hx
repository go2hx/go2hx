package stdgo._internal.encoding.gob;
function testFuzzRegressions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1442"
        if (!stdgo._internal.encoding.gob.Gob__dofuzztests._doFuzzTests.value) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1443"
            _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1447"
        stdgo._internal.encoding.gob.Gob__testfuzz._testFuzz(_t, (1328492090837718000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat32))));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1450"
        stdgo._internal.encoding.gob.Gob__testfuzz._testFuzz(_t, (1330522872628565000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))));
    }
