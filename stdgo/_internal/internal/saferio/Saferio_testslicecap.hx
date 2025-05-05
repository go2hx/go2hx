package stdgo._internal.internal.saferio;
function testSliceCap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L107"
        _t.run(("small" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt>)), (10i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L109"
            if (_c != ((10 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L110"
                _t.errorf(("got capacity %d, want %d" : stdgo.GoString), stdgo.Go.toInterface(_c), stdgo.Go.toInterface((10 : stdgo.GoInt)));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L114"
        _t.run(("large" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (1073741824i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L116"
            if ((_c < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L117"
                _t.error(stdgo.Go.toInterface(("SliceCap failed unexpectedly" : stdgo.GoString)));
            } else if (_c == ((1073741824 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L119"
                _t.errorf(("got capacity %d which is too high" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L123"
        _t.run(("maxint" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoUInt8>)), (-9223372036854775808i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L125"
            if ((_c >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L126"
                _t.errorf(("SliceCap returned %d, expected failure" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
        //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L130"
        _t.run(("overflow" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            var _c = (stdgo._internal.internal.saferio.Saferio_slicecap.sliceCap(stdgo.Go.toInterface((null : stdgo.Pointer<stdgo.GoInt64>)), (4611686018427387904i64 : stdgo.GoUInt64)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L132"
            if ((_c >= (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/internal/saferio/io_test.go#L133"
                _t.errorf(("SliceCap returned %d, expected failure" : stdgo.GoString), stdgo.Go.toInterface(_c));
            };
        });
    }
