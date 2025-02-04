package stdgo._internal.bytes;
function fields(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        var _n = (0 : stdgo.GoInt);
        var _wasSpace = (1 : stdgo.GoInt);
        var _setBits = ((0 : stdgo.GoUInt8) : stdgo.GoUInt8);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _r = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
_setBits = (_setBits | (_r) : stdgo.GoUInt8);
var _isSpace = (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
_n = (_n + ((_wasSpace & (-1 ^ _isSpace) : stdgo.GoInt)) : stdgo.GoInt);
_wasSpace = _isSpace;
                _i++;
            };
        };
        if ((_setBits >= (128 : stdgo.GoUInt8) : Bool)) {
            return stdgo._internal.bytes.Bytes_fieldsfunc.fieldsFunc(_s, stdgo._internal.unicode.Unicode_isspace.isSpace);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _na = (0 : stdgo.GoInt);
        var _fieldStart = (0 : stdgo.GoInt);
        var _i = (0 : stdgo.GoInt);
        while (((_i < (_s.length) : Bool) && (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        _fieldStart = _i;
        while ((_i < (_s.length) : Bool)) {
            if (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                _i++;
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i, _i) : stdgo.Slice<stdgo.GoUInt8>);
            _na++;
            _i++;
            while (((_i < (_s.length) : Bool) && (stdgo._internal.bytes.Bytes__asciispace._asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                _i++;
            };
            _fieldStart = _i;
        };
        if ((_fieldStart < (_s.length) : Bool)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, (_s.length), (_s.length)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _a;
    }
