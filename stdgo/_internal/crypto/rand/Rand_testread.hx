package stdgo._internal.crypto.rand;
function testRead(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _n:stdgo.GoInt = (4000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (100000 : stdgo.GoInt);
        };
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.io.Io_readfull.readFull(stdgo._internal.crypto.rand.Rand_reader.reader, _b), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (((_n != (_b.length)) || (_err != null) : Bool)) {
            @:check2r _t.fatalf(("ReadFull(buf) = %d, %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err));
        };
        var _z:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var __tmp__ = stdgo._internal.compress.flate.Flate_newwriter.newWriter(stdgo.Go.asInterface((stdgo.Go.setRef(_z) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), (5 : stdgo.GoInt)), _f:stdgo.Ref<stdgo._internal.compress.flate.Flate_writer.Writer> = __tmp__._0, __14:stdgo.Error = __tmp__._1;
        @:check2r _f.write(_b);
        @:check2r _f.close();
        if ((@:check2 _z.len() < (((_b.length) * (99 : stdgo.GoInt) : stdgo.GoInt) / (100 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            @:check2r _t.fatalf(("Compressed %d -> %d" : stdgo.GoString), stdgo.Go.toInterface((_b.length)), stdgo.Go.toInterface(@:check2 _z.len()));
        };
    }
