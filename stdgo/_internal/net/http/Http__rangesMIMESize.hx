package stdgo._internal.net.http;
function _rangesMIMESize(_ranges:stdgo.Slice<stdgo._internal.net.http.Http_T_httpRange.T_httpRange>, _contentType:stdgo.GoString, _contentSize:stdgo.GoInt64):stdgo.GoInt64 {
        var _encSize = (0 : stdgo.GoInt64);
        var _w:stdgo._internal.net.http.Http_T_countingWriter.T_countingWriter = ((0 : stdgo.GoInt64) : stdgo._internal.net.http.Http_T_countingWriter.T_countingWriter);
        var _mw = stdgo._internal.mime.multipart.Multipart_newWriter.newWriter(stdgo.Go.asInterface(stdgo.Go.pointer(_w)));
        for (__143 => _ra in _ranges) {
            _mw.createPart(_ra._mimeHeader(_contentType?.__copy__(), _contentSize));
            _encSize = (_encSize + (_ra._length) : stdgo.GoInt64);
        };
        _mw.close();
        _encSize = (_encSize + ((_w : stdgo.GoInt64)) : stdgo.GoInt64);
        return _encSize;
    }
