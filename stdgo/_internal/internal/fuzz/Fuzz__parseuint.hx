package stdgo._internal.internal.fuzz;
function _parseUint(_val:stdgo.GoString, _typ:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        {
            final __value__ = _typ;
            if (__value__ == (("uint" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt)), _1 : _err };
            } else if (__value__ == (("uint8" : stdgo.GoString)) || __value__ == (("byte" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt8)), _1 : _err };
            } else if (__value__ == (("uint16" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (16 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt16)), _1 : _err };
            } else if (__value__ == (("uint32" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoUInt32)), _1 : _err };
            } else if (__value__ == (("uint64" : stdgo.GoString))) {
                return stdgo._internal.strconv.Strconv_parseuint.parseUint(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
