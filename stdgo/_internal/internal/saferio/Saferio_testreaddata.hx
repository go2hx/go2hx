package stdgo._internal.internal.saferio;
function testReadData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _input = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L17"
        _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (100i64 : stdgo.GoUInt64)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L19"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L20"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L22"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _input)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L23"
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_input));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L27"
        _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (10737418240i64 : stdgo.GoUInt64)), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L29"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L30"
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L34"
        _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (4611686018427387904i64 : stdgo.GoUInt64)), __24:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L36"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L37"
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L41"
        _t.run(("small-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485759i64 : stdgo.GoUInt64)), __32:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L43"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L44"
                _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L48"
        _t.run(("large-EOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((null : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __40:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L50"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L51"
                _t.errorf(("ReadData = %v, want io.EOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L55"
        _t.run(("large-UnexpectedEOF" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdata.readData(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader((new stdgo.Slice<stdgo.GoUInt8>((10485760 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>))), (10485761i64 : stdgo.GoUInt64)), __48:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L57"
            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L58"
                _t.errorf(("ReadData = %v, want io.ErrUnexpectedEOF" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        });
    }
