package stdgo._internal.bytes;
function toValidUTF8(_s:stdgo.Slice<stdgo.GoUInt8>, _replacement:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_s.length) + (_replacement.length) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _invalid = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L735"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L737"
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L738"
                    _i++;
                    _invalid = false;
                    _b = (_b.__append__(_c) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L741"
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L744"
                if (_wid == ((1 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L745"
                    _i++;
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L746"
                    if (!_invalid) {
                        _invalid = true;
                        _b = (_b.__append__(...(_replacement : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L750"
                    continue;
                };
                _invalid = false;
                _b = (_b.__append__(...((_s.__slice__(_i, (_i + _wid : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L756"
        return _b;
    }
