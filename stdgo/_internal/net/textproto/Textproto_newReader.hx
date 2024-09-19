package stdgo._internal.net.textproto;
function newReader(_r:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> {
        return (stdgo.Go.setRef(({ r : _r } : stdgo._internal.net.textproto.Textproto_Reader.Reader)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
    }
