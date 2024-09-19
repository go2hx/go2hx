package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.Part_asInterface) class Part_static_extension {
    @:keep
    static public function close( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        stdgo._internal.io.Io_copy.copy(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(_p));
        return (null : stdgo.Error);
    }
    @:keep
    static public function read( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return _p._r.read(_d);
    }
    @:keep
    static public function _populateHeaders( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>, _maxMIMEHeaderSize:stdgo.GoInt64, _maxMIMEHeaders:stdgo.GoInt64):stdgo.Error {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        var _r = stdgo._internal.net.textproto.Textproto_newReader.newReader(_p._mr._bufReader);
        var __tmp__ = stdgo._internal.mime.multipart.Multipart__readMIMEHeader._readMIMEHeader(_r, _maxMIMEHeaderSize, _maxMIMEHeaders), _header:stdgo._internal.net.textproto.Textproto_MIMEHeader.MIMEHeader = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            _p.header = _header;
        };
        if (((_err != null) && (_err.error() == ("message too large" : stdgo.GoString)) : Bool)) {
            _err = stdgo._internal.mime.multipart.Multipart_errMessageTooLarge.errMessageTooLarge;
        };
        return _err;
    }
    @:keep
    static public function _parseContentDisposition( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        var _v = (_p.header.get(("Content-Disposition" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var __tmp__ = stdgo._internal.mime.Mime_parseMediaType.parseMediaType(_v?.__copy__());
            _p._disposition = __tmp__._0?.__copy__();
            _p._dispositionParams = __tmp__._1;
            _err = __tmp__._2;
        };
        if (_err != null) {
            _p._dispositionParams = stdgo._internal.mime.multipart.Multipart__emptyParams._emptyParams;
        };
    }
    @:keep
    static public function fileName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        if (_p._dispositionParams == null) {
            _p._parseContentDisposition();
        };
        var _filename = ((_p._dispositionParams[("filename" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_filename == (stdgo.Go.str())) {
            return stdgo.Go.str()?.__copy__();
        };
        return stdgo._internal.path.filepath.Filepath_base.base(_filename?.__copy__())?.__copy__();
    }
    @:keep
    static public function formName( _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part> = _p;
        if (_p._dispositionParams == null) {
            _p._parseContentDisposition();
        };
        if (_p._disposition != (("form-data" : stdgo.GoString))) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_p._dispositionParams[("name" : stdgo.GoString)] ?? ("" : stdgo.GoString))?.__copy__();
    }
}
