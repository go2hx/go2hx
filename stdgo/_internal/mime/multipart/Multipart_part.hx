package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_part_static_extension.Part_static_extension) class Part {
    public var header : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader = (null : stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader);
    public var _mr : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>);
    public var _disposition : stdgo.GoString = "";
    public var _dispositionParams : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var _r : stdgo._internal.io.Io_reader.Reader = (null : stdgo._internal.io.Io_reader.Reader);
    public var _n : stdgo.GoInt = 0;
    public var _total : stdgo.GoInt64 = 0;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public function new(?header:stdgo._internal.net.textproto.Textproto_mimeheader.MIMEHeader, ?_mr:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>, ?_disposition:stdgo.GoString, ?_dispositionParams:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?_r:stdgo._internal.io.Io_reader.Reader, ?_n:stdgo.GoInt, ?_total:stdgo.GoInt64, ?_err:stdgo.Error, ?_readErr:stdgo.Error) {
        if (header != null) this.header = header;
        if (_mr != null) this._mr = _mr;
        if (_disposition != null) this._disposition = _disposition;
        if (_dispositionParams != null) this._dispositionParams = _dispositionParams;
        if (_r != null) this._r = _r;
        if (_n != null) this._n = _n;
        if (_total != null) this._total = _total;
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Part(header, _mr, _disposition, _dispositionParams, _r, _n, _total, _err, _readErr);
    }
}
