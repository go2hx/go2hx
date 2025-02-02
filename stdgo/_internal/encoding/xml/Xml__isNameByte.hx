package stdgo._internal.encoding.xml;
function _isNameByte(_c:stdgo.GoUInt8):Bool {
        return (((((((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _c == ((95 : stdgo.GoUInt8)) : Bool) || _c == ((58 : stdgo.GoUInt8)) : Bool) || _c == ((46 : stdgo.GoUInt8)) : Bool) || (_c == (45 : stdgo.GoUInt8)) : Bool);
    }
