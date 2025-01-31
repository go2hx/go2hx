package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_T_decoderState_static_extension.T_decoderState_static_extension) class T_decoderState {
    public var _dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
    public var _b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
    public var _fieldnum : stdgo.GoInt = 0;
    public var _next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
    public function new(?_dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>, ?_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>, ?_fieldnum:stdgo.GoInt, ?_next:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>) {
        if (_dec != null) this._dec = _dec;
        if (_b != null) this._b = _b;
        if (_fieldnum != null) this._fieldnum = _fieldnum;
        if (_next != null) this._next = _next;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decoderState(_dec, _b, _fieldnum, _next);
    }
}
