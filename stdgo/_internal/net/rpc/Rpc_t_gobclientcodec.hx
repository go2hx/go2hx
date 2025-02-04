package stdgo._internal.net.rpc;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_t_gobclientcodec_static_extension.T_gobClientCodec_static_extension) class T_gobClientCodec {
    public var _rwc : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser = (null : stdgo._internal.io.Io_readwritecloser.ReadWriteCloser);
    public var _dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>);
    public var _encBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public function new(?_rwc:stdgo._internal.io.Io_readwritecloser.ReadWriteCloser, ?_dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, ?_enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_encoder.Encoder>, ?_encBuf:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>) {
        if (_rwc != null) this._rwc = _rwc;
        if (_dec != null) this._dec = _dec;
        if (_enc != null) this._enc = _enc;
        if (_encBuf != null) this._encBuf = _encBuf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gobClientCodec(_rwc, _dec, _enc, _encBuf);
    }
}
