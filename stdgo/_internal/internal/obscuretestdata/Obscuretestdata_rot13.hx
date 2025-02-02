package stdgo._internal.internal.obscuretestdata;
function rot13(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _out = (new stdgo.Slice<stdgo.GoUInt8>((_data.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _out.__copyTo__(_data);
        for (_i => _c in _out) {
            if (((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (77 : stdgo.GoUInt8) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (109 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_c + (13 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if (((((78 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) || (((110 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                _out[(_i : stdgo.GoInt)] = (_c - (13 : stdgo.GoUInt8) : stdgo.GoUInt8);
            };
        };
        return _out;
    }
