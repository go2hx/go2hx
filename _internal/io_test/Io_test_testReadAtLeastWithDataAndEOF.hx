package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testReadAtLeastWithDataAndEOF(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rb:_internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer = ({} : _internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer);
        _rb._err = stdgo._internal.io.Io_eof.eof;
        _internal.io_test.Io_test__testReadAtLeast._testReadAtLeast(_t, stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.io_test.Io_test_T_dataAndErrorBuffer.T_dataAndErrorBuffer>)));
    }
