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
@:keep @:allow(stdgo._internal.encoding.gob.Gob.T_encBuffer_asInterface) class T_encBuffer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        if ((((@:checkr _e ?? throw "null pointer dereference")._data.length) >= (1073741824 : stdgo.GoInt) : Bool)) {
            (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._scratch.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._data.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    @:tdfield
    static public function bytes( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._data;
    }
    @:keep
    @:tdfield
    static public function len( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>):stdgo.GoInt {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        return ((@:checkr _e ?? throw "null pointer dereference")._data.length);
    }
    @:keep
    @:tdfield
    static public function writeString( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _s:stdgo.GoString):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._data.__append__(...(_s : Array<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function write( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._data.__append__(...(_p : Array<stdgo.GoUInt8>)));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _writeByte( _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>, _c:stdgo.GoUInt8):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer> = _e;
        (@:checkr _e ?? throw "null pointer dereference")._data = ((@:checkr _e ?? throw "null pointer dereference")._data.__append__(_c));
    }
}
