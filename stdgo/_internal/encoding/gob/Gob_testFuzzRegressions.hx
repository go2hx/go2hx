package stdgo._internal.encoding.gob;
function testFuzzRegressions(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (!stdgo._internal.encoding.gob.Gob__doFuzzTests._doFuzzTests.value) {
            @:check2r _t.skipf(("disabled; run with -gob.fuzz to enable" : stdgo.GoString));
        };
        stdgo._internal.encoding.gob.Gob__testFuzz._testFuzz(_t, (1328492090837718000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoFloat32))));
        stdgo._internal.encoding.gob.Gob__testFuzz._testFuzz(_t, (1330522872628565000i64 : stdgo.GoInt64), (100 : stdgo.GoInt), stdgo.Go.toInterface(stdgo.Go.pointer((0 : stdgo.GoInt))));
    }
