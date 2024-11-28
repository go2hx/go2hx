package stdgo._internal.encoding.xml;
function _isInCharacterRange(_r:stdgo.GoInt32):Bool {
        var _inrange = false;
        return _inrange = (((((_r == ((9 : stdgo.GoInt32)) || _r == ((10 : stdgo.GoInt32)) : Bool) || _r == ((13 : stdgo.GoInt32)) : Bool) || ((_r >= (32 : stdgo.GoInt32) : Bool) && (_r <= (55295 : stdgo.GoInt32) : Bool) : Bool) : Bool) || ((_r >= (57344 : stdgo.GoInt32) : Bool) && (_r <= (65533 : stdgo.GoInt32) : Bool) : Bool) : Bool) || ((_r >= (65536 : stdgo.GoInt32) : Bool) && (_r <= (1114111 : stdgo.GoInt32) : Bool) : Bool) : Bool);
    }
