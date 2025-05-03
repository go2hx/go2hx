package stdgo._internal.time;
function _tzsetNum(_s:stdgo.GoString, _min:stdgo.GoInt, _max:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _num = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L534"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L535"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _num = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        _num = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L538"
        for (_i => _r in _s) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L539"
            if (((_r < (48 : stdgo.GoInt32) : Bool) || (_r > (57 : stdgo.GoInt32) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L540"
                if (((_i == (0 : stdgo.GoInt)) || (_num < _min : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L541"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                        _num = __tmp__._0;
                        _rest = __tmp__._1;
                        _ok = __tmp__._2;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L543"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _num, _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : true };
                    _num = __tmp__._0;
                    _rest = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
            _num = (_num * ((10 : stdgo.GoInt)) : stdgo.GoInt);
            _num = (_num + (((_r : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L547"
            if ((_num > _max : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L548"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                    _num = __tmp__._0;
                    _rest = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L551"
        if ((_num < _min : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L552"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _num = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L554"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _num, _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : true };
            _num = __tmp__._0;
            _rest = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
