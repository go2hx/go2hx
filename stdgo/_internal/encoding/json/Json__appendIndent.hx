package stdgo._internal.encoding.json;
function _appendIndent(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _prefix:stdgo.GoString, _indent:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _origLen = (_dst.length : stdgo.GoInt);
            var _scan = stdgo._internal.encoding.json.Json__newScanner._newScanner();
            {
                var _a0 = _scan;
                __deferstack__.unshift(() -> stdgo._internal.encoding.json.Json__freeScanner._freeScanner(_a0));
            };
            var _needIndent = (false : Bool);
            var _depth = (0 : stdgo.GoInt);
            for (__8 => _c in _src) {
                _scan._bytes++;
                var _v = (_scan._step(_scan, _c) : stdgo.GoInt);
                if (_v == ((9 : stdgo.GoInt))) {
                    continue;
                };
                if (_v == ((11 : stdgo.GoInt))) {
                    break;
                };
                if (((_needIndent && _v != ((5 : stdgo.GoInt)) : Bool) && (_v != (8 : stdgo.GoInt)) : Bool)) {
                    _needIndent = false;
                    _depth++;
                    _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                };
                if (_v == ((0 : stdgo.GoInt))) {
                    _dst = (_dst.__append__(_c));
                    continue;
                };
                {
                    final __value__ = _c;
                    if (__value__ == ((123 : stdgo.GoUInt8)) || __value__ == ((91 : stdgo.GoUInt8))) {
                        _needIndent = true;
                        _dst = (_dst.__append__(_c));
                    } else if (__value__ == ((44 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c));
                        _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                    } else if (__value__ == ((58 : stdgo.GoUInt8))) {
                        _dst = (_dst.__append__(_c, (32 : stdgo.GoUInt8)));
                    } else if (__value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                        if (_needIndent) {
                            _needIndent = false;
                        } else {
                            _depth--;
                            _dst = stdgo._internal.encoding.json.Json__appendNewline._appendNewline(_dst, _prefix?.__copy__(), _indent?.__copy__(), _depth);
                        };
                        _dst = (_dst.__append__(_c));
                    } else {
                        _dst = (_dst.__append__(_c));
                    };
                };
            };
            if (_scan._eof() == ((11 : stdgo.GoInt))) {
                {
                    final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (_dst.__slice__(0, _origLen) : stdgo.Slice<stdgo.GoUInt8>), _1 : _scan._err };
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return __ret__;
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : _dst, _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Error) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }