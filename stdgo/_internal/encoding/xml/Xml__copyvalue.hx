package stdgo._internal.encoding.xml;
function _copyValue(_dst:stdgo._internal.reflect.Reflect_value.Value, _src:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        var _err = (null : stdgo.Error);
        var _dst0 = (_dst?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L624"
        if (_dst.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L625"
            if (_dst.isNil()) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L626"
                _dst.set(stdgo._internal.reflect.Reflect_new_.new_(_dst.type().elem())?.__copy__());
            };
            _dst = _dst.elem()?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L632"
        {
            final __value__ = _dst.kind();
            if (__value__ == ((0u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {} else if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L638"
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L639"
                    _dst.setInt((0i64 : stdgo.GoInt64));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L640"
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), _dst.type().bits()), _itmp:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L643"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L644"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L646"
                _dst.setInt(_itmp);
            } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L648"
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L649"
                    _dst.setUint((0i64 : stdgo.GoUInt64));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L650"
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), (10 : stdgo.GoInt), _dst.type().bits()), _utmp:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L653"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L654"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L656"
                _dst.setUint(_utmp);
            } else if (__value__ == ((13u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((14u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L658"
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L659"
                    _dst.setFloat((0 : stdgo.GoFloat64));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L660"
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parsefloat.parseFloat(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__(), _dst.type().bits()), _ftmp:stdgo.GoFloat64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L663"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L664"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L666"
                _dst.setFloat(_ftmp);
            } else if (__value__ == ((1u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L668"
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L669"
                    _dst.setBool(false);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L670"
                    return _err = (null : stdgo.Error);
                };
                var __tmp__ = stdgo._internal.strconv.Strconv_parsebool.parseBool(stdgo._internal.strings.Strings_trimspace.trimSpace((_src : stdgo.GoString)?.__copy__())?.__copy__()), _value:Bool = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L673"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L674"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L676"
                _dst.setBool(_value);
            } else if (__value__ == ((24u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L678"
                _dst.setString((_src : stdgo.GoString)?.__copy__());
            } else if (__value__ == ((23u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L680"
                if ((_src.length) == ((0 : stdgo.GoInt))) {
                    _src = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L684"
                _dst.setBytes(_src);
            } else {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L636"
                return _err = stdgo._internal.errors.Errors_new_.new_((("cannot unmarshal into " : stdgo.GoString) + (_dst0.type().string() : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/read.go#L686"
        return _err = (null : stdgo.Error);
    }
