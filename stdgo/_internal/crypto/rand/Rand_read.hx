package stdgo._internal.crypto.rand;
function read(_b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        return stdgo._internal.io.Io_readfull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, _b);
    }
