package stdgo._internal.time;
function _nextStdChunk(_layout:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        var _prefix = ("" : stdgo.GoString), _std = (0 : stdgo.GoInt), _suffix = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L185"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_layout.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L186"
                {
                    var _c = (_layout[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    {
                        final __value__ = _c;
                        if (__value__ == ((74 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L188"
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Jan" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L189"
                                if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("January" : stdgo.GoString)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L190"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (257 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L192"
                                if (!stdgo._internal.time.Time__startswithlowercase._startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__())) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L193"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (258 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                        } else if (__value__ == ((77 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L198"
                            if (((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L199"
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("Mon" : stdgo.GoString))) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L200"
                                    if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Monday" : stdgo.GoString)) : Bool)) {
                                        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L201"
                                        return {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (261 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                            _prefix = __tmp__._0;
                                            _std = __tmp__._1;
                                            _suffix = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L203"
                                    if (!stdgo._internal.time.Time__startswithlowercase._startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__())) {
                                        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L204"
                                        return {
                                            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (262 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                            _prefix = __tmp__._0;
                                            _std = __tmp__._1;
                                            _suffix = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L207"
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("MST" : stdgo.GoString))) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L208"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (23 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                        } else if (__value__ == ((48 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L213"
                            if (((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((49 : stdgo.GoUInt8) <= _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (54 : stdgo.GoUInt8) : Bool) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L214"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : stdgo._internal.time.Time__std0x._std0x[((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (49 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L216"
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L217"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (267 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((49 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L221"
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L222"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (524 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L224"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (259 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((50 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L227"
                            if ((((_layout.length) >= (_i + (4 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L228"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L230"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (263 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((95 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L233"
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L235"
                                if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L236"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L238"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (264 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L240"
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((95 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L241"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (266 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((51 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L245"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (525 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((52 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L248"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (527 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((53 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L251"
                            return {
                                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (529 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((80 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L254"
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (77 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L255"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (533 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((112 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L259"
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (109 : stdgo.GoUInt8)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L260"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (534 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((45 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L264"
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-070000" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L265"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (30 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L267"
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00:00" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L268"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (33 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L270"
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-0700" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L271"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (29 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L273"
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L274"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (32 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L276"
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L277"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (31 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((90 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L281"
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z070000" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L282"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (25 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L284"
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00:00" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L285"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (28 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L287"
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z0700" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L288"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (24 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L290"
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L291"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (27 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L293"
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07" : stdgo.GoString)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L294"
                                return {
                                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (26 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((46 : stdgo.GoInt)) || __value__ == ((44 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/time/format.go#L298"
                            if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_layout.length) : Bool) && (((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) || (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (57 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                                var _ch = (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                                var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L301"
                                while (((_j < (_layout.length) : Bool) && (_layout[(_j : stdgo.GoInt)] == _ch) : Bool)) {
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L302"
                                    _j++;
                                };
                                //"file:///home/runner/.go/go1.21.3/src/time/format.go#L305"
                                if (!stdgo._internal.time.Time__isdigit._isDigit(_layout.__copy__(), _j)) {
                                    var _code = (34 : stdgo.GoInt);
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L307"
                                    if (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((57 : stdgo.GoUInt8))) {
                                        _code = (35 : stdgo.GoInt);
                                    };
                                    var _std = (stdgo._internal.time.Time__stdfracsecond._stdFracSecond(_code, (_j - ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt), _c) : stdgo.GoInt);
                                    //"file:///home/runner/.go/go1.21.3/src/time/format.go#L311"
                                    return {
                                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : _std, _2 : (_layout.__slice__(_j) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                        };
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/format.go#L316"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : _layout?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _prefix = __tmp__._0;
            _std = __tmp__._1;
            _suffix = __tmp__._2;
            __tmp__;
        };
    }
