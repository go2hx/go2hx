package stdgo._internal.net.http;
function _newTextprotoReader(_br:stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>):stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader> {
        {
            var _v = (stdgo._internal.net.http.Http__textprotoReaderPool._textprotoReaderPool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _tr = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>)) : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
                _tr.r = _br;
                return _tr;
            };
        };
        return stdgo._internal.net.textproto.Textproto_newReader.newReader(_br);
    }
