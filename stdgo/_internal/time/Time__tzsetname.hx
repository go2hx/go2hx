package stdgo._internal.time;
function _tzsetName(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L368"
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L369"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L371"
        if (_s[(0 : stdgo.GoInt)] != ((60 : stdgo.GoUInt8))) {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L372"
            for (_i => _r in _s) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L373"
                {
                    final __value__ = _r;
                    if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32)) || __value__ == ((56 : stdgo.GoInt32)) || __value__ == ((57 : stdgo.GoInt32)) || __value__ == ((44 : stdgo.GoInt32)) || __value__ == ((45 : stdgo.GoInt32)) || __value__ == ((43 : stdgo.GoInt32))) {
                        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L375"
                        if ((_i < (3 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L376"
                            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                        };
                        //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L378"
                        return { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _2 : true };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L381"
            if (((_s.length) < (3 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L382"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L384"
            return { _0 : _s?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : true };
        } else {
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L386"
            for (_i => _r in _s) {
                //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L387"
                if (_r == ((62 : stdgo.GoInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L388"
                    return { _0 : (_s.__slice__((1 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/time/zoneinfo.go#L391"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
        };
    }
