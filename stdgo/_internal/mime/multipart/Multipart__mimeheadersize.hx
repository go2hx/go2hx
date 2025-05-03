package stdgo._internal.mime.multipart;
function _mimeHeaderSize(_h:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader):stdgo.GoInt64 {
        var _size = (0 : stdgo.GoInt64);
        _size = (400i64 : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L219"
        for (_k => _vs in _h) {
            _size = (_size + ((_k.length : stdgo.GoInt64)) : stdgo.GoInt64);
            _size = (_size + ((200i64 : stdgo.GoInt64)) : stdgo.GoInt64);
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L222"
            for (__0 => _v in _vs) {
                _size = (_size + ((_v.length : stdgo.GoInt64)) : stdgo.GoInt64);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/formdata.go#L226"
        return _size;
    }
