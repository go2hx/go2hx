package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function truncateWriter(_w:stdgo._internal.io.Io_Writer.Writer, _n:stdgo.GoInt64):stdgo._internal.io.Io_Writer.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter(_w, _n) : stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_truncateWriter.T_truncateWriter>));
    }
