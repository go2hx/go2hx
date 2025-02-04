package stdgo._internal.unicode.utf16;
function encode(_s:stdgo.Slice<stdgo.GoInt32>):stdgo.Slice<stdgo.GoUInt16> {
        var _n = (_s.length : stdgo.GoInt);
        for (__0 => _v in _s) {
            if ((_v >= (65536 : stdgo.GoInt32) : Bool)) {
                _n++;
            };
        };
        var _a = (new stdgo.Slice<stdgo.GoUInt16>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt16>);
        _n = (0 : stdgo.GoInt);
        for (__1 => _v in _s) {
            if ((((0 : stdgo.GoInt32) <= _v : Bool) && (_v < (55296 : stdgo.GoInt32) : Bool) : Bool) || (((57344 : stdgo.GoInt32) <= _v : Bool) && (_v < (65536 : stdgo.GoInt32) : Bool) : Bool)) {
                _a[(_n : stdgo.GoInt)] = (_v : stdgo.GoUInt16);
                _n++;
            } else if ((((65536 : stdgo.GoInt32) <= _v : Bool) && (_v <= (1114111 : stdgo.GoInt32) : Bool) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf16.Utf16_encoderune.encodeRune(_v), _r1:stdgo.GoInt32 = __tmp__._0, _r2:stdgo.GoInt32 = __tmp__._1;
                _a[(_n : stdgo.GoInt)] = (_r1 : stdgo.GoUInt16);
                _a[(_n + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_r2 : stdgo.GoUInt16);
                _n = (_n + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            } else {
                _a[(_n : stdgo.GoInt)] = (65533 : stdgo.GoUInt16);
                _n++;
            };
        };
        return (_a.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt16>);
    }
