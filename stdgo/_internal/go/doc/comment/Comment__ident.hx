package stdgo._internal.go.doc.comment;
function _ident(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _id = ("" : stdgo.GoString), _ok = false;
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1169"
        while ((_n < (_s.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1170"
            {
                var _c = (_s[(_n : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1171"
                    if ((stdgo._internal.go.doc.comment.Comment__isidentascii._isIdentASCII(_c) && ((((_n > (0 : stdgo.GoInt) : Bool) || (_c < (48 : stdgo.GoUInt8) : Bool) : Bool) || (_c > (57 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1172"
                        _n++;
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1173"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1175"
                    break;
                };
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_n) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _nr:stdgo.GoInt = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1178"
            if (stdgo._internal.unicode.Unicode_isletter.isLetter(_r)) {
                _n = (_n + (_nr) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1180"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1182"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L1184"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, _n) : stdgo.GoString)?.__copy__(), _1 : (_n > (0 : stdgo.GoInt) : Bool) };
            _id = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
