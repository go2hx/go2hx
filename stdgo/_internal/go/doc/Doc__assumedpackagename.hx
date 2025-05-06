package stdgo._internal.go.doc;
function _assumedPackageName(_importPath:stdgo.GoString):stdgo.GoString {
        var _notIdentifier = (function(_ch:stdgo.GoInt32):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1009"
            return !((((((((97 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (122 : stdgo.GoInt32) : Bool) : Bool) || (((65 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (90 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (((48 : stdgo.GoInt32) <= _ch : Bool) && (_ch <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool) || _ch == ((95 : stdgo.GoInt32)) : Bool) || ((_ch >= (128 : stdgo.GoInt32) : Bool) && ((stdgo._internal.unicode.Unicode_isletter.isLetter(_ch) || stdgo._internal.unicode.Unicode_isdigit.isDigit(_ch) : Bool)) : Bool) : Bool));
        } : stdgo.GoInt32 -> Bool);
        var _base = (stdgo._internal.path.Path_base.base(_importPath?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1016"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_base?.__copy__(), ("v" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1017"
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_base.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    var _dir = (stdgo._internal.path.Path_dir.dir(_importPath?.__copy__())?.__copy__() : stdgo.GoString);
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1019"
                    if (_dir != (("." : stdgo.GoString))) {
                        _base = stdgo._internal.path.Path_base.base(_dir?.__copy__())?.__copy__();
                    };
                };
            };
        };
        _base = stdgo._internal.strings.Strings_trimprefix.trimPrefix(_base?.__copy__(), ("go-" : stdgo.GoString))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1025"
        {
            var _i = (stdgo._internal.strings.Strings_indexfunc.indexFunc(_base?.__copy__(), _notIdentifier) : stdgo.GoInt);
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                _base = (_base.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L1028"
        return _base?.__copy__();
    }
