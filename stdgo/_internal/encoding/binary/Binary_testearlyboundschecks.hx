package stdgo._internal.encoding.binary;
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L526"
        if (stdgo._internal.encoding.binary.Binary__testuint64smallslicelengthpanics._testUint64SmallSliceLengthPanics() != (true)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L527"
            _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L529"
        if (stdgo._internal.encoding.binary.Binary__testputuint64smallslicelengthpanics._testPutUint64SmallSliceLengthPanics() != (true)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L530"
            _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
    }
