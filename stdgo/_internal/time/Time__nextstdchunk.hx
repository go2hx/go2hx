package stdgo._internal.time;
function _nextStdChunk(_layout:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } {
        var _prefix = ("" : stdgo.GoString), _std = (0 : stdgo.GoInt), _suffix = ("" : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_layout.length) : Bool)) {
                {
                    var _c = (_layout[(_i : stdgo.GoInt)] : stdgo.GoInt);
                    {
                        final __value__ = _c;
                        if (__value__ == ((74 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Jan" : stdgo.GoString)) : Bool)) {
                                if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("January" : stdgo.GoString)) : Bool)) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (257 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                if (!stdgo._internal.time.Time__startswithlowercase._startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__())) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (258 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                        } else if (__value__ == ((77 : stdgo.GoInt))) {
                            if (((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("Mon" : stdgo.GoString))) {
                                    if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Monday" : stdgo.GoString)) : Bool)) {
                                        return {
                                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (261 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                            _prefix = __tmp__._0;
                                            _std = __tmp__._1;
                                            _suffix = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                    if (!stdgo._internal.time.Time__startswithlowercase._startsWithLowerCase((_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__())) {
                                        return {
                                            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (262 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                            _prefix = __tmp__._0;
                                            _std = __tmp__._1;
                                            _suffix = __tmp__._2;
                                            __tmp__;
                                        };
                                    };
                                };
                                if ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == (("MST" : stdgo.GoString))) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (23 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                            };
                        } else if (__value__ == ((48 : stdgo.GoInt))) {
                            if (((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((49 : stdgo.GoUInt8) <= _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : Bool) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] <= (54 : stdgo.GoUInt8) : Bool) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : stdgo._internal.time.Time__std0x._std0x[((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] - (49 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)], _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((48 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (267 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((49 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (53 : stdgo.GoUInt8)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (524 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (259 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((50 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (4 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (4 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (263 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((95 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("2006" : stdgo.GoString)) : Bool)) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__(), _1 : (275 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                        _prefix = __tmp__._0;
                                        _std = __tmp__._1;
                                        _suffix = __tmp__._2;
                                        __tmp__;
                                    };
                                };
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (264 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if (((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && _layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((95 : stdgo.GoUInt8)) : Bool) && (_layout[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] == (50 : stdgo.GoUInt8)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (266 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((51 : stdgo.GoInt))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (525 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((52 : stdgo.GoInt))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (527 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((53 : stdgo.GoInt))) {
                            return {
                                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (529 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                _prefix = __tmp__._0;
                                _std = __tmp__._1;
                                _suffix = __tmp__._2;
                                __tmp__;
                            };
                        } else if (__value__ == ((80 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (77 : stdgo.GoUInt8)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (533 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((112 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (2 : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (109 : stdgo.GoUInt8)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (534 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((45 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-070000" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (30 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00:00" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (33 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-0700" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (29 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07:00" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (32 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("-07" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (31 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((90 : stdgo.GoInt))) {
                            if ((((_layout.length) >= (_i + (7 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z070000" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (25 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (7 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (9 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00:00" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (28 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (9 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (5 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z0700" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (24 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (5 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (6 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07:00" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (27 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (6 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                            if ((((_layout.length) >= (_i + (3 : stdgo.GoInt) : stdgo.GoInt) : Bool) && ((_layout.__slice__(_i, (_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) == ("Z07" : stdgo.GoString)) : Bool)) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : (26 : stdgo.GoInt), _2 : (_layout.__slice__((_i + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                                    _prefix = __tmp__._0;
                                    _std = __tmp__._1;
                                    _suffix = __tmp__._2;
                                    __tmp__;
                                };
                            };
                        } else if (__value__ == ((46 : stdgo.GoInt)) || __value__ == ((44 : stdgo.GoInt))) {
                            if ((((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_layout.length) : Bool) && (((_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (48 : stdgo.GoUInt8)) || (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == (57 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                                var _ch = (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
                                var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                                while (((_j < (_layout.length) : Bool) && (_layout[(_j : stdgo.GoInt)] == _ch) : Bool)) {
                                    _j++;
                                };
                                if (!stdgo._internal.time.Time__isdigit._isDigit(_layout.__copy__(), _j)) {
                                    var _code = (34 : stdgo.GoInt);
                                    if (_layout[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((57 : stdgo.GoUInt8))) {
                                        _code = (35 : stdgo.GoInt);
                                    };
                                    var _std = (stdgo._internal.time.Time__stdfracsecond._stdFracSecond(_code, (_j - ((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt), _c) : stdgo.GoInt);
                                    return {
                                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : (_layout.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString).__copy__(), _1 : _std, _2 : (_layout.__slice__(_j) : stdgo.GoString).__copy__() };
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
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.GoString; } = { _0 : _layout?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : (stdgo.Go.str() : stdgo.GoString)?.__copy__() };
            _prefix = __tmp__._0;
            _std = __tmp__._1;
            _suffix = __tmp__._2;
            __tmp__;
        };
    }
