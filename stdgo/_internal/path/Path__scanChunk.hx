package stdgo._internal.path;
function _scanChunk(_pattern:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _star = false, _chunk = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
            while ((((_pattern.length) > (0 : stdgo.GoInt) : Bool) && (_pattern[(0 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) : Bool)) {
                _pattern = (_pattern.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _star = true;
            };
            var _inrange = (false : Bool);
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            @:label("Scan") {
                _i = (0 : stdgo.GoInt);
                while ((_i < (_pattern.length) : Bool)) {
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            {
                                final __value__ = _pattern[(_i : stdgo.GoInt)];
                                if (__value__ == ((92 : stdgo.GoUInt8))) {
                                    if (((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_pattern.length) : Bool)) {
                                        _i++;
                                    };
                                    break;
                                } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                                    _inrange = true;
                                    break;
                                } else if (__value__ == ((93 : stdgo.GoUInt8))) {
                                    _inrange = false;
                                    break;
                                } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                                    if (!_inrange) {
                                        @:jump("Scan") break;
                                    };
                                    break;
                                };
                            };
                            break;
                        };
                    };
                    _i++;
                };
            };
            return { _0 : _star, _1 : (_pattern.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _2 : (_pattern.__slice__(_i) : stdgo.GoString)?.__copy__() };
        });
    }
