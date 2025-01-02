package stdgo._internal.net.http;
function _rangesMIMESize(_ranges:stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>, _contentType:stdgo.GoString, _contentSize:stdgo.GoInt64):stdgo.GoInt64 {
        var _encSize = (0 : stdgo.GoInt64);
        var _w:stdgo._internal.net.http.Http_T_countingWriter.T_countingWriter = ((0 : stdgo.GoInt64) : stdgo._internal.net.http.Http_T_countingWriter.T_countingWriter);
        var _w__pointer__ = stdgo.Go.pointer(_w);
        var _mw = stdgo._internal.mime.multipart.Multipart_newWriter.newWriter(stdgo.Go.asInterface(_w__pointer__));
        for (__137 => _ra in _ranges) {
            @:check2r _mw.createPart(_ra._mimeHeader(_contentType?.__copy__(), _contentSize));
            _encSize = (_encSize + (_ra._length) : stdgo.GoInt64);
        };
        @:check2r _mw.close();
        _encSize = (_encSize + ((_w : stdgo.GoInt64)) : stdgo.GoInt64);
        return _encSize;
    }
