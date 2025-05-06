package stdgo._internal.go.build;
function _readComments(_f:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _r = stdgo._internal.go.build.Build__newimportreader._newImportReader((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _f);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L383"
        _r._peekByte(true);
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L384"
        if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__(0, (((@:checkr _r ?? throw "null pointer dereference")._buf.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/read.go#L388"
        return { _0 : (@:checkr _r ?? throw "null pointer dereference")._buf, _1 : (@:checkr _r ?? throw "null pointer dereference")._err };
    }
