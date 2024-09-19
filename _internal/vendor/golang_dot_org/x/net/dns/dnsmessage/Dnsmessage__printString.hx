package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _printString(_str:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString {
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_str.length)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_str.length) : Bool), _i++, {
                var _c = (_str[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((((((_c == ((46 : stdgo.GoUInt8)) || _c == ((45 : stdgo.GoUInt8)) : Bool) || _c == ((32 : stdgo.GoUInt8)) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    _buf = (_buf.__append__(_c));
                    continue;
                };
                var _upper = (_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                var _lower = (((_c << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8)) >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8);
                _buf = (_buf.__append__((92 : stdgo.GoUInt8), (120 : stdgo.GoUInt8), ("0123456789abcdef" : stdgo.GoString)[(_upper : stdgo.GoInt)], ("0123456789abcdef" : stdgo.GoString)[(_lower : stdgo.GoInt)]));
            });
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
