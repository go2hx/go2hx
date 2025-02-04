package stdgo._internal.bytes;
function _genSplit(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        if ((_sep.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.bytes.Bytes__explode._explode(_s, _n);
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (stdgo._internal.bytes.Bytes_count.count(_s, _sep) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        _n--;
        var _i = (0 : stdgo.GoInt);
        while ((_i < _n : Bool)) {
            var _m = (stdgo._internal.bytes.Bytes_index.index(_s, _sep) : stdgo.GoInt);
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt), (_m + _sepSave : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s;
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    }
