package stdgo._internal.internal.saferio;
function testReadDataAt(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _input = stdgo._internal.bytes.Bytes_repeat.repeat((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(97 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>), (100 : stdgo.GoInt));
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L67"
        _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (100i64 : stdgo.GoUInt64), (0i64 : stdgo.GoInt64)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L69"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L70"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L72"
            if (!stdgo._internal.bytes.Bytes_equal.equal(_got, _input)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L73"
                _t.errorf(("got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_input));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L77"
        _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (10737418240i64 : stdgo.GoUInt64), (0i64 : stdgo.GoInt64)), __16:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L79"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L80"
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L84"
        _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (4611686018427387904i64 : stdgo.GoUInt64), (0i64 : stdgo.GoInt64)), __24:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L86"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L87"
                _t.error(stdgo.Go.toInterface(("large read succeeded unexpectedly" : stdgo.GoString)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L91"
        _t.run(("SectionReader" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _sr = stdgo._internal.io.Io_newsectionreader.newSectionReader(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_input)), (0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64));
            var __tmp__ = stdgo._internal.internal.saferio.Saferio_readdataat.readDataAt(stdgo.Go.asInterface(_sr), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoInt64)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L97"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L98"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L100"
            if (((_got.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L101"
                _t.errorf(("got %d bytes, expected 0" : stdgo.GoString), stdgo.Go.toInterface((_got.length)));
            };
        });
    }
