package stdgo._internal.net.textproto;
function newWriter(_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer> {
        return (stdgo.Go.setRef(({ w : _w } : stdgo._internal.net.textproto.Textproto_Writer.Writer)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
    }
