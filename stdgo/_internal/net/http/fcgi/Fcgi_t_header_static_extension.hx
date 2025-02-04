package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_header_asInterface) class T_header_static_extension {
    @:keep
    @:tdfield
    static public function _init( _h:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header>, _recType:stdgo._internal.net.http.fcgi.Fcgi_t_rectype.T_recType, _reqId:stdgo.GoUInt16, _contentLength:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header> = _h;
        (@:checkr _h ?? throw "null pointer dereference").version = (1 : stdgo.GoUInt8);
        (@:checkr _h ?? throw "null pointer dereference").type = _recType;
        (@:checkr _h ?? throw "null pointer dereference").id = _reqId;
        (@:checkr _h ?? throw "null pointer dereference").contentLength = (_contentLength : stdgo.GoUInt16);
        (@:checkr _h ?? throw "null pointer dereference").paddingLength = ((-_contentLength & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
    }
}
