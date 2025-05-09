package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Part_asInterface) class Part_static_extension {
    @:keep
    @:tdfield
    static public function close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L326"
        stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_p));
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L327"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function read( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L185"
        return (@:checkr _p ?? throw "null pointer dereference")._r.read(_d);
    }
    @:keep
    @:tdfield
    static public function _populateHeaders( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _r = stdgo._internal.net.textproto.Textproto_newreader.newReader((@:checkr (@:checkr _p ?? throw "null pointer dereference")._mr ?? throw "null pointer dereference")._bufReader);
        var __tmp__ = stdgo._internal.mime.multipart.Multipart__readmimeheader._readMIMEHeader(_r, _maxMIMEHeaderSize, _maxMIMEHeaders), _header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L172"
        if (_err == null) {
            (@:checkr _p ?? throw "null pointer dereference").header = _header;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L176"
        if (((_err != null) && (_err.error() == ("message too large" : stdgo.GoString)) : Bool)) {
            _err = stdgo._internal.mime.multipart.Multipart_errmessagetoolarge.errMessageTooLarge;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L179"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _parseContentDisposition( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        var _v = ((@:checkr _p ?? throw "null pointer dereference").header.get(("Content-Disposition" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.mime.Mime_parsemediatype.parseMediaType(_v?.__copy__());
            (@:checkr _p ?? throw "null pointer dereference")._disposition = @:tmpset0 __tmp__._0?.__copy__();
            (@:checkr _p ?? throw "null pointer dereference")._dispositionParams = @:tmpset0 __tmp__._1;
            _err = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L108"
        if (_err != null) {
            (@:checkr _p ?? throw "null pointer dereference")._dispositionParams = stdgo._internal.mime.multipart.Multipart__emptyparams._emptyParams;
        };
    }
    @:keep
    @:tdfield
    static public function fileName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L92"
        if ((@:checkr _p ?? throw "null pointer dereference")._dispositionParams == null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L93"
            _p._parseContentDisposition();
        };
        var _filename = (((@:checkr _p ?? throw "null pointer dereference")._dispositionParams[("filename" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L96"
        if (_filename == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L97"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L101"
        return stdgo._internal.path.filepath.Filepath_base.base(_filename?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function formName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_part.Part> = _p;
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L79"
        if ((@:checkr _p ?? throw "null pointer dereference")._dispositionParams == null) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L80"
            _p._parseContentDisposition();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L82"
        if ((@:checkr _p ?? throw "null pointer dereference")._disposition != (("form-data" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L83"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/mime/multipart/multipart.go#L85"
        return ((@:checkr _p ?? throw "null pointer dereference")._dispositionParams[("name" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
    }
}
