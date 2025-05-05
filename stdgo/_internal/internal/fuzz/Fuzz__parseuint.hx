package stdgo._internal.internal.fuzz;
function _parseUint(_val:stdgo.GoString, _typ:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L343"
        {
            final __value__ = _typ;
            if (__value__ == (("uint" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L346"
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt)), _1 : _err };
            } else if (__value__ == (("uint8" : stdgo.GoString)) || __value__ == (("byte" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L349"
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt8)), _1 : _err };
            } else if (__value__ == (("uint16" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (16 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L352"
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt16)), _1 : _err };
            } else if (__value__ == (("uint32" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L355"
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt32)), _1 : _err };
            } else if (__value__ == (("uint64" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L357"
                return ({
                    @:explicitConversion final __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
                    { _0 : stdgo.Go.toInterface(__tmp__._0), _1 : __tmp__._1 };
                });
            } else {
                //"file:///home/runner/.go/go1.21.3/src/internal/fuzz/encoding.go#L359"
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
