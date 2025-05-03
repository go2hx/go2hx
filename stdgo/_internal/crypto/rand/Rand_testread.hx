package stdgo._internal.crypto.rand;
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n:stdgo.GoInt = (4000000 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L16"
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (100000 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L21"
        if (((_n != (_b.length)) || (_err != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L22"
            _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L27"
        _f.write(_b);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L28"
        _f.close();
        //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L29"
        if ((_z.len() < (((_b.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rand/rand_test.go#L30"
            _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_z.len()));
        };
    }
