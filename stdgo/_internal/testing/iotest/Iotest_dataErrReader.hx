package stdgo._internal.testing.iotest;
import stdgo._internal.errors.Errors;
import stdgo._internal.log.Log;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strings.Strings;
function dataErrReader(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader(_r, (null : stdgo.Slice<stdgo.GoUInt8>), (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>)) : stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader)) : stdgo.Ref<stdgo._internal.testing.iotest.Iotest_T_dataErrReader.T_dataErrReader>));
    }
