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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_benchmarkBuf_asInterface) class T_benchmarkBuf_static_extension {
    @:keep
    @:tdfield
    static public function _reset( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        (@:checkr _b ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function readByte( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        var _c = (0 : stdgo.GoUInt8), _err = (null : stdgo.Error);
        if (((@:checkr _b ?? throw "null pointer dereference")._offset >= ((@:checkr _b ?? throw "null pointer dereference")._data.length) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io_eOF.eOF };
                _c = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _c = (@:checkr _b ?? throw "null pointer dereference")._data[((@:checkr _b ?? throw "null pointer dereference")._offset : stdgo.GoInt)];
        (@:checkr _b ?? throw "null pointer dereference")._offset++;
        return { _0 : _c, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function read( _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_benchmarkBuf.T_benchmarkBuf> = _b;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        _n = _p.__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((@:checkr _b ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>));
        if (_n == ((0 : stdgo.GoInt))) {
            return {
                final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io_eOF.eOF };
                _n = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        (@:checkr _b ?? throw "null pointer dereference")._offset = ((@:checkr _b ?? throw "null pointer dereference")._offset + (_n) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
}
