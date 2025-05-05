package stdgo._internal.bytes;
function index(_s:stdgo.Slice<stdgo.GoUInt8>, _sep:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoInt {
        var _n = (_sep.length : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1264"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1266"
            return (0 : stdgo.GoInt);
        } else if (_n == ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1268"
            return stdgo._internal.bytes.Bytes_indexbyte.indexByte(_s, _sep[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1270"
            if (stdgo._internal.bytes.Bytes_equal.equal(_sep, _s)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1271"
                return (0 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1273"
            return (-1 : stdgo.GoInt);
        } else if ((_n > (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1275"
            return (-1 : stdgo.GoInt);
        } else if ((_n <= stdgo._internal.internal.bytealg.Bytealg_maxlen.maxLen : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1278"
            if (((_s.length) <= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1279"
                return stdgo._internal.internal.bytealg.Bytealg_index.index(_s, _sep);
            };
            var _c0 = (_sep[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _c1 = (_sep[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
            var _i = (0 : stdgo.GoInt);
            var _t = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            var _fails = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1286"
            while ((_i < _t : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1287"
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o = (stdgo._internal.bytes.Bytes_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.Slice<stdgo.GoUInt8>), _c0) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1291"
                    if ((_o < (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1292"
                        return (-1 : stdgo.GoInt);
                    };
                    _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1296"
                if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1297"
                    return _i;
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1299"
                _fails++;
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1300"
                _i++;
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1302"
                if ((_fails > stdgo._internal.internal.bytealg.Bytealg_cutover.cutover(_i) : Bool)) {
                    var _r = (stdgo._internal.internal.bytealg.Bytealg_index.index((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _sep) : stdgo.GoInt);
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1304"
                    if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1305"
                        return (_r + _i : stdgo.GoInt);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1307"
                    return (-1 : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1310"
            return (-1 : stdgo.GoInt);
        };
        var _c0 = (_sep[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _c1 = (_sep[(1 : stdgo.GoInt)] : stdgo.GoUInt8);
        var _i = (0 : stdgo.GoInt);
        var _fails = (0 : stdgo.GoInt);
        var _t = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1317"
        while ((_i < _t : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1318"
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o = (stdgo._internal.bytes.Bytes_indexbyte.indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.Slice<stdgo.GoUInt8>), _c0) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1320"
                if ((_o < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1321"
                    break;
                };
                _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1325"
            if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && stdgo._internal.bytes.Bytes_equal.equal((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _sep) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1326"
                return _i;
            };
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1328"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1329"
            _fails++;
            //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1330"
            if (((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_i < _t : Bool) : Bool)) {
                var _j = (stdgo._internal.internal.bytealg.Bytealg_indexrabinkarpbytes.indexRabinKarpBytes((_s.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), _sep) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1340"
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1341"
                    return (-1 : stdgo.GoInt);
                };
                //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1343"
                return (_i + _j : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/bytes/bytes.go#L1346"
        return (-1 : stdgo.GoInt);
    }
