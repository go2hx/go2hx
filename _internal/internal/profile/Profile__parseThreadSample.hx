package _internal.internal.profile;
function _parseThreadSample(_b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.GoUInt64>; var _2 : stdgo.Error; } {
        var _nextl = ("" : stdgo.GoString), _addrs = (null : stdgo.Slice<stdgo.GoUInt64>), _err = (null : stdgo.Error);
        var _l:stdgo.GoString = ("" : stdgo.GoString);
        var _sameAsPrevious = (false : Bool);
        while (true) {
            {
                {
                    var __tmp__ = _b.readString((10 : stdgo.GoUInt8));
                    _l = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                        return { _0 : stdgo.Go.str()?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : _err };
                    };
                    if (_l == (stdgo.Go.str())) {
                        break;
                    };
                };
            };
            {
                _l = stdgo._internal.strings.Strings_trimSpace.trimSpace(_l?.__copy__())?.__copy__();
                if (_l == (stdgo.Go.str())) {
                    continue;
                };
            };
            if (stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_l?.__copy__(), ("---" : stdgo.GoString))) {
                break;
            };
            if (stdgo._internal.strings.Strings_contains.contains(_l?.__copy__(), ("same as previous thread" : stdgo.GoString))) {
                _sameAsPrevious = true;
                continue;
            };
            _addrs = (_addrs.__append__(...(_internal.internal.profile.Profile__parseHexAddresses._parseHexAddresses(_l?.__copy__()) : Array<stdgo.GoUInt64>)));
        };
        if (_sameAsPrevious) {
            return { _0 : _l?.__copy__(), _1 : (null : stdgo.Slice<stdgo.GoUInt64>), _2 : (null : stdgo.Error) };
        };
        return { _0 : _l?.__copy__(), _1 : _addrs, _2 : (null : stdgo.Error) };
    }
