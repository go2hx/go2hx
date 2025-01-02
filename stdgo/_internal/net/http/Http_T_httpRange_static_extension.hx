package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.T_httpRange_asInterface) class T_httpRange_static_extension {
    @:keep
    @:tdfield
    static public function _mimeHeader( _r:stdgo._internal.net.http.Http_T_httpRange.T_httpRange, _contentType:stdgo.GoString, _size:stdgo.GoInt64):stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader {
        @:recv var _r:stdgo._internal.net.http.Http_T_httpRange.T_httpRange = _r?.__copy__();
        return (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo.GoString>>();
            x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo.GoString>);
            x.set(("Content-Range" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_r._contentRange(_size)?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
x.set(("Content-Type" : stdgo.GoString), (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_contentType?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo.GoString>>) : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader);
    }
    @:keep
    @:tdfield
    static public function _contentRange( _r:stdgo._internal.net.http.Http_T_httpRange.T_httpRange, _size:stdgo.GoInt64):stdgo.GoString {
        @:recv var _r:stdgo._internal.net.http.Http_T_httpRange.T_httpRange = _r?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("bytes %d-%d/%d" : stdgo.GoString), stdgo.Go.toInterface(_r._start), stdgo.Go.toInterface(((_r._start + _r._length : stdgo.GoInt64) - (1i64 : stdgo.GoInt64) : stdgo.GoInt64)), stdgo.Go.toInterface(_size))?.__copy__();
    }
}
