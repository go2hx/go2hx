package stdgo._internal.debug.pe;
function _getString(_section:stdgo.Slice<stdgo.GoUInt8>, _start:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L194"
        if (((_start < (0 : stdgo.GoInt) : Bool) || (_start >= (_section.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L195"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L198"
        {
            var _end = (_start : stdgo.GoInt);
            while ((_end < (_section.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L199"
                if (_section[(_end : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L200"
                    return { _0 : ((_section.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : true };
                };
                _end++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/pe/file.go#L203"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
    }
