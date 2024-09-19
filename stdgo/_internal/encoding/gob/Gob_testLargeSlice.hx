package stdgo._internal.encoding.gob;
function testLargeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _t.run(("byte" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoUInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte() : stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("int8" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8() : stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("struct" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>((2097152 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2097152 : stdgo.GoInt).toBasic() > 0 ? (2097152 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_StringPair.StringPair)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)].a = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                _s[(_i : stdgo.GoInt)].b = _s[(_i : stdgo.GoInt)].a?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct() : stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
        _t.run(("string" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoString>((2097152 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString() : stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(_st), stdgo.Go.toInterface(_rt));
        });
    }
