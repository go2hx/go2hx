package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyNegative(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        _rb.writeString(("hello" : stdgo.GoString));
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface((stdgo.Go.setRef(({ r : stdgo.Go.asInterface(_rb), n : (-1i64 : stdgo.GoInt64) } : stdgo._internal.io.Io_LimitedReader.LimitedReader)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>)));
        if ((_wb.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("Copy on LimitedReader with N<0 copied data" : stdgo.GoString));
        };
        stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (-1i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (stdgo.Go.str())) {
            _t.errorf(("CopyN with N<0 copied data" : stdgo.GoString));
        };
    }
