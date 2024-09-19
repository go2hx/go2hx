package stdgo._internal.internal.saferio;
function testReadData(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _input = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt));
        _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input)), (100i64 : stdgo.GoUInt64)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _input)) {
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_input));
            };
        });
        _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input)), (10737418240i64 : stdgo.GoUInt64)), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input)), (4611686018427387904i64 : stdgo.GoUInt64)), __24:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        _t.run(("small-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485759i64 : stdgo.GoUInt64)), __32:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        _t.run(("large-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __40:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eof))) {
                _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        _t.run(("large-UnexpectedEOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readData.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader((new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __48:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
                _t.errorf(("ReadData = %v, want io.ErrUnexpectedEOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }
