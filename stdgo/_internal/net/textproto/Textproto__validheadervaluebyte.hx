package stdgo._internal.net.textproto;
function _validHeaderValueByte(_c:stdgo.GoUInt8):Bool {
        {};
        //"file:///home/runner/.go/go1.21.3/src/net/textproto/reader.go#L713"
        return ((((((1i64 : stdgo.GoUInt64) << _c : stdgo.GoUInt64)) & (((-4294966784i64 : stdgo.GoUInt64) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64) | ((((1i64 : stdgo.GoUInt64) << ((_c - (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64)) & (((9223372036854775807i64 : stdgo.GoUInt64) ^ (-1i64 : stdgo.GoInt32) : stdgo.GoUInt64)) : stdgo.GoUInt64) : stdgo.GoUInt64)) == ((0i64 : stdgo.GoUInt64));
    }
