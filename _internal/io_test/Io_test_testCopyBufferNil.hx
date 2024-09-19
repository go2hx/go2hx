package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyBufferNil(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        var _wb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        stdgo._internal.io.Io_copyBuffer.copyBuffer(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb), (null : stdgo.Slice<stdgo.GoUInt8>));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("CopyBuffer did not work properly" : stdgo.GoString));
        };
    }
