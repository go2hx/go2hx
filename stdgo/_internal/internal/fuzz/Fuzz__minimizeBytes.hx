package stdgo._internal.internal.fuzz;
function _minimizeBytes(_v:stdgo.Slice<stdgo.GoUInt8>, _try:stdgo.Slice<stdgo.GoUInt8> -> Bool, _shouldStop:() -> Bool):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _tmp;
                var _a1 = _v;
                __deferstack__.unshift(() -> stdgo.Go.copySlice(_a0, _a1));
            };
            {
                var _n = (1024 : stdgo.GoInt);
                while (_n != ((0 : stdgo.GoInt))) {
                    while (((_v.length) > _n : Bool)) {
                        if (_shouldStop()) {
                            {
                                for (defer in __deferstack__) {
                                    defer();
                                };
                                return;
                            };
                        };
                        var _candidate = (_v.__slice__(0, ((_v.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        if (!_try(_candidate)) {
                            break;
                        };
                        _v = _candidate;
                    };
                    _n = (_n / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    if (_shouldStop()) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return;
                        };
                    };
var _candidate = (_tmp.__slice__(0, ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
stdgo.Go.copySlice((_candidate.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), (_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
stdgo.Go.copySlice((_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
if (!_try(_candidate)) {
                        {
                            _i++;
                            continue;
                        };
                    };
stdgo.Go.copySlice((_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
_i--;
                    _i++;
                };
            };
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    stdgo.Go.copySlice(_tmp, (_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
{
                        var _j = (_v.length : stdgo.GoInt);
                        while ((_j > (_i + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            if (_shouldStop()) {
                                {
                                    for (defer in __deferstack__) {
                                        defer();
                                    };
                                    return;
                                };
                            };
var _candidate = (_tmp.__slice__(0, (((_v.length) - _j : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
stdgo.Go.copySlice((_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
if (!_try(_candidate)) {
                                {
                                    _j--;
                                    continue;
                                };
                            };
stdgo.Go.copySlice((_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>), (_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
_j = (_v.length);
                            _j--;
                        };
                    };
                    _i++;
                };
            };
            var _printableChars = (("012789ABCXYZabcxyz !\"#$%&\'()*+,." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _b in _v) {
                if (_shouldStop()) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return;
                    };
                };
                for (__8 => _pc in _printableChars) {
                    _v[(_i : stdgo.GoInt)] = _pc;
                    if (_try(_v)) {
                        break;
                    };
                    _v[(_i : stdgo.GoInt)] = _b;
                };
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
    }
