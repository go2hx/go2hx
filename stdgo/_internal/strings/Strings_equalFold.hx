package stdgo._internal.strings;
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        stdgo._internal.internal.Macro.controlFlow({
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_s.length) : Bool) && (_i < (_t.length) : Bool) : Bool), _i++, {
                var _sr = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                var _tr = (_t[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((_sr | _tr : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                    @:goto "hasUnicode";
                };
                if (_tr == (_sr)) {
                    continue;
                };
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if (((((65 : stdgo.GoUInt8) <= _sr : Bool) && (_sr <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
                    continue;
                };
                return false;
            });
            return (_s.length) == ((_t.length));
            @:label("hasUnicode") _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
            _t = (_t.__slice__(_i) : stdgo.GoString)?.__copy__();
            for (__0 => _sr in _s) {
                if ((_t.length) == ((0 : stdgo.GoInt))) {
                    return false;
                };
                var _tr:stdgo.GoInt32 = (0 : stdgo.GoInt32);
                if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoInt32);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString(_t?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _r;
                        final __tmp__1 = (_t.__slice__(_size) : stdgo.GoString)?.__copy__();
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                };
                if (_tr == (_sr)) {
                    continue;
                };
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if ((_tr < (128 : stdgo.GoInt32) : Bool)) {
                    if (((((65 : stdgo.GoInt32) <= _sr : Bool) && (_sr <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        continue;
                    };
                    return false;
                };
                var _r = (stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_sr) : stdgo.GoInt32);
                while (((_r != _sr) && (_r < _tr : Bool) : Bool)) {
                    _r = stdgo._internal.unicode.Unicode_simpleFold.simpleFold(_r);
                };
                if (_r == (_tr)) {
                    continue;
                };
                return false;
            };
            return (_t.length) == ((0 : stdgo.GoInt));
        });
    }
