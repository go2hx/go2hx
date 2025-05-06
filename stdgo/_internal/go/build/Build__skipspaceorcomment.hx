package stdgo._internal.go.build;
function _skipSpaceOrComment(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1337"
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1338"
            {
                final __value__ = _data[(0 : stdgo.GoInt)];
                if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8))) {
                    _data = (_data.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1341"
                    continue;
                } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1343"
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        var _i = (stdgo._internal.bytes.Bytes_index.index(_data, stdgo._internal.go.build.Build__newline._newline) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1345"
                        if ((_i < (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1346"
                            return (null : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        _data = (_data.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1349"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1351"
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_data, stdgo._internal.go.build.Build__slashstar._slashStar)) {
                        _data = (_data.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        var _i = (stdgo._internal.bytes.Bytes_index.index(_data, stdgo._internal.go.build.Build__starslash._starSlash) : stdgo.GoInt);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1354"
                        if ((_i < (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1355"
                            return (null : stdgo.Slice<stdgo.GoUInt8>);
                        };
                        _data = (_data.__slice__((_i + (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1358"
                        continue;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1361"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1363"
        return _data;
    }
