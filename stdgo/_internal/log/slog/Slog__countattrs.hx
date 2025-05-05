package stdgo._internal.log.slog;
function _countAttrs(_args:stdgo.Slice<stdgo.AnyInterface>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L150"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_args.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L151"
                _n++;
//"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L152"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_args[(_i : stdgo.GoInt)] : stdgo.GoString)) : stdgo.GoString), _1 : true };
                    } catch(_) {
                        { _0 : ("" : stdgo.GoString), _1 : false };
                    }, __10 = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L153"
                        _i++;
                    };
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/log/slog/record.go#L156"
        return _n;
    }
