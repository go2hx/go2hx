package stdgo._internal.net.textproto;
@:keep @:allow(stdgo._internal.net.textproto.Textproto.MIMEHeader_asInterface) class MIMEHeader_static_extension {
    @:keep
    @:tdfield
    static public function del( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):Void {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L55"
        if (_h != null) _h.__remove__(stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function values( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L47"
        if (_h == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L48"
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L50"
        return (_h[stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())] ?? (null : stdgo.Slice<stdgo.GoString>));
    }
    @:keep
    @:tdfield
    static public function get( _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = _h;
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L31"
        if (_h == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L32"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _v = (_h[stdgo._internal.net.textproto.Textproto_canonicalmimeheaderkey.canonicalMIMEHeaderKey(_key?.__copy__())] ?? (null : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L35"
        if ((_v.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L36"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/header.go#L38"
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
        _h[_key] = ((_h[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
}
