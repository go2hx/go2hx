package stdgo._internal.go.scanner;
function _trailingDigits(_text:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : Bool; } {
        var _i = (stdgo._internal.bytes.Bytes_lastindexbyte.lastIndexByte(_text, (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L301"
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L302"
            return { _0 : (0 : stdgo.GoInt), _1 : (0 : stdgo.GoInt), _2 : false };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(((_text.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (0 : stdgo.GoInt)), _n:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner.go#L306"
        return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_n : stdgo.GoInt), _2 : _err == null };
    }
