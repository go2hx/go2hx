package stdgo._internal.internal.fuzz;
function _parseInt(_val:stdgo.GoString, _typ:stdgo.GoString):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
        {
            final __value__ = _typ;
            if (__value__ == (("int" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt)), _1 : _err };
            } else if (__value__ == (("int8" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (8 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt8)), _1 : _err };
            } else if (__value__ == (("int16" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (16 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt16)), _1 : _err };
            } else if (__value__ == (("int32" : stdgo.GoString)) || __value__ == (("rune" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (32 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                return { _0 : stdgo.Go.toInterface((_i : stdgo.GoInt32)), _1 : _err };
            } else if (__value__ == (("int64" : stdgo.GoString))) {
                return stdgo._internal.strconv.Strconv_parseint.parseInt(_val?.__copy__(), (0 : stdgo.GoInt), (64 : stdgo.GoInt));
            } else {
                throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
            };
        };
    }
