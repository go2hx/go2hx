package stdgo._internal.strings;
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _before = ("" : stdgo.GoString), _found = false;
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1301"
        if (!stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1302"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _s?.__copy__(), _1 : false };
                _before = __tmp__._0;
                _found = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L1304"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : true };
            _before = __tmp__._0;
            _found = __tmp__._1;
            __tmp__;
        };
    }
