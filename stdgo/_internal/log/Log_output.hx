package stdgo._internal.log;
function output(_calldepth:stdgo.GoInt, _s:stdgo.GoString):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/log/log.go#L457"
        return stdgo._internal.log.Log__std._std.output((_calldepth + (1 : stdgo.GoInt) : stdgo.GoInt), _s?.__copy__());
    }
