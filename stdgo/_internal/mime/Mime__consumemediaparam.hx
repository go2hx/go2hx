package stdgo._internal.mime;
function _consumeMediaParam(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } {
        var _param = ("" : stdgo.GoString), _value = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        _rest = stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_v?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L323"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), (";" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L324"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _v?.__copy__() };
                _param = __tmp__._0;
                _value = __tmp__._1;
                _rest = __tmp__._2;
                __tmp__;
            };
        };
        _rest = (_rest.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _rest = stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_rest?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__();
        {
            var __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken(_rest?.__copy__());
            _param = @:tmpset0 __tmp__._0?.__copy__();
            _rest = @:tmpset0 __tmp__._1?.__copy__();
        };
        _param = stdgo._internal.strings.Strings_tolower.toLower(_param?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L331"
        if (_param == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L332"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _v?.__copy__() };
                _param = __tmp__._0;
                _value = __tmp__._1;
                _rest = __tmp__._2;
                __tmp__;
            };
        };
        _rest = stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_rest?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L336"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_rest?.__copy__(), ("=" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L337"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _v?.__copy__() };
                _param = __tmp__._0;
                _value = __tmp__._1;
                _rest = __tmp__._2;
                __tmp__;
            };
        };
        _rest = (_rest.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        _rest = stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_rest?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__();
        var __tmp__ = stdgo._internal.mime.Mime__consumevalue._consumeValue(_rest?.__copy__()), _value:stdgo.GoString = __tmp__._0, _rest2:stdgo.GoString = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L342"
        if (((_value == (stdgo.Go.str() : stdgo.GoString)) && (_rest2 == _rest) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L343"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : _v?.__copy__() };
                _param = __tmp__._0;
                _value = __tmp__._1;
                _rest = __tmp__._2;
                __tmp__;
            };
        };
        _rest = _rest2?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/mime/mediatype.go#L346"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : stdgo.GoString; } = { _0 : _param?.__copy__(), _1 : _value?.__copy__(), _2 : _rest?.__copy__() };
            _param = __tmp__._0;
            _value = __tmp__._1;
            _rest = __tmp__._2;
            __tmp__;
        };
    }
