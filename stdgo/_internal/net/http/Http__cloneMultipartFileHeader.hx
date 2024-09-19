package stdgo._internal.net.http;
function _cloneMultipartFileHeader(_fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader> {
        if (_fh == null || (_fh : Dynamic).__nil__) {
            return null;
        };
        var _fh2 = (stdgo.Go.setRef(({} : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>);
        {
            var __tmp__ = (_fh : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)?.__copy__();
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader).filename = __tmp__.filename;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader).header = __tmp__.header;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader).size = __tmp__.size;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)._content = __tmp__._content;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)._tmpfile = __tmp__._tmpfile;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)._tmpoff = __tmp__._tmpoff;
            (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)._tmpshared = __tmp__._tmpshared;
        };
        _fh2.header = ((_fh.header : stdgo._internal.net.http.Http_Header.Header).clone() : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader);
        return _fh2;
    }
