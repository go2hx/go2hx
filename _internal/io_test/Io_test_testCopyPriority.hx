package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyPriority(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_T_writeToChecker.T_writeToChecker)) : stdgo.Ref<_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker>);
        var _wb = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_Buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        _rb.writeString(("hello, world." : stdgo.GoString));
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb));
        if ((_wb.string() : stdgo.GoString) != (("hello, world." : stdgo.GoString))) {
            _t.errorf(("Copy did not work properly" : stdgo.GoString));
        } else if (!_rb._writeToCalled) {
            _t.errorf(("WriteTo was not prioritized over ReadFrom" : stdgo.GoString));
        };
    }