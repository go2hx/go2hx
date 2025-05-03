package stdgo._internal.strings;
function map_(_mapping:stdgo.GoInt32 -> stdgo.GoInt32, _s:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L488"
        for (_i => _c in _s) {
            var _r = (_mapping(_c) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L490"
            if (((_r == _c) && (_c != (65533 : stdgo.GoInt32)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L491"
                continue;
            };
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L495"
            if (_c == ((65533 : stdgo.GoInt32))) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _c = @:tmpset0 __tmp__._0;
                    _width = @:tmpset0 __tmp__._1;
                };
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L497"
                if (((_width != (1 : stdgo.GoInt)) && (_r == _c) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L498"
                    continue;
                };
            } else {
                _width = stdgo._internal.unicode.utf8.Utf8_runelen.runeLen(_c);
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L504"
            _b.grow(((_s.length) + (4 : stdgo.GoInt) : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L505"
            _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L506"
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L507"
                _b.writeRune(_r);
            };
            _s = (_s.__slice__((_i + _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L511"
            break;
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L515"
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L516"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L519"
        for (__0 => _c in _s) {
            var _r = (_mapping(_c) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L522"
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L526"
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L527"
                    _b.writeByte((_r : stdgo.GoUInt8));
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L530"
                    _b.writeRune(_r);
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L535"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
