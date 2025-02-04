package stdgo._internal.net.textproto;
function newWriter(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer> {
        return (stdgo.Go.setRef(({ w : _w } : stdgo._internal.net.textproto.Textproto_writer.Writer)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_writer.Writer>);
    }
