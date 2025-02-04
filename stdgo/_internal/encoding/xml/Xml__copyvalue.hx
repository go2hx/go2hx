package stdgo._internal.encoding.xml;
function _copyValue(_dst:stdgo._internal.reflect.Reflect_value.Value, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _dst0 = (_dst?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        if (_dst.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            if (_dst.isNil()) {
                _dst.set(stdgo._internal.reflect.Reflect_new_.new_(_dst.type().elem())?.__copy__());
            };
            _dst = _dst.elem()?.__copy__();
        };
        {
            final __value__ = _dst.kind();
            if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _dst.setInt((0i64 : stdgo.GoInt64));
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), _dst.type().bits()), _itmp:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _dst.setInt(_itmp);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _dst.setUint((0i64 : stdgo.GoUInt64));
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), _dst.type().bits()), _utmp:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _dst.setUint(_utmp);
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _dst.setFloat((0 : stdgo.GoFloat64));
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), _dst.type().bits()), _ftmp:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _dst.setFloat(_ftmp);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _dst.setBool(false);
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__()), _value:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return _err;
                };
                _dst.setBool(_value);
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                _dst.setString((_src : stdgo.GoString)?.__copy__());
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _src = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                };
                _dst.setBytes(_src);
            } else {
                return _err = stdgo._internal.errors.Errors_new_.new_((("cannot unmarshal into " : stdgo.GoString) + (_dst0.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        return _err = (null : stdgo.Error);
    }
