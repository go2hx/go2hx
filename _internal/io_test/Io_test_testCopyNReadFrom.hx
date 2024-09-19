package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyNReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _rb.writeString(("hello" : stdgo.GoString));
        stdgo._internal.io.Io_copyN.copyN(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (5i64 : stdgo.GoInt64));
        if ((_wb.string() : stdgo.GoString) != (("hello" : stdgo.GoString))) {
            _t.errorf(("CopyN did not work properly" : stdgo.GoString));
        };
    }
