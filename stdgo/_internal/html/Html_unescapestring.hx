package stdgo._internal.html;
function unescapeString(_s:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L188"
        stdgo._internal.html.Html__populatemapsonce._populateMapsOnce.do_(stdgo._internal.html.Html__populatemaps._populateMaps);
        var _i = (stdgo._internal.strings.Strings_indexbyte.indexByte(_s?.__copy__(), (38 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L191"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L192"
            return _s?.__copy__();
        };
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.html.Html__unescapeentity._unescapeEntity(_b, _i, _i), _dst:stdgo.GoInt = __tmp__._0, _src:stdgo.GoInt = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L197"
        while ((((_s.__slice__(_src) : stdgo.GoString).length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L198"
            if (_s[(_src : stdgo.GoInt)] == ((38 : stdgo.GoUInt8))) {
                _i = (0 : stdgo.GoInt);
            } else {
                _i = stdgo._internal.strings.Strings_indexbyte.indexByte((_s.__slice__(_src) : stdgo.GoString)?.__copy__(), (38 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L203"
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                _dst = (_dst + ((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(_src) : stdgo.GoString))) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L205"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L208"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L209"
                (_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((_s.__slice__(_src, (_src + _i : stdgo.GoInt)) : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.html.Html__unescapeentity._unescapeEntity(_b, (_dst + _i : stdgo.GoInt), (_src + _i : stdgo.GoInt));
                _dst = @:tmpset0 __tmp__._0;
                _src = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/escape.go#L213"
        return ((_b.__slice__(0, _dst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
