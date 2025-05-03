package stdgo._internal.time;
function _tzsetOffset(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _offset = (0 : stdgo.GoInt), _rest = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L399"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L400"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _neg = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L403"
        if (_s[(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        } else if (_s[(0 : stdgo.GoInt)] == ((45 : stdgo.GoUInt8))) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _neg = true;
        };
        var _hours:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum(_s?.__copy__(), (0 : stdgo.GoInt), (168 : stdgo.GoInt));
            _hours = @:tmpset0 __tmp__._0;
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L414"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L415"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _off = (_hours * (3600 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L418"
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L419"
            if (_neg) {
                _off = -_off;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L422"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _off, _1 : _s?.__copy__(), _2 : true };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _mins:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _mins = @:tmpset0 __tmp__._0;
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L427"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L428"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        _off = (_off + ((_mins * (60 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L431"
        if (((_s.length == (0 : stdgo.GoInt)) || (_s[(0 : stdgo.GoInt)] != (58 : stdgo.GoUInt8)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L432"
            if (_neg) {
                _off = -_off;
            };
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L435"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _off, _1 : _s?.__copy__(), _2 : true };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        var _secs:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var __tmp__ = stdgo._internal.time.Time__tzsetnum._tzsetNum((_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (0 : stdgo.GoInt), (59 : stdgo.GoInt));
            _secs = @:tmpset0 __tmp__._0;
            _s = @:tmpset0 __tmp__._1?.__copy__();
            _ok = @:tmpset0 __tmp__._2;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L440"
        if (!_ok) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L441"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (0 : stdgo.GoInt), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _offset = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        _off = (_off + (_secs) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L445"
        if (_neg) {
            _off = -_off;
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L448"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _off, _1 : _s?.__copy__(), _2 : true };
            _offset = __tmp__._0;
            _rest = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
