package stdgo._internal.io;
import stdgo._internal.errors.Errors;
function multiReader(_readers:haxe.Rest<stdgo._internal.io.Io_Reader.Reader>):stdgo._internal.io.Io_Reader.Reader {
        var _readers = new stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>(_readers.length, 0, ..._readers);
        var _r = (new stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>((_readers.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader>);
        _r.__copyTo__(_readers);
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.io.Io_T_multiReader.T_multiReader(_r) : stdgo._internal.io.Io_T_multiReader.T_multiReader)) : stdgo.Ref<stdgo._internal.io.Io_T_multiReader.T_multiReader>));
    }
