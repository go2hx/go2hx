package stdgo._internal.internal.fuzz;
function _minimizeBytes(_v:stdgo.Slice<stdgo.GoUInt8>, _try:stdgo.Slice<stdgo.GoUInt8> -> Bool, _shouldStop:() -> Bool):Void {
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _tmp = (new stdgo.Slice<stdgo.GoUInt8>((_v.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _a0 = _tmp;
                var _a1 = _v;
                final __f__ = _a0.__copyTo__;
                __deferstack__.unshift({ ran : false, f : () -> __f__(_a1) });
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L25"
            {
                var _n = (1024 : stdgo.GoInt);
                while (_n != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L26"
                    while (((_v.length) > _n : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L27"
                        if (_shouldStop()) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L28"
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                                return;
                            };
                        };
                        var _candidate = (_v.__slice__(0, ((_v.length) - _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L31"
                        if (!_try(_candidate)) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L32"
                            break;
                        };
                        _v = _candidate;
                    };
                    _n = (_n / ((2 : stdgo.GoInt)) : stdgo.GoInt);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L40"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L41"
                    if (_shouldStop()) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L42"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
var _candidate = (_tmp.__slice__(0, ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L45"
                    (_candidate.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L46"
                    (_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L47"
                    if (!_try(_candidate)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L48"
                        {
                            _i++;
                            continue;
                        };
                    };
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L51"
                    (_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L55"
                    _i--;
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L59"
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < ((_v.length) - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L60"
                    _tmp.__copyTo__((_v.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L61"
                    {
                        var _j = (_v.length : stdgo.GoInt);
                        while ((_j > (_i + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L62"
                            if (_shouldStop()) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L63"
                                {
                                    for (defer in __deferstack__) {
                                        if (defer.ran) continue;
                                        defer.ran = true;
                                        defer.f();
                                    };
                                    return;
                                };
                            };
var _candidate = (_tmp.__slice__(0, (((_v.length) - _j : stdgo.GoInt) + _i : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L66"
                            (_candidate.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L67"
                            if (!_try(_candidate)) {
                                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L68"
                                {
                                    _j--;
                                    continue;
                                };
                            };
//"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L71"
                            (_v.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_v.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>));
_v = (_v.__slice__(0, (_candidate.length)) : stdgo.Slice<stdgo.GoUInt8>);
_j = (_v.length);
                            _j--;
                        };
                    };
                    _i++;
                };
            };
            var _printableChars = ((("012789ABCXYZabcxyz !\"#$%&\'()*+,." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L80"
            for (_i => _b in _v) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L81"
                if (_shouldStop()) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L82"
                    {
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L85"
                for (__8 => _pc in _printableChars) {
                    _v[(_i : stdgo.GoInt)] = _pc;
                    //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L87"
                    if (_try(_v)) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/minimize.go#L89"
                        break;
                    };
                    _v[(_i : stdgo.GoInt)] = _b;
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
