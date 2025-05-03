package stdgo._internal.bytes;
function _genSplit(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> {
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L347"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L348"
            return (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L350"
        if ((_sep.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L351"
            return stdgo._internal.bytes.Bytes__explode._explode(_s, _n);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L353"
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (stdgo._internal.bytes.Bytes_count.count(_s, _sep) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L356"
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>((_n : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L361"
        _n--;
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L363"
        while ((_i < _n : Bool)) {
            var _m = (stdgo._internal.bytes.Bytes_index.index(_s, _sep) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L365"
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L366"
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt), (_m + _sepSave : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L370"
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s;
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L373"
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
    }
