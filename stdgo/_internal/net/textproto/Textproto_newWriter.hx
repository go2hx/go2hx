package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newWriter(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> {
        return (stdgo.Go.setRef(({ w : _w } : stdgo._internal.net.textproto.Textproto_Writer.Writer)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
    }
