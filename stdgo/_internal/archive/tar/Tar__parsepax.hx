package stdgo._internal.archive.tar;
function _parsePAX(_r:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.archive.tar.Tar__readspecialfile._readSpecialFile(_r), _buf:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : _err };
        };
        var _sbuf = ((_buf : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _sparseMap:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _paxHdrs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        while (((_sbuf.length) > (0 : stdgo.GoInt) : Bool)) {
            var __tmp__ = stdgo._internal.archive.tar.Tar__parsepaxrecord._parsePAXRecord(_sbuf?.__copy__()), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _residual:stdgo.GoString = __tmp__._2, _err:stdgo.Error = __tmp__._3;
            if (_err != null) {
                return { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
            };
            _sbuf = _residual?.__copy__();
            {
                final __value__ = _key;
                if (__value__ == (("GNU.sparse.offset" : stdgo.GoString)) || __value__ == (("GNU.sparse.numbytes" : stdgo.GoString))) {
                    if ((((((((_sparseMap.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == (0 : stdgo.GoInt)) && (_key != ("GNU.sparse.offset" : stdgo.GoString)) : Bool)) || (((((_sparseMap.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == (1 : stdgo.GoInt)) && (_key != ("GNU.sparse.numbytes" : stdgo.GoString)) : Bool)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_value?.__copy__(), ("," : stdgo.GoString)) : Bool)) {
                        return { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : stdgo._internal.archive.tar.Tar_errheader.errHeader };
                    };
                    _sparseMap = (_sparseMap.__append__(_value?.__copy__()));
                } else {
                    _paxHdrs[_key] = _value?.__copy__();
                };
            };
        };
        if (((_sparseMap.length) > (0 : stdgo.GoInt) : Bool)) {
            _paxHdrs[("GNU.sparse.map" : stdgo.GoString)] = stdgo._internal.strings.Strings_join.join(_sparseMap, ("," : stdgo.GoString))?.__copy__();
        };
        return { _0 : _paxHdrs, _1 : (null : stdgo.Error) };
    }
