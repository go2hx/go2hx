package stdgo._internal.strings;
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L944"
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0 = (_s[(0 : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _n = __1, _r = __0;
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L946"
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_s?.__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _n = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L949"
            if (!stdgo._internal.strings.Strings_containsrune.containsRune(_cutset?.__copy__(), _r)) {
                //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L950"
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/strings/strings.go#L954"
        return _s?.__copy__();
    }
