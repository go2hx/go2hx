package stdgo._internal.bytes;
function lastIndex(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (_sep.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L111"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L113"
            return (_s.length);
        } else if (_n == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L115"
            return stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_s, _sep[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L117"
            if (stdgo._internal.bytes.Bytes_equal.equal(_s, _sep)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L118"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L120"
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L122"
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg_hashstrrevbytes.hashStrRevBytes(_sep), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last = ((_s.length) - _n : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L128"
        {
            var _i = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= _last : Bool)) {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L131"
        if (((_h == _hashss) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(_last) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L132"
            return _last;
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L134"
        {
            var _i = (_last - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
_h = (_h - ((_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L138"
                if (((_h == _hashss) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L139"
                    return _i;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L142"
        return (-1 : stdgo.GoInt);
    }
