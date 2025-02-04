package stdgo._internal.io;
function limitReader(_r:stdgo._internal.io.Io_reader.Reader, _n:stdgo.GoInt64):stdgo._internal.io.Io_reader.Reader {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_limitedreader.LimitedReader(_r, _n) : stdgo._internal.io.Io_limitedreader.LimitedReader)) : stdgo.Ref<stdgo._internal.io.Io_limitedreader.LimitedReader>));
    }
