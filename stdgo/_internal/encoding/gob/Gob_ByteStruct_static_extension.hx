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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.ByteStruct_asInterface) class ByteStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct> = _g;
        if ((_g == null || (_g : Dynamic).__nil__)) {
            return stdgo._internal.errors.Errors_new_.new_(("NIL RECEIVER" : stdgo.GoString));
        };
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            return stdgo._internal.io.Io_eOF.eOF;
        };
        (@:checkr _g ?? throw "null pointer dereference")._a = _data[(0 : stdgo.GoInt)];
        for (_i => _c in _data) {
            if (_c != (((@:checkr _g ?? throw "null pointer dereference")._a + (_i : stdgo.GoUInt8) : stdgo.GoUInt8))) {
                return stdgo._internal.errors.Errors_new_.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_ByteStruct.ByteStruct> = _g;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b[(0 : stdgo.GoInt)] = (@:checkr _g ?? throw "null pointer dereference")._a;
        _b[(1 : stdgo.GoInt)] = ((@:checkr _g ?? throw "null pointer dereference")._a + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((@:checkr _g ?? throw "null pointer dereference")._a + (2 : stdgo.GoUInt8) : stdgo.GoUInt8);
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
