package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
@:keep @:allow(_internal.io_test.Io_test.T_writeToChecker_asInterface) class T_writeToChecker_static_extension {
    @:keep
    static public function writeTo( _wt:stdgo.Ref<_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker>, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _wt:stdgo.Ref<_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker> = _wt;
        _wt._writeToCalled = true;
        return _wt.buffer.writeTo(_w);
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(__0);
    @:embedded
    public static function _readSlice( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(_c);
    @:embedded
    public static function _grow( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt):stdgo.GoInt return __self__._grow(__0);
    @:embedded
    public static function _empty( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):Bool return __self__._empty();
    @:embedded
    public static function writeString( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _c:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(_c);
    @:embedded
    public static function write( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt) __self__.truncate(__0);
    @:embedded
    public static function string( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker) __self__.reset();
    @:embedded
    public static function readString( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(_c);
    @:embedded
    public static function readRune( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _c:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(_c);
    @:embedded
    public static function readByte( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(__0);
    @:embedded
    public static function len( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker, __0:stdgo.GoInt) __self__.grow(__0);
    @:embedded
    public static function cap( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:_internal.io_test.Io_test_T_writeToChecker.T_writeToChecker):stdgo.GoInt return __self__.available();
}
