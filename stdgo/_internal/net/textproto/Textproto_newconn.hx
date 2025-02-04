package stdgo._internal.net.textproto;
function newConn(_conn:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser):stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn> {
        return (stdgo.Go.setRef(({ reader : ({ r : stdgo._internal.bufio.Bufio_newreader.newReader(_conn) } : stdgo._internal.net.textproto.Textproto_reader.Reader), writer : ({ w : stdgo._internal.bufio.Bufio_newwriter.newWriter(_conn) } : stdgo._internal.net.textproto.Textproto_writer.Writer), _conn : _conn } : stdgo._internal.net.textproto.Textproto_conn.Conn)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_conn.Conn>);
    }
