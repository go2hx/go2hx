package stdgo._internal.os.user;
function _matchUserIndexValue(_value:stdgo.GoString, _idx:stdgo.GoInt):stdgo._internal.os.user.User_t_linefunc.T_lineFunc {
        var _leadColon:stdgo.GoString = ("" : stdgo.GoString);
        if ((_idx > (0 : stdgo.GoInt) : Bool)) {
            _leadColon = (":" : stdgo.GoString);
        };
        var _substr = (((_leadColon + _value?.__copy__() : stdgo.GoString) + (":" : stdgo.GoString)?.__copy__() : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        return function(_line:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } {
            var _v = (null : stdgo.AnyInterface), _err = (null : stdgo.Error);
            if ((!stdgo._internal.bytes.Bytes_contains.contains(_line, _substr) || (stdgo._internal.bytes.Bytes_count.count(_line, stdgo._internal.os.user.User__colon._colon) < (6 : stdgo.GoInt) : Bool) : Bool)) {
                return { _0 : _v, _1 : _err };
            };
            var _parts = stdgo._internal.strings.Strings_splitn.splitN((_line : stdgo.GoString)?.__copy__(), (":" : stdgo.GoString), (7 : stdgo.GoInt));
            if (((((((_parts.length) < (6 : stdgo.GoInt) : Bool) || _parts[(_idx : stdgo.GoInt)] != (_value) : Bool) || _parts[(0 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) : Bool) || _parts[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == ((43 : stdgo.GoUInt8)) : Bool) || (_parts[(0 : stdgo.GoInt)][(0 : stdgo.GoInt)] == (45 : stdgo.GoUInt8)) : Bool)) {
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
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_parts[(3 : stdgo.GoInt)]?.__copy__()), __1:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : (null : stdgo.AnyInterface), _1 : (null : stdgo.Error) };
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            var _u = (stdgo.Go.setRef(({ username : _parts[(0 : stdgo.GoInt)]?.__copy__(), uid : _parts[(2 : stdgo.GoInt)]?.__copy__(), gid : _parts[(3 : stdgo.GoInt)]?.__copy__(), name : _parts[(4 : stdgo.GoInt)]?.__copy__(), homeDir : _parts[(5 : stdgo.GoInt)]?.__copy__() } : stdgo._internal.os.user.User_user.User)) : stdgo.Ref<stdgo._internal.os.user.User_user.User>);
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut((@:checkr _u ?? throw "null pointer dereference").name?.__copy__(), ("," : stdgo.GoString));
                (@:checkr _u ?? throw "null pointer dereference").name = @:tmpset0 __tmp__._0?.__copy__();
            };
            return {
                final __tmp__:{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; } = { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface(_u)), _1 : (null : stdgo.Error) };
                _v = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
    }
