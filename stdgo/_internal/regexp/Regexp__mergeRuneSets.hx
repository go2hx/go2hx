package stdgo._internal.regexp;
function _mergeRuneSets(_leftRunes:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _rightRunes:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _leftPC:stdgo.GoUInt32, _rightPC:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _leftLen = ((_leftRunes : stdgo.Slice<stdgo.GoInt32>).length : stdgo.GoInt);
            var _rightLen = ((_rightRunes : stdgo.Slice<stdgo.GoInt32>).length : stdgo.GoInt);
            if ((((_leftLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) || ((_rightLen & (1 : stdgo.GoInt) : stdgo.GoInt) != (0 : stdgo.GoInt)) : Bool)) {
                throw stdgo.Go.toInterface(("mergeRuneSets odd length []rune" : stdgo.GoString));
            };
            var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _rx = __1, _lx = __0;
            var _merged = (new stdgo.Slice<stdgo.GoInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
            var _next = (new stdgo.Slice<stdgo.GoUInt32>((0 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt32>);
            var _ok = (true : Bool);
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        if (!_ok) {
                            _merged = (null : stdgo.Slice<stdgo.GoInt32>);
                            _next = (null : stdgo.Slice<stdgo.GoUInt32>);
                        };
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                            return;
                        };
                    } catch(__exception__) {
                        var exe:Dynamic = __exception__.native;
                        if ((exe is haxe.ValueException)) exe = exe.value;
                        if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                            if (__exception__.message == "__return__") throw "__return__";
                            exe = stdgo.Go.toInterface(__exception__.message);
                        };
                        stdgo.Go.recover_exception = exe;
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return;
                    };
                };
                a();
            });
            var _ix = (-1 : stdgo.GoInt);
            var _extend = function(_newLow:stdgo.Pointer<stdgo.GoInt>, _newArray:stdgo.Ref<stdgo.Slice<stdgo.GoInt32>>, _pc:stdgo.GoUInt32):Bool {
                var __deferstack__:Array<Void -> Void> = [];
                try {
                    if (((_ix > (0 : stdgo.GoInt) : Bool) && (((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)] <= _merged[(_ix : stdgo.GoInt)] : Bool) : Bool)) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return false;
                        };
                    };
                    _merged = (_merged.__append__(((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value : stdgo.GoInt)], ((_newArray : stdgo.Slice<stdgo.GoInt32>))[(_newLow.value + (1 : stdgo.GoInt) : stdgo.GoInt)]));
                    _newLow.value = (_newLow.value + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _ix = (_ix + ((2 : stdgo.GoInt)) : stdgo.GoInt);
                    _next = (_next.__append__(_pc));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return true;
                    };
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                        return false;
                    };
                } catch(__exception__) {
                    var exe:Dynamic = __exception__.native;
                    if ((exe is haxe.ValueException)) exe = exe.value;
                    if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                        if (__exception__.message == "__return__") throw "__return__";
                        exe = stdgo.Go.toInterface(__exception__.message);
                    };
                    stdgo.Go.recover_exception = exe;
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                    return false;
                };
            };
            while (((_lx < _leftLen : Bool) || (_rx < _rightLen : Bool) : Bool)) {
                if ((_rx >= _rightLen : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_lx), _leftRunes, _leftPC);
                } else if ((_lx >= _leftLen : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_rx), _rightRunes, _rightPC);
                } else if ((((_rightRunes : stdgo.Slice<stdgo.GoInt32>))[(_rx : stdgo.GoInt)] < ((_leftRunes : stdgo.Slice<stdgo.GoInt32>))[(_lx : stdgo.GoInt)] : Bool)) {
                    _ok = _extend(stdgo.Go.pointer(_rx), _rightRunes, _rightPC);
                } else {
                    _ok = _extend(stdgo.Go.pointer(_lx), _leftRunes, _leftPC);
                };
                if (!_ok) {
                    {
                        final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : stdgo._internal.regexp.Regexp__noRune._noRune, _1 : stdgo._internal.regexp.Regexp__noNext._noNext };
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return __ret__;
                    };
                };
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : _merged, _1 : _next };
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
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
            final __ret__:{ var _0 : stdgo.Slice<stdgo.GoInt32>; var _1 : stdgo.Slice<stdgo.GoUInt32>; } = { _0 : (null : stdgo.Slice<stdgo.GoInt32>), _1 : (null : stdgo.Slice<stdgo.GoUInt32>) };
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
