package stdgo._internal.internal.coverage.uleb128;
function appendUleb128(_b:stdgo.Slice<stdgo.GoUInt8>, _v:stdgo.GoUInt):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/uleb128/uleb128.go#L8"
        while (true) {
            var _c = ((_v & (127u32 : stdgo.GoUInt) : stdgo.GoUInt) : stdgo.GoUInt8);
            _v = (_v >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoUInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/uleb128/uleb128.go#L11"
            if (_v != ((0u32 : stdgo.GoUInt))) {
                _c = (_c | ((128 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            };
            _b = (_b.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/uleb128/uleb128.go#L15"
            if ((_c & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/coverage/uleb128/uleb128.go#L16"
                break;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/uleb128/uleb128.go#L19"
        return _b;
    }
