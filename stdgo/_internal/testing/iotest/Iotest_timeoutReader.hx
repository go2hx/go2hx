package stdgo._internal.testing.iotest;
function timeoutReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader(_r, (0 : stdgo.GoInt)) : stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_timeoutReader.T_timeoutReader>));
    }
