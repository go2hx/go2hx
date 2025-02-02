package stdgo._internal.html.template;
function _isHTMLSpace(_c:stdgo.GoUInt8):Bool {
        return (((_c <= (32 : stdgo.GoUInt8) : Bool)) && ((0 : stdgo.GoUInt8) != (((stdgo.Go.str(0,
"6",
0,
0,
1,
0,
255,
3,
254,
255,
255,
"\x07",
254,
255,
255,
"\x07") : stdgo.GoString)[((_c >> (3i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1 : stdgo.GoUInt8) << ((_c & (7 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt) : stdgo.GoUInt8)) : stdgo.GoUInt8))) : Bool);
    }
