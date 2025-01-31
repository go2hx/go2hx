package stdgo._internal.math.big;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.flag.Flag;
import stdgo._internal.errors.Errors;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.Math;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.encoding.gob.Gob;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.json.Json;
import stdgo._internal.testing.quick.Quick;
import stdgo._internal.encoding.hex.Hex;
import stdgo._internal.encoding.xml.Xml;
import stdgo._internal.path.filepath.Filepath;
import stdgo._internal.os.Os;
import stdgo._internal.os.exec.Exec;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.sort.Sort;
@:keep @:allow(stdgo._internal.math.big.Big.T_byteReader_asInterface) class T_byteReader_static_extension {
    @:keep
    @:tdfield
    static public function unreadByte( _r:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):stdgo.Error {
        @:recv var _r:stdgo._internal.math.big.Big_T_byteReader.T_byteReader = _r?.__copy__();
        return _r.unreadRune();
    }
    @:keep
    @:tdfield
    static public function readByte( _r:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo._internal.math.big.Big_T_byteReader.T_byteReader = _r?.__copy__();
        var __tmp__ = _r.readRune(), _ch:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (((_size != (1 : stdgo.GoInt)) && (_err == null) : Bool)) {
            _err = stdgo._internal.fmt.Fmt_errorf.errorf(("invalid rune %#U" : stdgo.GoString), stdgo.Go.toInterface(_ch));
        };
        return { _0 : (_ch : stdgo.GoUInt8), _1 : _err };
    }
    @:embedded
    @:embeddededffieldsffun
    public static function width( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):{ var _0 : stdgo.GoInt; var _1 : Bool; } return @:_5 __self__.width();
    @:embedded
    @:embeddededffieldsffun
    public static function unreadRune( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):stdgo.Error return @:_5 __self__.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public static function token( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader, _0:Bool, _1:stdgo.GoInt32 -> Bool):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.token(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function skipSpace( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):Void return @:_5 __self__.skipSpace();
    @:embedded
    @:embeddededffieldsffun
    public static function readRune( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__.readRune();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.math.big.Big_T_byteReader.T_byteReader, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
}
