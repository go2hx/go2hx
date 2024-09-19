package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_header_asInterface) class T_header_static_extension {
    @:keep
    static public function _init( _h:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header>, _recType:stdgo._internal.net.http.fcgi.Fcgi_T_recType.T_recType, _reqId:stdgo.GoUInt16, _contentLength:stdgo.GoInt):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_T_header.T_header> = _h;
        _h.version = (1 : stdgo.GoUInt8);
        _h.type = _recType;
        _h.id = _reqId;
        _h.contentLength = (_contentLength : stdgo.GoUInt16);
        _h.paddingLength = ((-_contentLength & (7 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
    }
}
