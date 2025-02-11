package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.MIMEHeader_asInterface) class MIMEHeader_static_extension {
    @:keep
    @:tdfield
    static public function del( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        if (_h != null) _h.__remove__(stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function values( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        if (_h == null) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        return (_h[stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())] ?? (null : stdgo.Slice<stdgo.GoString>));
    }
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        if (_h == null) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _v = (_h[stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())] ?? (null : stdgo.Slice<stdgo.GoString>));
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        return _v[(0 : stdgo.GoInt)]?.__copy__();
    }
    @:keep
    @:tdfield
    static public function set( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        _h[stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())] = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_value?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function add( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        _key = stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())?.__copy__();
        _h[_key] = ((_h[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()));
    }
}
