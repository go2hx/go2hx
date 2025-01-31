package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function errReader(_err:stdgo.Error):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef(({ _err : _err } : stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_errReader.T_errReader>));
    }
