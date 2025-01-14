package stdgo._internal.net.http;
function _cloneMultipartFileHeader(_fh:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>):stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader> {
        if ((_fh == null || (_fh : Dynamic).__nil__)) {
            return null;
        };
        var _fh2 = (stdgo.Go.setRef(({} : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)) : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>);
        {
            var __tmp__ = (_fh : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader)?.__copy__();
            var x = (_fh2 : stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader);
            x.filename = __tmp__?.filename;
            x.header = __tmp__?.header;
            x.size = __tmp__?.size;
            x._content = __tmp__?._content;
            x._tmpfile = __tmp__?._tmpfile;
            x._tmpoff = __tmp__?._tmpoff;
            x._tmpshared = __tmp__?._tmpshared;
        };
        (@:checkr _fh2 ?? throw "null pointer dereference").header = (((@:checkr _fh ?? throw "null pointer dereference").header : stdgo._internal.net.http.Http_Header.Header).clone() : stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader);
        return _fh2;
    }
