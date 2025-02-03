package stdgo.encoding.json;
class T_encodeState_static_extension {
    static public function _reflectValue(_e:T_encodeState, _v:stdgo._internal.reflect.Reflect_Value.Value, _opts:T_encOpts):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._reflectValue(_e, _v, _opts);
    }
    static public function _error(_e:T_encodeState, _err:stdgo.Error):Void {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._error(_e, _err);
    }
    static public function _marshal(_e:T_encodeState, _v:stdgo.AnyInterface, _opts:T_encOpts):stdgo.Error {
        final _e = (_e : stdgo.Ref<stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState>);
        final _v = (_v : stdgo.AnyInterface);
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._marshal(_e, _v, _opts);
    }
    public static function _tryGrowByReslice(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        final _0 = (_0 : stdgo.GoInt);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._tryGrowByReslice(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _readSlice(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._readSlice(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function _grow(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):StdTypes.Int {
        final _0 = (_0 : stdgo.GoInt);
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._grow(__self__, _0);
    }
    public static function _empty(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Bool {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension._empty(__self__);
    }
    public static function writeTo(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeTo(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeString(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = (_0 : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeRune(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function writeByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Error {
        final _0 = (_0 : stdgo.GoUInt8);
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.writeByte(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.write(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function unreadRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.unreadRune(__self__);
    }
    public static function unreadByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Error {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.unreadByte(__self__);
    }
    public static function truncate(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.truncate(__self__, _0);
    }
    public static function string(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):String {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.string(__self__);
    }
    public static function reset(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Void {
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.reset(__self__);
    }
    public static function readString(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readString(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readRune(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readRune(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function readFrom(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readFrom(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function readBytes(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _0 = (_0 : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readBytes(__self__, _0);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    public static function readByte(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):stdgo.Tuple<std.UInt, stdgo.Error> {
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.readByte(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function read(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _0 = ([for (i in _0) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.read(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function next(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Array<std.UInt> {
        final _0 = (_0 : stdgo.GoInt);
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.next(__self__, _0)) i];
    }
    public static function len(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.len(__self__);
    }
    public static function grow(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState, _0:StdTypes.Int):Void {
        final _0 = (_0 : stdgo.GoInt);
        stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.grow(__self__, _0);
    }
    public static function cap(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.cap(__self__);
    }
    public static function bytes(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.bytes(__self__)) i];
    }
    public static function availableBuffer(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):Array<std.UInt> {
        return [for (i in stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.availableBuffer(__self__)) i];
    }
    public static function available(__self__:stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState):StdTypes.Int {
        return stdgo._internal.encoding.json.Json_T_encodeState_static_extension.T_encodeState_static_extension.available(__self__);
    }
}
