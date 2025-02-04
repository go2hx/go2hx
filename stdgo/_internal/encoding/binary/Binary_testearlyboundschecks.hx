package stdgo._internal.encoding.binary;
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (stdgo._internal.encoding.binary.Binary__testuint64smallslicelengthpanics._testUint64SmallSliceLengthPanics() != (true)) {
            @:check2r _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
        if (stdgo._internal.encoding.binary.Binary__testputuint64smallslicelengthpanics._testPutUint64SmallSliceLengthPanics() != (true)) {
            @:check2r _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
    }
