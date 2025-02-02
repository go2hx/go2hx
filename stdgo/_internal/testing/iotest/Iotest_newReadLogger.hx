package stdgo._internal.testing.iotest;
function newReadLogger(_prefix:stdgo.GoString, _r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger(_prefix?.__copy__(), _r) : stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_readLogger.T_readLogger>));
    }
