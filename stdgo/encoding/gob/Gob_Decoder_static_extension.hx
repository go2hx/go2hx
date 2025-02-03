package stdgo.encoding.gob;
class Decoder_static_extension {
    static public function decodeValue(_dec:Decoder, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension.decodeValue(_dec, _v);
    }
    static public function decode(_dec:Decoder, _e:stdgo.AnyInterface):stdgo.Error {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _e = (_e : stdgo.AnyInterface);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension.decode(_dec, _e);
    }
    static public function _decodeTypeSequence(_dec:Decoder, _isInterface:Bool):T_typeId {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeTypeSequence(_dec, _isInterface);
    }
    static public function _nextUint(_dec:Decoder):haxe.UInt64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._nextUint(_dec);
    }
    static public function _nextInt(_dec:Decoder):haxe.Int64 {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._nextInt(_dec);
    }
    static public function _readMessage(_dec:Decoder, _nbytes:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _nbytes = (_nbytes : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._readMessage(_dec, _nbytes);
    }
    static public function _recvMessage(_dec:Decoder):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._recvMessage(_dec);
    }
    static public function _recvType(_dec:Decoder, _id:T_typeId):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._recvType(_dec, _id);
    }
    static public function _decodeIgnoredValue(_dec:Decoder, _wireId:T_typeId):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeIgnoredValue(_dec, _wireId);
    }
    static public function _decodeValue(_dec:Decoder, _wireId:T_typeId, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeValue(_dec, _wireId, _value);
    }
    static public function _getIgnoreEnginePtr(_dec:Decoder, _wireId:T_typeId):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._getIgnoreEnginePtr(_dec, _wireId);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _getDecEnginePtr(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._getDecEnginePtr(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _compileDec(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._compileDec(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _compileIgnoreSingle(_dec:Decoder, _remoteId:T_typeId):T_decEngine {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._compileIgnoreSingle(_dec, _remoteId);
    }
    static public function _compileSingle(_dec:Decoder, _remoteId:T_typeId, _ut:T_userTypeInfo):stdgo.Tuple<T_decEngine, stdgo.Error> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        return {
            final obj = stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._compileSingle(_dec, _remoteId, _ut);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _typeString(_dec:Decoder, _remoteId:T_typeId):String {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._typeString(_dec, _remoteId);
    }
    static public function _compatibleType(_dec:Decoder, _fr:stdgo._internal.reflect.Reflect_Type_.Type_, _fw:T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>):Bool {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _inProgress = (_inProgress : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._compatibleType(_dec, _fr, _fw, _inProgress);
    }
    static public function _gobDecodeOpFor(_dec:Decoder, _ut:T_userTypeInfo):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._gobDecodeOpFor(_dec, _ut);
    }
    static public function _decIgnoreOpFor(_dec:Decoder, _wireId:T_typeId, _inProgress:stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>, _depth:StdTypes.Int):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _inProgress = (_inProgress : stdgo.GoMap<stdgo._internal.encoding.gob.Gob_T_typeId.T_typeId, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decIgnoreOpFor(_dec, _wireId, _inProgress, _depth);
    }
    static public function _decOpFor(_dec:Decoder, _wireId:T_typeId, _rt:stdgo._internal.reflect.Reflect_Type_.Type_, _name:String, _inProgress:stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>):stdgo.Pointer<T_decOp> {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _name = (_name : stdgo.GoString);
        final _inProgress = (_inProgress : stdgo.GoMap<stdgo._internal.reflect.Reflect_Type_.Type_, stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_decOp.T_decOp>>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decOpFor(_dec, _wireId, _rt, _name, _inProgress);
    }
    static public function _ignoreGobDecoder(_dec:Decoder, _state:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreGobDecoder(_dec, _state);
    }
    static public function _decodeGobDecoder(_dec:Decoder, _ut:T_userTypeInfo, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _ut = (_ut : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_userTypeInfo.T_userTypeInfo>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeGobDecoder(_dec, _ut, _state, _value);
    }
    static public function _ignoreInterface(_dec:Decoder, _state:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreInterface(_dec, _state);
    }
    static public function _decodeInterface(_dec:Decoder, _ityp:stdgo._internal.reflect.Reflect_Type_.Type_, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeInterface(_dec, _ityp, _state, _value);
    }
    static public function _ignoreSlice(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreSlice(_dec, _state, _elemOp);
    }
    static public function _decodeSlice(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:T_decOp, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeSlice(_dec, _state, _value, _elemOp, _ovfl, _helper);
    }
    static public function _ignoreMap(_dec:Decoder, _state:T_decoderState, _keyOp:T_decOp, _elemOp:T_decOp):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreMap(_dec, _state, _keyOp, _elemOp);
    }
    static public function _ignoreArray(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp, _length:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreArray(_dec, _state, _elemOp, _length);
    }
    static public function _ignoreArrayHelper(_dec:Decoder, _state:T_decoderState, _elemOp:T_decOp, _length:StdTypes.Int):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreArrayHelper(_dec, _state, _elemOp, _length);
    }
    static public function _decodeMap(_dec:Decoder, _mtyp:stdgo._internal.reflect.Reflect_Type_.Type_, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value, _keyOp:T_decOp, _elemOp:T_decOp, _ovfl:stdgo.Error):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeMap(_dec, _mtyp, _state, _value, _keyOp, _elemOp, _ovfl);
    }
    static public function _decodeArray(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:T_decOp, _length:StdTypes.Int, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeArray(_dec, _state, _value, _elemOp, _length, _ovfl, _helper);
    }
    static public function _decodeArrayHelper(_dec:Decoder, _state:T_decoderState, _value:stdgo._internal.reflect.Reflect_Value.Value, _elemOp:T_decOp, _length:StdTypes.Int, _ovfl:stdgo.Error, _helper:T_decHelper):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _state = (_state : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        final _length = (_length : stdgo.GoInt);
        final _ovfl = (_ovfl : stdgo.Error);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeArrayHelper(_dec, _state, _value, _elemOp, _length, _ovfl, _helper);
    }
    static public function _ignoreSingle(_dec:Decoder, _engine:T_decEngine):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreSingle(_dec, _engine);
    }
    static public function _ignoreStruct(_dec:Decoder, _engine:T_decEngine):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._ignoreStruct(_dec, _engine);
    }
    static public function _decodeStruct(_dec:Decoder, _engine:T_decEngine, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeStruct(_dec, _engine, _value);
    }
    static public function _decodeSingle(_dec:Decoder, _engine:T_decEngine, _value:stdgo._internal.reflect.Reflect_Value.Value):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _engine = (_engine : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decEngine.T_decEngine>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._decodeSingle(_dec, _engine, _value);
    }
    static public function _freeDecoderState(_dec:Decoder, _d:T_decoderState):Void {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decoderState.T_decoderState>);
        stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._freeDecoderState(_dec, _d);
    }
    static public function _newDecoderState(_dec:Decoder, _buf:T_decBuffer):T_decoderState {
        final _dec = (_dec : stdgo.Ref<stdgo._internal.encoding.gob.Gob_Decoder.Decoder>);
        final _buf = (_buf : stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_decBuffer.T_decBuffer>);
        return stdgo._internal.encoding.gob.Gob_Decoder_static_extension.Decoder_static_extension._newDecoderState(_dec, _buf);
    }
}
