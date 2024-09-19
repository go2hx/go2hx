package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReaderSingleByteWithEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo._internal.io.Io_limitReader.limitReader(stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface((97 : _internal.io_test.Io_test_T_byteAndEOFReader.T_byteAndEOFReader)), stdgo.Go.asInterface((98 : _internal.io_test.Io_test_T_byteAndEOFReader.T_byteAndEOFReader))), (10i64 : stdgo.GoInt64))), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {};
        if ((_got : stdgo.GoString) != (("ab" : stdgo.GoString))) {
            _t.errorf(("got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("ab" : stdgo.GoString)));
        };
    }
