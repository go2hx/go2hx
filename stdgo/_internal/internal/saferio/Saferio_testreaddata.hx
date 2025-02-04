package stdgo._internal.internal.saferio;
function testReadData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _input = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt));
        @:check2r _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (100i64 : stdgo.GoUInt64)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _input)) {
                @:check2r _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_input));
            };
        });
        @:check2r _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (10737418240i64 : stdgo.GoUInt64)), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        @:check2r _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (4611686018427387904i64 : stdgo.GoUInt64)), __24:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                @:check2r _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        @:check2r _t.run(("small-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485759i64 : stdgo.GoUInt64)), __32:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                @:check2r _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        @:check2r _t.run(("large-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __40:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                @:check2r _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        @:check2r _t.run(("large-UnexpectedEOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __48:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                @:check2r _t.errorf(("ReadData = %v, want io.ErrUnexpectedEOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }
