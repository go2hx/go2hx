package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.T_encodeState_asInterface) class T_encodeState_static_extension {
    @:keep
    static public function _reflectValue( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState> = _e;
        stdgo._internal.encoding.json.Json__valueEncoder._valueEncoder(_v?.__copy__())(_e, _v?.__copy__(), _opts?.__copy__());
    }
    @:keep
    static public function _error( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _err:stdgo.Error):Void {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState> = _e;
        throw stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError(_err) : stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError)));
    }
    @:keep
    static public function _marshal( _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>, _v:stdgo.AnyInterface, _opts:stdgo._internal.encoding.json.Json_T_encOpts.T_encOpts):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState> = _e;
        var __deferstack__:Array<Void -> Void> = [];
        var _err = (null : stdgo.Error);
        try {
            {
                __deferstack__.unshift(() -> ({
                    var a = function():Void {
                        {
                            var _r = ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            } : stdgo.AnyInterface);
                            if (_r != null) {
                                {
                                    var __tmp__ = try {
                                        { _0 : (stdgo.Go.typeAssert((_r : stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError)) : stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError), _1 : true };
                                    } catch(_) {
                                        { _0 : ({} : stdgo._internal.encoding.json.Json_T_jsonError.T_jsonError), _1 : false };
                                    }, _je = __tmp__._0, _ok = __tmp__._1;
                                    if (_ok) {
                                        _err = _je._error;
                                    } else {
                                        throw stdgo.Go.toInterface(_r);
                                    };
                                };
                            };
                        };
                    };
                    a();
                }));
            };
            _e._reflectValue(stdgo._internal.reflect.Reflect_valueOf.valueOf(_v)?.__copy__(), _opts?.__copy__());
            {
                final __ret__:stdgo.Error = _err = (null : stdgo.Error);
                for (defer in __deferstack__) {
                    defer();
                };
                return __ret__;
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return _err;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return _err;
        };
    }
    @:embedded
    public static function _tryGrowByReslice( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } return __self__._tryGrowByReslice(_n);
    @:embedded
    public static function _readSlice( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__._readSlice(__0);
    @:embedded
    public static function _grow( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _n:stdgo.GoInt):stdgo.GoInt return __self__._grow(_n);
    @:embedded
    public static function _empty( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Bool return __self__._empty();
    @:embedded
    public static function writeTo( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _w:stdgo._internal.io.Io_Writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.writeTo(_w);
    @:embedded
    public static function writeString( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeString(__0);
    @:embedded
    public static function writeRune( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoInt32):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.writeRune(__0);
    @:embedded
    public static function writeByte( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoUInt8):stdgo.Error return __self__.writeByte(__0);
    @:embedded
    public static function write( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.write(_b);
    @:embedded
    public static function unreadRune( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error return __self__.unreadRune();
    @:embedded
    public static function unreadByte( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error return __self__.unreadByte();
    @:embedded
    public static function truncate( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _n:stdgo.GoInt) __self__.truncate(_n);
    @:embedded
    public static function string( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.GoString return __self__.string();
    @:embedded
    public static function reset( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState) __self__.reset();
    @:embedded
    public static function readString( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return __self__.readString(__0);
    @:embedded
    public static function readRune( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.readRune();
    @:embedded
    public static function readFrom( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _r:stdgo._internal.io.Io_Reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.readFrom(_r);
    @:embedded
    public static function readBytes( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, __0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.readBytes(__0);
    @:embedded
    public static function readByte( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.readByte();
    @:embedded
    public static function read( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _b:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.read(_b);
    @:embedded
    public static function next( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.next(_n);
    @:embedded
    public static function len( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.GoInt return __self__.len();
    @:embedded
    public static function grow( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _n:stdgo.GoInt) __self__.grow(_n);
    @:embedded
    public static function cap( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.GoInt return __self__.cap();
    @:embedded
    public static function bytes( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Slice<stdgo.GoUInt8> return __self__.bytes();
    @:embedded
    public static function availableBuffer( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Slice<stdgo.GoUInt8> return __self__.availableBuffer();
    @:embedded
    public static function available( __self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.GoInt return __self__.available();
}
