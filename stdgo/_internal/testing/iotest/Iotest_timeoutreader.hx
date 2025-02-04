package stdgo._internal.testing.iotest;
function timeoutReader(_r:stdgo._internal.io.Io_reader.Reader):stdgo._internal.io.Io_reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader(_r, (0 : stdgo.GoInt)) : stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_t_timeoutreader.T_timeoutReader>));
    }
