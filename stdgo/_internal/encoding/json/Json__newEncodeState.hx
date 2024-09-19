package stdgo._internal.encoding.json;
function _newEncodeState():stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState> {
        {
            var _v = (stdgo._internal.encoding.json.Json__encodeStatePool._encodeStatePool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _e = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
                _e.reset();
                if (((_e._ptrSeen.length) > (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString));
                };
                _e._ptrLevel = (0u32 : stdgo.GoUInt);
                return _e;
            };
        };
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) } : stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState)) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
    }
