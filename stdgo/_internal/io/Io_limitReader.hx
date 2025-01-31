package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function limitReader(_r:stdgo._internal.io.Io_Reader.Reader, _n:stdgo.GoInt64):stdgo._internal.io.Io_Reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_LimitedReader.LimitedReader(_r, _n) : stdgo._internal.io.Io_LimitedReader.LimitedReader)) : stdgo.Ref<stdgo._internal.io.Io_LimitedReader.LimitedReader>));
    }
