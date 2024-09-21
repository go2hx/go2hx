package _internal.strings_test;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
import stdgo._internal.strings.Strings;
function testReaderLenSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testReaderLenSize" + " skip function");
        return;
        var _r = stdgo._internal.strings.Strings_newReader.newReader(("abc" : stdgo.GoString));
        stdgo._internal.io.Io_copyN.copyN(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_r), (1i64 : stdgo.GoInt64));
        if (_r.len() != ((2 : stdgo.GoInt))) {
            _t.errorf(("Len = %d; want 2" : stdgo.GoString), stdgo.Go.toInterface(_r.len()));
        };
        if (_r.size() != ((3i64 : stdgo.GoInt64))) {
            _t.errorf(("Size = %d; want 3" : stdgo.GoString), stdgo.Go.toInterface(_r.size()));
        };
    }
