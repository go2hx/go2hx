package stdgo._internal.go.doc.comment;
function _listMarker(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _num = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString), _ok = false;
        _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L741"
        if (_line == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L742"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _num = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L746"
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_line?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
            if ((((_r == ((8226 : stdgo.GoInt32)) || _r == ((42 : stdgo.GoInt32)) : Bool) || _r == ((43 : stdgo.GoInt32)) : Bool) || (_r == (45 : stdgo.GoInt32)) : Bool)) {
                {
                    final __tmp__0 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    final __tmp__1 = (_line.__slice__(_n) : stdgo.GoString)?.__copy__();
                    _num = @:binopAssign __tmp__0;
                    _rest = @:binopAssign __tmp__1;
                };
            } else if ((((48 : stdgo.GoUInt8) <= _line[(0 : stdgo.GoInt)] : Bool) && (_line[(0 : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                var _n = (1 : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L750"
                while ((((_n < (_line.length) : Bool) && ((48 : stdgo.GoUInt8) <= _line[(_n : stdgo.GoInt)] : Bool) : Bool) && (_line[(_n : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L751"
                    _n++;
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L753"
                if (((_n >= (_line.length) : Bool) || (((_line[(_n : stdgo.GoInt)] != (46 : stdgo.GoUInt8)) && (_line[(_n : stdgo.GoInt)] != (41 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L754"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                        _num = __tmp__._0;
                        _rest = __tmp__._1;
                        _ok = __tmp__._2;
                        __tmp__;
                    };
                };
                {
                    final __tmp__0 = (_line.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                    final __tmp__1 = (_line.__slice__((_n + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _num = @:binopAssign __tmp__0;
                    _rest = @:binopAssign __tmp__1;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L758"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                    _num = __tmp__._0;
                    _rest = __tmp__._1;
                    _ok = __tmp__._2;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L761"
        if ((!stdgo._internal.go.doc.comment.Comment__indented._indented(_rest?.__copy__()) || (stdgo._internal.strings.Strings_trimspace.trimSpace(_rest?.__copy__()) == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L762"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _2 : false };
                _num = __tmp__._0;
                _rest = __tmp__._1;
                _ok = __tmp__._2;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L765"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } = { _0 : _num?.__copy__(), _1 : _rest?.__copy__(), _2 : true };
            _num = __tmp__._0;
            _rest = __tmp__._1;
            _ok = __tmp__._2;
            __tmp__;
        };
    }
