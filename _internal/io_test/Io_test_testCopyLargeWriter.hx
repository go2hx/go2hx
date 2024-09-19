package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testCopyLargeWriter(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _want = (stdgo._internal.io.Io_errInvalidWrite.errInvalidWrite : stdgo.Error);
        var _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        var _wb = (new _internal.io_test.Io_test_T_largeWriter.T_largeWriter() : _internal.io_test.Io_test_T_largeWriter.T_largeWriter);
        _rb.writeString(("hello, world." : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb)), __0:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
        _want = stdgo._internal.errors.Errors_new_.new_(("largeWriterError" : stdgo.GoString));
        _rb = (stdgo.Go.setRef(({} : _internal.io_test.Io_test_Buffer.Buffer)) : stdgo.Ref<_internal.io_test.Io_test_Buffer.Buffer>);
        _wb = ({ _err : _want } : _internal.io_test.Io_test_T_largeWriter.T_largeWriter);
        _rb.writeString(("hello, world." : stdgo.GoString));
        {
            var __tmp__ = stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_wb), stdgo.Go.asInterface(_rb)), __1:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_want))) {
                _t.errorf(("Copy error: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_want));
            };
        };
    }
