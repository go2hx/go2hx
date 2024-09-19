package stdgo._internal.bytes;
function trimSpace(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _start = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_start < (_s.length) : Bool), _start++, {
            var _c = (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.bytes.Bytes_trimFunc.trimFunc((_s.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            };
            if (stdgo._internal.bytes.Bytes__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        var _stop = (_s.length : stdgo.GoInt);
        stdgo.Go.cfor((_stop > _start : Bool), _stop--, {
            var _c = (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.bytes.Bytes_trimFunc.trimFunc((_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.unicode.Unicode_isSpace.isSpace);
            };
            if (stdgo._internal.bytes.Bytes__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        if (_start == (_stop)) {
            return (null : stdgo.Slice<stdgo.GoUInt8>);
        };
        return (_s.__slice__(_start, _stop) : stdgo.Slice<stdgo.GoUInt8>);
    }
