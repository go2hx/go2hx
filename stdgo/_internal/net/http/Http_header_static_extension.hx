package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Header_asInterface) class Header_static_extension {
    @:keep
    @:tdfield
    static public function writeSubset( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer, _exclude:stdgo.GoMap<stdgo.GoString, Bool>):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        return _h._writeSubset(_w, _exclude, null);
    }
    @:keep
    @:tdfield
    static public function clone( _h:stdgo._internal.net.http.Http_header.Header):stdgo._internal.net.http.Http_header.Header {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        if (_h == null) {
            return null;
        };
        var _nv = (0 : stdgo.GoInt);
        for (__4476 => _vv in _h) {
            _nv = (_nv + ((_vv.length)) : stdgo.GoInt);
        };
        var _sv = (new stdgo.Slice<stdgo.GoString>((_nv : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _h2 = ((({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.http.Http_header.Header) : stdgo._internal.net.http.Http_header.Header);
        for (_k => _vv in _h) {
            if (_vv == null) {
                _h2[_k] = (null : stdgo.Slice<stdgo.GoString>);
                continue;
            };
            var _n = (_sv.__copyTo__(_vv) : stdgo.GoInt);
            _h2[_k] = (_sv.__slice__(0, _n, _n) : stdgo.Slice<stdgo.GoString>);
            _sv = (_sv.__slice__(_n) : stdgo.Slice<stdgo.GoString>);
        };
        return _h2;
    }
    @:keep
    @:tdfield
    static public function write( _h:stdgo._internal.net.http.Http_header.Header, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        return _h._write(_w, null);
    }
    @:keep
    @:tdfield
    static public function del( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).del(_key?.__copy__());
    }
    @:keep
    @:tdfield
    static public function values( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        return (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).values(_key?.__copy__());
    }
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        return (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).get(_key?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).set(_key?.__copy__(), _value?.__copy__());
    }
    @:keep
    @:tdfield
    static public function add( _h:stdgo._internal.net.http.Http_header.Header, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.http.Http_header.Header = _h;
        (_h : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader).add(_key?.__copy__(), _value?.__copy__());
    }
}
