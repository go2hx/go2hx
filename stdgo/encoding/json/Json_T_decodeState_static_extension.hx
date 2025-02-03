package stdgo.encoding.json;
class T_decodeState_static_extension {
    static public function _literalInterface(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._literalInterface(_d);
    }
    static public function _objectInterface(_d:T_decodeState):stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._objectInterface(_d);
    }
    static public function _arrayInterface(_d:T_decodeState):Array<stdgo.AnyInterface> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return [for (i in stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._arrayInterface(_d)) i];
    }
    static public function _valueInterface(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._valueInterface(_d);
    }
    static public function _literalStore(_d:T_decodeState, _item:Array<std.UInt>, _v:stdgo._internal.reflect.Reflect_Value.Value, _fromQuoted:Bool):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _item = ([for (i in _item) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._literalStore(_d, _item, _v, _fromQuoted);
    }
    static public function _convertNumber(_d:T_decodeState, _s:String):stdgo.Tuple<stdgo.AnyInterface, stdgo.Error> {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._convertNumber(_d, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _object(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._object(_d, _v);
    }
    static public function _array(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._array(_d, _v);
    }
    static public function _valueQuoted(_d:T_decodeState):stdgo.AnyInterface {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._valueQuoted(_d);
    }
    static public function _value(_d:T_decodeState, _v:stdgo._internal.reflect.Reflect_Value.Value):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._value(_d, _v);
    }
    static public function _rescanLiteral(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._rescanLiteral(_d);
    }
    static public function _scanWhile(_d:T_decodeState, _op:StdTypes.Int):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _op = (_op : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._scanWhile(_d, _op);
    }
    static public function _scanNext(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._scanNext(_d);
    }
    static public function _skip(_d:T_decodeState):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._skip(_d);
    }
    static public function _addErrorContext(_d:T_decodeState, _err:stdgo.Error):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _err = (_err : stdgo.Error);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._addErrorContext(_d, _err);
    }
    static public function _saveError(_d:T_decodeState, _err:stdgo.Error):Void {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._saveError(_d, _err);
    }
    static public function _init(_d:T_decodeState, _data:Array<std.UInt>):T_decodeState {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._init(_d, _data);
    }
    static public function _readIndex(_d:T_decodeState):StdTypes.Int {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._readIndex(_d);
    }
    static public function _unmarshal(_d:T_decodeState, _v:stdgo.AnyInterface):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_T_decodeState_static_extension.T_decodeState_static_extension._unmarshal(_d, _v);
    }
}
