package stdgo.net.rpc;
@:structInit @:using(stdgo.net.rpc.Rpc.T_gobClientCodec_static_extension) abstract T_gobClientCodec(stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec) from stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec to stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec {
    public var _rwc(get, set) : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser;
    function get__rwc():stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser return this._rwc;
    function set__rwc(v:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser):stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser {
        this._rwc = v;
        return v;
    }
    public var _dec(get, set) : stdgo._internal.encoding.gob.Gob_Decoder.Decoder;
    function get__dec():stdgo._internal.encoding.gob.Gob_Decoder.Decoder return this._dec;
    function set__dec(v:stdgo._internal.encoding.gob.Gob_Decoder.Decoder):stdgo._internal.encoding.gob.Gob_Decoder.Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return v;
    }
    public var _enc(get, set) : stdgo._internal.encoding.gob.Gob_Encoder.Encoder;
    function get__enc():stdgo._internal.encoding.gob.Gob_Encoder.Encoder return this._enc;
    function set__enc(v:stdgo._internal.encoding.gob.Gob_Encoder.Encoder):stdgo._internal.encoding.gob.Gob_Encoder.Encoder {
        this._enc = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
        return v;
    }
    public var _encBuf(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__encBuf():stdgo._internal.bufio.Bufio_Writer.Writer return this._encBuf;
    function set__encBuf(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._encBuf = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public function new(?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_dec:stdgo._internal.encoding.gob.Gob_Decoder.Decoder, ?_enc:stdgo._internal.encoding.gob.Gob_Encoder.Encoder, ?_encBuf:stdgo._internal.bufio.Bufio_Writer.Writer) this = new stdgo._internal.net.rpc.Rpc_T_gobClientCodec.T_gobClientCodec(_rwc, (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>), (_enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>), (_encBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
