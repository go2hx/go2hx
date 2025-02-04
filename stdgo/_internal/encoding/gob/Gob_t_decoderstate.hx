package stdgo._internal.encoding.gob;
@:structInit @:using(stdgo._internal.encoding.gob.Gob_t_decoderstate_static_extension.T_decoderState_static_extension) class T_decoderState {
    public var _dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>);
    public var _b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>);
    public var _fieldnum : stdgo.GoInt = 0;
    public var _next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState> = (null : stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>);
    public function new(?_dec:stdgo.Ref<stdgo._internal.encoding.gob.Gob_decoder.Decoder>, ?_b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decbuffer.T_decBuffer>, ?_fieldnum:stdgo.GoInt, ?_next:stdgo.Ref<stdgo._internal.encoding.gob.Gob_t_decoderstate.T_decoderState>) {
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
