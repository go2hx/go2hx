package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testNewReaderSizeIdempotent(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _b = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("hello world" : stdgo.GoString))), (1000 : stdgo.GoInt));
        var _b1 = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(_b), (1000 : stdgo.GoInt));
        if (_b1 != (_b)) {
            _t.error(stdgo.Go.toInterface(("NewReaderSize did not detect underlying Reader" : stdgo.GoString)));
        };
        var _b2 = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(stdgo.Go.asInterface(_b), (2000 : stdgo.GoInt));
        if (_b2 == (_b)) {
            _t.error(stdgo.Go.toInterface(("NewReaderSize did not enlarge buffer" : stdgo.GoString)));
        };
    }
