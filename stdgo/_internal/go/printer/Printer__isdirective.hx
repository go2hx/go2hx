package stdgo._internal.go.printer;
function _isDirective(_c:stdgo.GoString):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L118"
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("line " : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("extern " : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_c?.__copy__(), ("export " : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L119"
            return true;
        };
        var _colon = (stdgo._internal.strings.Strings_index.index(_c?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L125"
        if (((_colon <= (0 : stdgo.GoInt) : Bool) || ((_colon + (1 : stdgo.GoInt) : stdgo.GoInt) >= (_c.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L126"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L128"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i <= (_colon + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L129"
                if (_i == (_colon)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L130"
                    {
                        _i++;
                        continue;
                    };
                };
var _b = (_c[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L133"
                if (!(((((97 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((48 : stdgo.GoUInt8) <= _b : Bool) && (_b <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L134"
                    return false;
                };
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/comment.go#L137"
        return true;
    }
