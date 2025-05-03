package stdgo._internal.log;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.log.Log__std._std, __tmp__1 = stdgo._internal.log.Log__bufferpool._bufferPool, __tmp__2 = stdgo._internal.log.Log__tests._tests;
            stdgo._internal.log.internal.Internal_defaultoutput.defaultOutput = function(_pc:stdgo.GoUIntptr, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
                //"file:///home/runner/.go/go1.21.3/src/log/log.go#L251"
                return stdgo._internal.log.Log__std._std._output(_pc, (0 : stdgo.GoInt), function(_buf:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
                    //"file:///home/runner/.go/go1.21.3/src/log/log.go#L252"
                    return (_buf.__append__(...(_data : Array<stdgo.GoUInt8>)) : stdgo.Slice<stdgo.GoUInt8>);
                });
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
