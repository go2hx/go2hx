package stdgo._internal.internal.abi;
function _writeVarint(_buf:stdgo.Slice<stdgo.GoUInt8>, _n:stdgo.GoInt):stdgo.GoInt {
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _b = ((_n & (127 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt8);
_n = (_n >> ((7i64 : stdgo.GoUInt64)) : stdgo.GoInt);
if (_n == ((0 : stdgo.GoInt))) {
                    _buf[(_i : stdgo.GoInt)] = _b;
                    return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
_buf[(_i : stdgo.GoInt)] = (_b | (128 : stdgo.GoUInt8) : stdgo.GoUInt8);
                _i++;
            };
        };
    }
