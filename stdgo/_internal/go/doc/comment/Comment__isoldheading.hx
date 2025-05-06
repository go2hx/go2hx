package stdgo._internal.go.doc.comment;
function _isOldHeading(_line:stdgo.GoString, _all:stdgo.Slice<stdgo.GoString>, _off:stdgo.GoInt):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L571"
        if ((((((_off <= (0 : stdgo.GoInt) : Bool) || _all[(_off - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || ((_off + (2 : stdgo.GoInt) : stdgo.GoInt) >= (_all.length) : Bool) : Bool) || _all[(_off + (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) || (stdgo._internal.go.doc.comment.Comment__leadingspace._leadingSpace(_all[(_off + (2 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L572"
            return false;
        };
        _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_line?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, __1:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L579"
        if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || !stdgo._internal.unicode.Unicode_isupper.isUpper(_r) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L580"
            return false;
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodelastruneinstring.decodeLastRuneInString(_line?.__copy__());
            _r = @:tmpset0 __tmp__._0;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L585"
        if ((!stdgo._internal.unicode.Unicode_isletter.isLetter(_r) && !stdgo._internal.unicode.Unicode_isdigit.isDigit(_r) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L586"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L590"
        if (stdgo._internal.strings.Strings_containsany.containsAny(_line?.__copy__(), (";:!?+*/=[]{}_^°&§~%#@<\">\\" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L591"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L595"
        {
            var _b = (_line?.__copy__() : stdgo.GoString);
            while (true) {
                var _ok:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L597"
                {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_b?.__copy__(), ("\'" : stdgo.GoString));
                        _b = @:tmpset0 __tmp__._1?.__copy__();
                        _ok = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L598"
                        break;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L600"
                if (((_b != ("s" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_b?.__copy__(), ("s " : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L601"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L606"
        {
            var _b = (_line?.__copy__() : stdgo.GoString);
            while (true) {
                var _ok:Bool = false;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L608"
                {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_b?.__copy__(), ("." : stdgo.GoString));
                        _b = @:tmpset0 __tmp__._1?.__copy__();
                        _ok = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok) {
                        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L609"
                        break;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L611"
                if (((_b == (stdgo.Go.str() : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_b?.__copy__(), (" " : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L612"
                    return false;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/parse.go#L616"
        return true;
    }
