package stdgo.encoding.gob;
@:structInit @:using(stdgo.encoding.gob.Gob.T_decoderState_static_extension) abstract T_decoderState(stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState) from stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState to stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState {
    public var _dec(get, set) : Decoder;
    function get__dec():Decoder return this._dec;
    function set__dec(v:Decoder):Decoder {
        this._dec = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return v;
    }
    public var _b(get, set) : T_decBuffer;
    function get__b():T_decBuffer return this._b;
    function set__b(v:T_decBuffer):T_decBuffer {
        this._b = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        return v;
    }
    public var _fieldnum(get, set) : StdTypes.Int;
    function get__fieldnum():StdTypes.Int return this._fieldnum;
    function set__fieldnum(v:StdTypes.Int):StdTypes.Int {
        this._fieldnum = (v : stdgo.GoInt);
        return v;
    }
    public var _next(get, set) : T_decoderState;
    function get__next():T_decoderState return this._next;
    function set__next(v:T_decoderState):T_decoderState {
        this._next = (v : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        return v;
    }
    public function new(?_dec:Decoder, ?_b:T_decBuffer, ?_fieldnum:StdTypes.Int, ?_next:T_decoderState) this = new stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState((_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>), (_b : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>), (_fieldnum : stdgo.GoInt), (_next : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
