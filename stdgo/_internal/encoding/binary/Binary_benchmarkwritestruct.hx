package stdgo._internal.encoding.binary;
function benchmarkWriteStruct(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L627"
        _b.setBytes((stdgo._internal.encoding.binary.Binary_size.size(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_struct.Struct>)))) : stdgo.GoInt64));
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L628"
        _b.resetTimer();
        //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L629"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/binary/binary_test.go#L630"
                stdgo._internal.encoding.binary.Binary_write.write(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.encoding.binary.Binary__s._s) : stdgo.Ref<stdgo._internal.encoding.binary.Binary_struct.Struct>))));
                _i++;
            };
        };
    }
