package stdgo._internal.os.user;
function _matchGroupIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.User_t_linefunc.T_lineFunc {
        var _leadColon:stdgo.GoString = ("" : stdgo.GoString);
        if ((_idx > (0 : stdgo.GoInt) : Bool)) {
            _leadColon = (":" : stdgo.GoString);
        };
        var _substr = (((_leadColon + _value?.__copy__() : stdgo.GoString) + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        return function(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
            var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
            if ((!stdgo._internal.bytes.Bytes_contains.contains(_line, _substr) || (stdgo._internal.bytes.Bytes_count.count(_line, stdgo._internal.os.user.User__colon._colon) < (3 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : _v, _1 : _err };
            };
            var _parts = stdgo._internal.strings.Strings_splitn.splitN((_line : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString), (4 : stdgo.GoInt));
            if (((((((_parts.length) < (4 : stdgo.GoInt) : Bool) || _parts[(0 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || _parts[(_idx : stdgo.GoInt)] != (_value) : Bool) || _parts[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8)) : Bool) || (_parts[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : _v, _1 : _err };
            };
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_parts[(2 : stdgo.GoInt)]?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : (null : stdgo.Error) };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ name : _parts[(0 : stdgo.GoInt)]?.__copy__(), gid : _parts[(2 : stdgo.GoInt)]?.__copy__() } : stdgo._internal.os.user.User_group.Group)) : stdgo.Ref<stdgo._internal.os.user.User_group.Group>))), _1 : (null : stdgo.Error) };
                _v = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
