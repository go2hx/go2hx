package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var filename : stdgo.GoString = "";
    public var header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = (null : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
    public var size : stdgo.GoInt64 = 0;
    public var _content : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _tmpfile : stdgo.GoString = "";
    public var _tmpoff : stdgo.GoInt64 = 0;
    public var _tmpshared : Bool = false;
    public function new(?filename:stdgo.GoString, ?header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, ?size:stdgo.GoInt64, ?_content:stdgo.Slice<stdgo.GoUInt8>, ?_tmpfile:stdgo.GoString, ?_tmpoff:stdgo.GoInt64, ?_tmpshared:Bool) {
        if (filename != null) this.filename = filename;
        if (header != null) this.header = header;
        if (size != null) this.size = size;
        if (_content != null) this._content = _content;
        if (_tmpfile != null) this._tmpfile = _tmpfile;
        if (_tmpoff != null) this._tmpoff = _tmpoff;
        if (_tmpshared != null) this._tmpshared = _tmpshared;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(filename, header, size, _content, _tmpfile, _tmpoff, _tmpshared);
    }
}
