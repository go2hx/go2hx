package stdgo._internal.encoding.json;
function _stateInStringEsc(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        {
            final __value__ = _c;
            if (__value__ == ((98 : stdgo.GoUInt8)) || __value__ == ((102 : stdgo.GoUInt8)) || __value__ == ((110 : stdgo.GoUInt8)) || __value__ == ((114 : stdgo.GoUInt8)) || __value__ == ((116 : stdgo.GoUInt8)) || __value__ == ((92 : stdgo.GoUInt8)) || __value__ == ((47 : stdgo.GoUInt8)) || __value__ == ((34 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateInString._stateInString;
                return (0 : stdgo.GoInt);
            } else if (__value__ == ((117 : stdgo.GoUInt8))) {
                _s._step = stdgo._internal.encoding.json.Json__stateInStringEscU._stateInStringEscU;
                return (0 : stdgo.GoInt);
            };
        };
        return _s._error(_c, ("in string escape code" : stdgo.GoString));
    }