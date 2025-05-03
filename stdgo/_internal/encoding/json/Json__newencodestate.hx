package stdgo._internal.encoding.json;
function _newEncodeState():stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState> {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L268"
        {
            var _v = (stdgo._internal.encoding.json.Json__encodestatepool._encodeStatePool.get() : stdgo.AnyInterface);
            if (_v != null) {
                var _e = (stdgo.Go.typeAssert((_v : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L270"
                _e.reset();
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L271"
                if ((((@:checkr _e ?? throw "null pointer dereference")._ptrSeen.length) > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L272"
                    throw stdgo.Go.toInterface(("ptrEncoder.encode should have emptied ptrSeen via defers" : stdgo.GoString));
                };
                (@:checkr _e ?? throw "null pointer dereference")._ptrLevel = (0u32 : stdgo.GoUInt);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L275"
                return _e;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode.go#L277"
        return (stdgo.Go.setRef(({ _ptrSeen : ({
            final x = new stdgo.GoMap.GoAnyInterfaceMap<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>();
            x.__defaultValue__ = () -> ({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue);
            {};
            cast x;
        } : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>) } : stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>);
    }
