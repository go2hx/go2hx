package stdgo._internal.debug.elf;
function _getString(_section:stdgo.Slice<stdgo.GoUInt8>, _start:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L720"
        if (((_start < (0 : stdgo.GoInt) : Bool) || (_start >= (_section.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L721"
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L724"
        {
            var _end = (_start : stdgo.GoInt);
            while ((_end < (_section.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L725"
                if (_section[(_end : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L726"
                    return { _0 : ((_section.__slice__(_start, _end) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString).__copy__(), _1 : true };
                };
                _end++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/elf/file.go#L729"
        return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
    }
