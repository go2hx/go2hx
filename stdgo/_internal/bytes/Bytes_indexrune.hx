package stdgo._internal.bytes;
function indexRune(_s:stdgo.Slice<stdgo.GoUInt8>, _r:stdgo.GoInt32):stdgo.GoInt {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            return stdgo._internal.bytes.Bytes_indexbyte.indexByte(_s, (_r : stdgo.GoUInt8));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r1:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                    if (_r1 == ((65533 : stdgo.GoInt32))) {
                        return _i;
                    };
                    _i = (_i + (_n) : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r)) {
            return (-1 : stdgo.GoInt);
        } else {
            var _b:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
            var _n = (stdgo._internal.unicode.utf8.Utf8_encoderune.encodeRune((_b.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>), _r) : stdgo.GoInt);
            return stdgo._internal.bytes.Bytes_index.index(_s, (_b.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
        };
    }
