package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function newConn(_conn:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn> {
        return (stdgo.Go.setRef(({ reader : ({ r : stdgo._internal.bufio.Bufio_newReader.newReader(_conn) } : stdgo._internal.net.textproto.Textproto_Reader.Reader), writer : ({ w : stdgo._internal.bufio.Bufio_newWriter.newWriter(_conn) } : stdgo._internal.net.textproto.Textproto_Writer.Writer), _conn : _conn } : stdgo._internal.net.textproto.Textproto_Conn.Conn)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Conn.Conn>);
    }
