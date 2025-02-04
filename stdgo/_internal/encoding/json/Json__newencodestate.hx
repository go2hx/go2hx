package stdgo._internal.encoding.json;
function _newEncodeState():stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> {
        {
            var _v = (@:check2 stdgo._internal.encoding.json.Json__encodestatepool._encodeStatePool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _e = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
                @:check2r _e.reset();
                if ((((@:checkr _e ?? throw "null pointer dereference")._ptrSeen.length) > (0 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString));
                };
                (@:checkr _e ?? throw "null pointer dereference")._ptrLevel = (0u32 : stdgo.GoUInt);
                return _e;
            };
        };
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>) } : stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
    }
