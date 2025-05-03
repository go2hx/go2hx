package stdgo._internal.net.http.internal;
function _parseHexUint(_v:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoUInt64), _err = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L244"
        for (_i => _b in _v) {
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L245"
            if ((((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                _b = (_b - (48 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                _b = ((_b - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else if ((((65 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                _b = ((_b - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L253"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("invalid byte in chunk length" : stdgo.GoString)) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L255"
            if (_i == ((16 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L256"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } = { _0 : (0i64 : stdgo.GoUInt64), _1 : stdgo._internal.errors.Errors_new_.new_(("http chunk length too large" : stdgo.GoString)) };
                    _n = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
            _n = (_n << ((4i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
            _n = (_n | ((_b : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/http/internal/chunked.go#L261"
        return { _0 : _n, _1 : _err };
    }
