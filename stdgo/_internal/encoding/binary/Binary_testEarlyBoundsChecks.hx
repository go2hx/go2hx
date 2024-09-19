package stdgo._internal.encoding.binary;
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.encoding.binary.Binary__testUint64SmallSliceLengthPanics._testUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
        if (stdgo._internal.encoding.binary.Binary__testPutUint64SmallSliceLengthPanics._testPutUint64SmallSliceLengthPanics() != (true)) {
            _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
    }
