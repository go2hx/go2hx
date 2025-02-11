package stdgo._internal.mime;
function parseMediaType(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } {
        var _mediatype = ("" : stdgo.GoString), _params = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_v?.__copy__(), (";" : stdgo.GoString)), _base:stdgo.GoString = __tmp__._0, __0:stdgo.GoString = __tmp__._1, __1:Bool = __tmp__._2;
        _mediatype = stdgo._internal.strings.Strings_trimspace.trimSpace(stdgo._internal.strings.Strings_tolower.toLower(_base?.__copy__())?.__copy__())?.__copy__();
        _err = stdgo._internal.mime.Mime__checkmediatypedisposition._checkMediaTypeDisposition(_mediatype?.__copy__());
        if (_err != null) {
            return {
                final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : _err };
                _mediatype = __tmp__._0;
                _params = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        _params = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _continuation:stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo.GoString>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo.GoString>>);
        _v = (_v.__slice__((_base.length)) : stdgo.GoString)?.__copy__();
        while (((_v.length) > (0 : stdgo.GoInt) : Bool)) {
            _v = stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_v?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__();
            if ((_v.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            var __tmp__ = stdgo._internal.mime.Mime__consumemediaparam._consumeMediaParam(_v?.__copy__()), _key:stdgo.GoString = __tmp__._0, _value:stdgo.GoString = __tmp__._1, _rest:stdgo.GoString = __tmp__._2;
            if (_key == ((stdgo.Go.str() : stdgo.GoString))) {
                if (stdgo._internal.strings.Strings_trimspace.trimSpace(_rest?.__copy__()) == ((";" : stdgo.GoString))) {
                    break;
                };
                return {
                    final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : _mediatype?.__copy__(), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo._internal.mime.Mime_errinvalidmediaparameter.errInvalidMediaParameter };
                    _mediatype = __tmp__._0;
                    _params = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            var _pmap = _params;
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_key?.__copy__(), ("*" : stdgo.GoString)), _baseName:stdgo.GoString = __tmp__._0, __2:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
                if (_ok) {
                    if (_continuation == null) {
                        _continuation = (({
                            final x = new stdgo.GoMap.GoStringMap<stdgo.GoMap<stdgo.GoString, stdgo.GoString>>();
                            x.__defaultValue__ = () -> (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                            {};
                            x;
                        } : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo.GoString>>) : stdgo.GoMap<stdgo.GoString, stdgo.GoMap<stdgo.GoString, stdgo.GoString>>);
                    };
                    var _ok:Bool = false;
                    {
                        {
                            var __tmp__ = (_continuation != null && _continuation.__exists__(_baseName?.__copy__()) ? { _0 : _continuation[_baseName?.__copy__()], _1 : true } : { _0 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _1 : false });
                            _pmap = @:tmpset0 __tmp__._0;
                            _ok = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok) {
                            _continuation[_baseName] = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
                                x.__defaultValue__ = () -> ("" : stdgo.GoString);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
                            _pmap = (_continuation[_baseName] ?? (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>));
                        };
                    };
                };
            };
            {
                var __tmp__ = (_pmap != null && _pmap.__exists__(_key?.__copy__()) ? { _0 : _pmap[_key?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _exists:Bool = __tmp__._1;
                if ((_exists && (_v != _value) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.GoString>; var _2 : stdgo.Error; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), _2 : stdgo._internal.errors.Errors_new_.new_(("mime: duplicate parameter name" : stdgo.GoString)) };
                        _mediatype = __tmp__._0;
                        _params = __tmp__._1;
                        _err = __tmp__._2;
                        __tmp__;
                    };
                };
            };
            _pmap[_key] = _value?.__copy__();
            _v = _rest?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (_key => _pieceMap in _continuation) {
            var _singlePartKey = ((_key + ("*" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var __tmp__ = (_pieceMap != null && _pieceMap.__exists__(_singlePartKey?.__copy__()) ? { _0 : _pieceMap[_singlePartKey?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    {
                        var __tmp__ = stdgo._internal.mime.Mime__decode2231enc._decode2231Enc(_v?.__copy__()), _decv:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _params[_key] = _decv?.__copy__();
                        };
                    };
                    continue;
                };
            };
            @:check2 _buf.reset();
            var _valid = (false : Bool);
            {
                var _n = (0 : stdgo.GoInt);
                while (true) {
                    var _simplePart = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s*%d" : stdgo.GoString), stdgo.Go.toInterface(_key), stdgo.Go.toInterface(_n)).__copy__() : stdgo.GoString);
{
                        var __tmp__ = (_pieceMap != null && _pieceMap.__exists__(_simplePart.__copy__()) ? { _0 : _pieceMap[_simplePart.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                        if (_ok) {
                            _valid = true;
                            @:check2 _buf.writeString(_v.__copy__());
                            {
                                _n++;
                                continue;
                            };
                        };
                    };
var _encodedPart = ((_simplePart + ("*" : stdgo.GoString).__copy__() : stdgo.GoString).__copy__() : stdgo.GoString);
var __tmp__ = (_pieceMap != null && _pieceMap.__exists__(_encodedPart.__copy__()) ? { _0 : _pieceMap[_encodedPart.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _v:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
if (!_ok) {
                        break;
                    };
_valid = true;
if (_n == ((0 : stdgo.GoInt))) {
                        {
                            var __tmp__ = stdgo._internal.mime.Mime__decode2231enc._decode2231Enc(_v.__copy__()), _decv:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (_ok) {
                                @:check2 _buf.writeString(_decv.__copy__());
                            };
                        };
                    } else {
                        var __tmp__ = stdgo._internal.mime.Mime__percenthexunescape._percentHexUnescape(_v.__copy__()), _decv:stdgo.GoString = __tmp__._0, __2:stdgo.Error = __tmp__._1;
                        @:check2 _buf.writeString(_decv.__copy__());
                    };
                    _n++;
                };
            };
            if (_valid) {
                _params[_key] = (@:check2 _buf.string() : stdgo.GoString)?.__copy__();
            };
        };
        return { _0 : _mediatype, _1 : _params, _2 : _err };
    }
