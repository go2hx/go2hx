package stdgo._internal.bytes;
function _lastIndexFunc(_s:stdgo.Slice<stdgo.GoUInt8>, _f:stdgo.GoInt32 -> Bool, _truth:Bool):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L890"
        {
            var _i = (_s.length : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __0 = (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _size = __1, _r = __0;
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L892"
                if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastrune.decodeLastRune((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.GoUInt8>));
                        _r = @:tmpset0 __tmp__._0;
                        _size = @:tmpset0 __tmp__._1;
                    };
                };
                _i = (_i - (_size) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L896"
                if (_f(_r) == (_truth)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L897"
                    return _i;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L900"
        return (-1 : stdgo.GoInt);
    }
