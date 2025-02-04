package stdgo._internal.net.http.fcgi;
@:keep @:allow(stdgo._internal.net.http.fcgi.Fcgi.T_request_asInterface) class T_request_static_extension {
    @:keep
    @:tdfield
    static public function _parseParams( _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.net.http.fcgi.Fcgi_t_request.T_request> = _r;
        var _text = (@:checkr _r ?? throw "null pointer dereference")._rawParams;
        (@:checkr _r ?? throw "null pointer dereference")._rawParams = (null : stdgo.Slice<stdgo.GoUInt8>);
        while (((_text.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.net.http.fcgi.Fcgi__readsize._readSize(_text), _keyLen:stdgo.GoUInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n == ((0 : stdgo.GoInt))) {
                return;
            };
            _text = (_text.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            var __tmp__ = stdgo._internal.net.http.fcgi.Fcgi__readsize._readSize(_text), _valLen:stdgo.GoUInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if (_n == ((0 : stdgo.GoInt))) {
                return;
            };
            _text = (_text.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            if ((((_keyLen : stdgo.GoInt) + (_valLen : stdgo.GoInt) : stdgo.GoInt) > (_text.length) : Bool)) {
                return;
            };
            var _key = (stdgo._internal.net.http.fcgi.Fcgi__readstring._readString(_text, _keyLen)?.__copy__() : stdgo.GoString);
            _text = (_text.__slice__(_keyLen) : stdgo.Slice<stdgo.GoUInt8>);
            var _val = (stdgo._internal.net.http.fcgi.Fcgi__readstring._readString(_text, _valLen)?.__copy__() : stdgo.GoString);
            _text = (_text.__slice__(_valLen) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _r ?? throw "null pointer dereference")._params[_key] = _val?.__copy__();
        };
    }
}
