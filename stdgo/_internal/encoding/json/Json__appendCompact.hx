package stdgo._internal.encoding.json;
function _appendCompact(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _escape:Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _origLen = (_dst.length : stdgo.GoInt);
            var _scan = stdgo._internal.encoding.json.Json__newScanner._newScanner();
            {
                var _a0 = _scan;
                __deferstack__.unshift(() -> stdgo._internal.encoding.json.Json__freeScanner._freeScanner(_a0));
            };
            var _start = (0 : stdgo.GoInt);
            for (_i => _c in _src) {
                if ((_escape && (((_c == ((60 : stdgo.GoUInt8)) || _c == ((62 : stdgo.GoUInt8)) : Bool) || (_c == (38 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_c >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)], stdgo._internal.encoding.json.Json__hex._hex[((_c & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                    _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                if (((((_escape && _c == ((226 : stdgo.GoUInt8)) : Bool) && ((_i + (2 : stdgo.GoInt) : stdgo.GoInt) < (_src.length) : Bool) : Bool) && _src[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == ((128 : stdgo.GoUInt8)) : Bool) && ((_src[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) ^ (-1i32 : stdgo.GoInt) : stdgo.GoUInt8)) : stdgo.GoUInt8) == (168 : stdgo.GoUInt8)) : Bool)) {
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _dst = (_dst.__append__((92 : stdgo.GoUInt8), (117 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), (48 : stdgo.GoUInt8), (50 : stdgo.GoUInt8), stdgo._internal.encoding.json.Json__hex._hex[((_src[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]));
                    _start = (_i + (("\u2029" : stdgo.GoString).length) : stdgo.GoInt);
                };
                var _v = (_scan._step(_scan, _c) : stdgo.GoInt);
                if ((_v >= (9 : stdgo.GoInt) : Bool)) {
                    if (_v == ((11 : stdgo.GoInt))) {
                        break;
                    };
                    _dst = (_dst.__append__(...((_src.__slice__(_start, _i) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                    _start = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
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
            _dst = (_dst.__append__(...((_src.__slice__(_start) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
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