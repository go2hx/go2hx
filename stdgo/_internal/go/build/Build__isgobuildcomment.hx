package stdgo._internal.go.build;
function _isGoBuildComment(_line:stdgo.Slice<stdgo.GoUInt8>):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1529"
        if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, stdgo._internal.go.build.Build__gobuildcomment._goBuildComment)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1530"
            return false;
        };
        _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
        var _rest = (_line.__slice__((stdgo._internal.go.build.Build__gobuildcomment._goBuildComment.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1534"
        return ((_rest.length == (0 : stdgo.GoInt)) || ((stdgo._internal.bytes.Bytes_trimspace.trimSpace(_rest).length) < (_rest.length) : Bool) : Bool);
    }
