package stdgo._internal.encoding.gob;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.time.Time;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.testing.Testing;
import stdgo._internal.io.Io;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.Math;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.sort.Sort;
import stdgo._internal.os.Os;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.encoding.binary.Binary;
function testLargeSlice(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        @:check2r _t.run(("byte" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            @:check2r _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoUInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte() : stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceByte.LargeSliceByte>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        @:check2r _t.run(("int8" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            @:check2r _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoInt8>((20971520 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt8>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = (_i : stdgo.GoInt8);
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8() : stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceInt8.LargeSliceInt8>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        @:check2r _t.run(("struct" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            @:check2r _t.parallel();
            var _s = (new stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>((2097152 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((2097152 : stdgo.GoInt).toBasic() > 0 ? (2097152 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.encoding.gob.Gob_StringPair.StringPair)]) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_StringPair.StringPair>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)].a = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
                _s[(_i : stdgo.GoInt)].b = _s[(_i : stdgo.GoInt)].a?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct() : stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceStruct.LargeSliceStruct>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
        @:check2r _t.run(("string" : stdgo.GoString), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
            @:check2r _t.parallel();
            var _s = (new stdgo.Slice<stdgo.GoString>((2097152 : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
            for (_i => _ in _s) {
                _s[(_i : stdgo.GoInt)] = ((_i : stdgo.GoInt32) : stdgo.GoString)?.__copy__();
            };
            var _st = (stdgo.Go.setRef(({ s : _s } : stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString>);
            var _rt = (stdgo.Go.setRef((new stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString() : stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString)) : stdgo.Ref<stdgo._internal.encoding.gob.Gob_LargeSliceString.LargeSliceString>);
            stdgo._internal.encoding.gob.Gob__testEncodeDecode._testEncodeDecode(_t, stdgo.Go.toInterface(stdgo.Go.asInterface(_st)), stdgo.Go.toInterface(stdgo.Go.asInterface(_rt)));
        });
    }
