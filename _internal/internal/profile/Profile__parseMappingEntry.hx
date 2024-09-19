package _internal.internal.profile;
function _parseMappingEntry(_l:stdgo.GoString):{ var _0 : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>; var _1 : stdgo.Error; } {
        var _mapping = (stdgo.Go.setRef((new _internal.internal.profile.Profile_Mapping.Mapping() : _internal.internal.profile.Profile_Mapping.Mapping)) : stdgo.Ref<_internal.internal.profile.Profile_Mapping.Mapping>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            var _me = _internal.internal.profile.Profile__procMapsRE._procMapsRE.findStringSubmatch(_l?.__copy__());
            if ((_me.length) == ((9 : stdgo.GoInt))) {
                if (!stdgo._internal.strings.Strings_contains.contains(_me[(3 : stdgo.GoInt)]?.__copy__(), ("x" : stdgo.GoString))) {
                    return { _0 : null, _1 : (null : stdgo.Error) };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(1 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _mapping.start = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(2 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _mapping.limit = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                if (_me[(4 : stdgo.GoInt)] != (stdgo.Go.str())) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(4 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _mapping.offset = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                };
                _mapping.file = _me[(8 : stdgo.GoInt)]?.__copy__();
                return { _0 : _mapping, _1 : (null : stdgo.Error) };
            };
        };
        {
            var _me = _internal.internal.profile.Profile__briefMapsRE._briefMapsRE.findStringSubmatch(_l?.__copy__());
            if ((_me.length) == ((6 : stdgo.GoInt))) {
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(1 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _mapping.start = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(2 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                        _mapping.limit = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                    };
                };
                _mapping.file = _me[(3 : stdgo.GoInt)]?.__copy__();
                if (_me[(5 : stdgo.GoInt)] != (stdgo.Go.str())) {
                    {
                        {
                            var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint(_me[(5 : stdgo.GoInt)]?.__copy__(), (16 : stdgo.GoInt), (64 : stdgo.GoInt));
                            _mapping.offset = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
                        };
                    };
                };
                return { _0 : _mapping, _1 : (null : stdgo.Error) };
            };
        };
        return { _0 : null, _1 : _internal.internal.profile.Profile__errUnrecognized._errUnrecognized };
    }