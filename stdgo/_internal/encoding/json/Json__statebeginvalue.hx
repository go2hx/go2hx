package stdgo._internal.encoding.json;
function _stateBeginValue(_s:stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, _c:stdgo.GoUInt8):stdgo.GoInt {
        if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
            return (9 : stdgo.GoInt);
        };
        {
            final __value__ = _c;
            if (__value__ == ((123 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginstringorempty._stateBeginStringOrEmpty;
                return @:check2r _s._pushParseState(_c, (0 : stdgo.GoInt), (2 : stdgo.GoInt));
            } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statebeginvalueorempty._stateBeginValueOrEmpty;
                return @:check2r _s._pushParseState(_c, (2 : stdgo.GoInt), (6 : stdgo.GoInt));
            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateinstring._stateInString;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((45 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__stateneg._stateNeg;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((48 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__state0._state0;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((116 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statet._stateT;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((102 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__statef._stateF;
                return (1 : stdgo.GoInt);
            } else if (__value__ == ((110 : stdgo.GoUInt8))) {
                (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__staten._stateN;
                return (1 : stdgo.GoInt);
            };
        };
        if ((((49 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._step = stdgo._internal.encoding.json.Json__state1._state1;
            return (1 : stdgo.GoInt);
        };
        return @:check2r _s._error(_c, ("looking for beginning of value" : stdgo.GoString));
    }
