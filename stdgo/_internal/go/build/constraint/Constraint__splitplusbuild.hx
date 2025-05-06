package stdgo._internal.go.build.constraint;
function _splitPlusBuild(_line:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _expr = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L359"
        if ((((_line.length) > (0 : stdgo.GoInt) : Bool) && (_line[((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (10 : stdgo.GoUInt8)) : Bool)) {
            _line = (_line.__slice__(0, ((_line.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L362"
        if (stdgo._internal.strings.Strings_contains.contains(_line?.__copy__(), ("\n" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L363"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _expr = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L366"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("//" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L367"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _expr = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        _line = (_line.__slice__(((("//" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L373"
        if (!stdgo._internal.strings.Strings_hasprefix.hasPrefix(_line?.__copy__(), ("+build" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L374"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _expr = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        _line = (_line.__slice__(((("+build" : stdgo.GoString) : stdgo.GoString).length)) : stdgo.GoString)?.__copy__();
        var _trim = (stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L383"
        if (((_line.length == (_trim.length)) && (_line != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L384"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                _expr = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/constraint/expr.go#L387"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _trim?.__copy__(), _1 : true };
            _expr = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
