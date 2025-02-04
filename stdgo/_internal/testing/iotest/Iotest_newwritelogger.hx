package stdgo._internal.testing.iotest;
function newWriteLogger(_prefix:stdgo.GoString, _w:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger(_prefix?.__copy__(), _w) : stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_writelogger.T_writeLogger>));
    }
