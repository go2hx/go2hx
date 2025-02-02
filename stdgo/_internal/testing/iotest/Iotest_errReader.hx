package stdgo._internal.testing.iotest;
function errReader(_err:stdgo.Error):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _err } : stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader>));
    }
