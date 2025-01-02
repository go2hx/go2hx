package stdgo._internal.net.http;
function _putTextprotoReader(_r:stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>):Void {
        (@:checkr _r ?? throw "null pointer dereference").r = null;
        @:check2 stdgo._internal.net.http.Http__textprotoReaderPool._textprotoReaderPool.put(stdgo.Go.toInterface(stdgo.Go.asInterface(_r)));
    }
