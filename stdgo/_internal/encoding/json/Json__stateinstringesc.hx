package stdgo._internal.encoding.json;
function _stateInStringEsc(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            final __value__ = _c;
            if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8)) || __value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((114 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstringescu._stateInStringEscU;
                return (0 : stdgo.GoInt);
            };
        };
        return @:check2r _s._error(_c, ("in string escape code" : stdgo.GoString));
    }
