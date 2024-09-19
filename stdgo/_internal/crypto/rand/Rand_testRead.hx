package stdgo._internal.crypto.rand;
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n:stdgo.GoInt = (4000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (100000 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readFull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (_b.length)) || (_err != null) : Bool)) {
            _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        var __tmp__ = stdgo._internal.compress.flate.Flate_newWriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer> = __tmp__._0, __12:stdgo.Error = __tmp__._1;
        _f.write(_b);
        _f.close();
        if ((_z.len() < (((_b.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(_z.len()));
        };
    }