package stdgo._internal.encoding.binary;
import stdgo._internal.math.Math;
import stdgo._internal.errors.Errors;
import stdgo._internal.io.Io;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unsafe.Unsafe;
function testEarlyBoundsChecks(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        if (stdgo._internal.encoding.binary.Binary__testUint64SmallSliceLengthPanics._testUint64SmallSliceLengthPanics() != (true)) {
            @:check2r _t.errorf(("binary.LittleEndian.Uint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
        if (stdgo._internal.encoding.binary.Binary__testPutUint64SmallSliceLengthPanics._testPutUint64SmallSliceLengthPanics() != (true)) {
            @:check2r _t.errorf(("binary.LittleEndian.PutUint64 expected to panic for small slices, but didn\'t" : stdgo.GoString));
        };
    }
