package stdgo._internal.net.textproto;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.errors.Errors;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.net.Net;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
function canonicalMIMEHeaderKey(_s:stdgo.GoString):stdgo.GoString {
        var _upper = (true : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (!stdgo._internal.net.textproto.Textproto__validHeaderFieldByte._validHeaderFieldByte(_c)) {
                    return _s.__copy__();
                };
if (((_upper && ((97 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalMIMEHeaderKey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = @:tmpset0 __tmp__._0.__copy__();
                    };
                    return _s.__copy__();
                };
if (((!_upper && ((65 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalMIMEHeaderKey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = @:tmpset0 __tmp__._0.__copy__();
                    };
                    return _s.__copy__();
                };
_upper = _c == ((45 : stdgo.GoUInt8));
                _i++;
            };
        };
        return _s?.__copy__();
    }
