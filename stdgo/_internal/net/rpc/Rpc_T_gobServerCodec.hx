package stdgo._internal.net.rpc;
import stdgo._internal.errors.Errors;
import stdgo._internal.html.template.Template;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.net.Net;
import stdgo._internal.io.Io;
import stdgo._internal.net.http.Http;
import stdgo._internal.go.token.Token;
import stdgo._internal.log.Log;
import stdgo._internal.sort.Sort;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
@:structInit @:using(stdgo._internal.net.rpc.Rpc_T_gobServerCodec_static_extension.T_gobServerCodec_static_extension) class T_gobServerCodec {
    public var _rwc : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser = (null : stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser);
    public var _dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
    public var _enc : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>);
    public var _encBuf : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _closed : Bool = false;
    public function new(?_rwc:stdgo._internal.io.Io_ReadWriteCloser.ReadWriteCloser, ?_dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, ?_enc:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Encoder.Encoder>, ?_encBuf:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_closed:Bool) {
        if (_rwc != null) this._rwc = _rwc;
        if (_dec != null) this._dec = _dec;
        if (_enc != null) this._enc = _enc;
        if (_encBuf != null) this._encBuf = _encBuf;
        if (_closed != null) this._closed = _closed;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_gobServerCodec(_rwc, _dec, _enc, _encBuf, _closed);
    }
}
