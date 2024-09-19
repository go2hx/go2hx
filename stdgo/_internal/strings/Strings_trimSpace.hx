package stdgo._internal.strings;
function trimSpace(_s:stdgo.GoString):stdgo.GoString {
        var _start = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_start < (_s.length) : Bool), _start++, {
            var _c = (_s[(_start : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.strings.Strings_trimFunc.trimFunc((_s.__slice__(_start) : stdgo.GoString)?.__copy__(), stdgo._internal.unicode.Unicode_isSpace.isSpace)?.__copy__();
            };
            if (stdgo._internal.strings.Strings__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        var _stop = (_s.length : stdgo.GoInt);
        stdgo.Go.cfor((_stop > _start : Bool), _stop--, {
            var _c = (_s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoUInt8);
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return stdgo._internal.strings.Strings_trimRightFunc.trimRightFunc((_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__(), stdgo._internal.unicode.Unicode_isSpace.isSpace)?.__copy__();
            };
            if (stdgo._internal.strings.Strings__asciiSpace._asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        return (_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__();
    }
