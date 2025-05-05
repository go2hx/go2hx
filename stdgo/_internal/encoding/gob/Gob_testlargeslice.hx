package stdgo._internal.encoding.gob;
function testLargeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1568"
        _t.run(("byte" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1569"
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoUInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1571"
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte() : stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicebyte.LargeSliceByte>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1576"
            stdgo._internal.encoding.gob.Gob__testencodedecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1578"
        _t.run(("int8" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1579"
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1581"
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8() : stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largesliceint8.LargeSliceInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1586"
            stdgo._internal.encoding.gob.Gob__testencodedecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1588"
        _t.run(("struct" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1589"
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>((2097152 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2097152 : stdgo.GoInt).toBasic() > 0 ? (2097152 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_stringpair.StringPair)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_stringpair.StringPair>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1591"
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)].a = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                _s[(_i : stdgo.GoInt)].b = _s[(_i : stdgo.GoInt)].a?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct() : stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicestruct.LargeSliceStruct>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1597"
            stdgo._internal.encoding.gob.Gob__testencodedecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1599"
        _t.run(("string" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1600"
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoString>((2097152 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1602"
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString() : stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_largeslicestring.LargeSliceString>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/codec_test.go#L1607"
            stdgo._internal.encoding.gob.Gob__testencodedecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
    }
