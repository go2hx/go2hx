package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger(_prefix?.__copy__(), _w) : stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_writeLogger.T_writeLogger>));
    }
