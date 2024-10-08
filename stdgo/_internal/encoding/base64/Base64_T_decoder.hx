package stdgo._internal.encoding.base64;
@:structInit @:using(stdgo._internal.encoding.base64.Base64_T_decoder_static_extension.T_decoder_static_extension) class T_decoder {
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _readErr : stdgo.Error = (null : stdgo.Error);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> = (null : stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>);
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1024, 1024, ...[for (i in 0 ... 1024) (0 : stdgo.GoUInt8)]);
    public var _nbuf : stdgo.GoInt = 0;
    public var _out : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _outbuf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(768, 768, ...[for (i in 0 ... 768) (0 : stdgo.GoUInt8)]);
    public function new(?_err:stdgo.Error, ?_readErr:stdgo.Error, ?_enc:stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>, ?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:stdgo.GoArray<stdgo.GoUInt8>, ?_nbuf:stdgo.GoInt, ?_out:stdgo.Slice<stdgo.GoUInt8>, ?_outbuf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_err != null) this._err = _err;
        if (_readErr != null) this._readErr = _readErr;
        if (_enc != null) this._enc = _enc;
        if (_r != null) this._r = _r;
        if (_buf != null) this._buf = _buf;
        if (_nbuf != null) this._nbuf = _nbuf;
        if (_out != null) this._out = _out;
        if (_outbuf != null) this._outbuf = _outbuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoder(_err, _readErr, _enc, _r, _buf, _nbuf, _out, _outbuf);
    }
}
