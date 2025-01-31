package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function oneByteReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader(_r) : stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_oneByteReader.T_oneByteReader>));
    }
