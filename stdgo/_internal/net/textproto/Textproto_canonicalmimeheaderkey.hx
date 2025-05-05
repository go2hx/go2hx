package stdgo._internal.net.textproto;
function canonicalMIMEHeaderKey(_s:stdgo.GoString):stdgo.GoString {
        var _upper = (true : Bool);
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L635"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L637"
                if (!stdgo._internal.net.textproto.Textproto__validheaderfieldbyte._validHeaderFieldByte(_c)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L638"
                    return _s.__copy__();
                };
//"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L640"
                if (((_upper && ((97 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalmimeheaderkey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = @:tmpset0 __tmp__._0.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L642"
                    return _s.__copy__();
                };
//"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L644"
                if (((!_upper && ((65 : stdgo.GoUInt8) <= _c : Bool) : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                    {
                        var __tmp__ = stdgo._internal.net.textproto.Textproto__canonicalmimeheaderkey._canonicalMIMEHeaderKey((_s : stdgo.Slice<stdgo.GoUInt8>));
                        _s = @:tmpset0 __tmp__._0.__copy__();
                    };
                    //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L646"
                    return _s.__copy__();
                };
_upper = _c == ((45 : stdgo.GoUInt8));
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L650"
        return _s?.__copy__();
    }
