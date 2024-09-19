package stdgo._internal.net.http;
function _putTextprotoReader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):Void {
        _r.r = null;
        stdgo._internal.net.http.Http__textprotoReaderPool._textprotoReaderPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
