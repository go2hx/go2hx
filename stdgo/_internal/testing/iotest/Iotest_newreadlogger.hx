package stdgo._internal.testing.iotest;
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        //"file:///home/runner/.go/go1.21.3/src/testing/iotest/logger.go#L53"
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger(_prefix?.__copy__(), _r) : stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_readlogger.T_readLogger>));
    }
