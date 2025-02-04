package stdgo._internal.text.template.parse;
function _hasLeftTrimMarker(_s:stdgo.GoString):Bool {
        return ((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8)) : Bool) && stdgo._internal.text.template.parse.Parse__isspace._isSpace((_s[(1 : stdgo.GoInt)] : stdgo.GoInt32)) : Bool);
    }
