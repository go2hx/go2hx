package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiWriter_StringCheckCall(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _c:_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker = ({} : _internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker);
        var _mw = (stdgo._internal.io.Io_multiWriter.multiWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_c) : stdgo.Ref<_internal.io_test.Io_test_T_writeStringChecker.T_writeStringChecker>))) : stdgo._internal.io.Io_Writer.Writer);
        stdgo._internal.io.Io_writeString.writeString(_mw, ("foo" : stdgo.GoString));
        if (!_c._called) {
            _t.error(stdgo.Go.toInterface(("did not see WriteString call to writeStringChecker" : stdgo.GoString)));
        };
    }
