package _internal.syscall.js_test;
function testWasmImport(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _a = ((3u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _b = ((5u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        var _want = (_a + _b : stdgo.GoUInt32);
        {
            var _got = (_internal.syscall.js_test.Js_test__testAdd._testAdd(_a, _b) : stdgo.GoUInt32);
            if (_got != (_want)) {
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
