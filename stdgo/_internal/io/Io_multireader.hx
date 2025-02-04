package stdgo._internal.io;
function multiReader(_readers:haxe.Rest<stdgo._internal.io.Io_reader.Reader>):stdgo._internal.io.Io_reader.Reader {
        var _readers = new stdgo.Slice<stdgo._internal.io.Io_reader.Reader>(_readers.length, 0, ..._readers);
        var _r = (new stdgo.Slice<stdgo._internal.io.Io_reader.Reader>((_readers.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.Io_reader.Reader>);
        _r.__copyTo__(_readers);
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_t_multireader.T_multiReader(_r) : stdgo._internal.io.Io_t_multireader.T_multiReader)) : stdgo.Ref<stdgo._internal.io.Io_t_multireader.T_multiReader>));
    }
