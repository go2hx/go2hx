package stdgo._internal.internal.coverage.uleb128;
function appendUleb128(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt):stdgo.Slice<stdgo.GoUInt8> {
        while (true) {
            var _c = ((_v & (127u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            _v = (_v >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
            if (_v != ((0u32 : stdgo.GoUInt))) {
                _c = (_c | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            _b = (_b.__append__(_c));
            if ((_c & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                break;
            };
        };
        return _b;
    }
