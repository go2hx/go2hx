package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newReader(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> {
        return (stdgo.Go.setRef(({ r : _r } : stdgo._internal.net.textproto.Textproto_Reader.Reader)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
    }
