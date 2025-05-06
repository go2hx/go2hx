package stdgo._internal.go.internal.gcimporter;
@:keep @:allow(stdgo._internal.go.internal.gcimporter.Gcimporter.T_intReader_asInterface) class T_intReader_static_extension {
    @:keep
    @:tdfield
    static public function _uint64( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader>):stdgo.GoUInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader> = _r;
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readuvarint.readUvarint(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").reader)), _i:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L41"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L42"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("import %q: read varint error: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._path), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L44"
        return _i;
    }
    @:keep
    @:tdfield
    static public function _int64( _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader> = _r;
        var __tmp__ = stdgo._internal.encoding.binary.Binary_readvarint.readVarint(stdgo.Go.asInterface((@:checkr _r ?? throw "null pointer dereference").reader)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L33"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L34"
            stdgo._internal.go.internal.gcimporter.Gcimporter__errorf._errorf(("import %q: read varint error: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _r ?? throw "null pointer dereference")._path), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/internal/gcimporter/iimport.go#L36"
        return _i;
    }
    @:embedded
    @:embeddededffieldsffun
    public static function _writeBuf( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__._writeBuf(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _reset( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.io.Io_reader.Reader):Void return @:_5 __self__._reset(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _readErr( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error return @:_5 __self__._readErr();
    @:embedded
    @:embeddededffieldsffun
    public static function _fill( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):Void return @:_5 __self__._fill();
    @:embedded
    @:embeddededffieldsffun
    public static function _collectFragments( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.GoInt; var _3 : stdgo.Error; } return @:_5 __self__._collectFragments(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function writeTo( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function unreadRune( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error return @:_5 __self__.unreadRune();
    @:embedded
    @:embeddededffieldsffun
    public static function unreadByte( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.Error return @:_5 __self__.unreadByte();
    @:embedded
    @:embeddededffieldsffun
    public static function size( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.GoInt return @:_5 __self__.size();
    @:embedded
    @:embeddededffieldsffun
    public static function reset( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo._internal.io.Io_reader.Reader):Void return @:_5 __self__.reset(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readString( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoUInt8):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.readString(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readSlice( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readSlice(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readRune( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return @:_5 __self__.readRune();
    @:embedded
    @:embeddededffieldsffun
    public static function readLine( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : Bool; var _2 : stdgo.Error; } return @:_5 __self__.readLine();
    @:embedded
    @:embeddededffieldsffun
    public static function readBytes( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoUInt8):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.readBytes(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readByte( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return @:_5 __self__.readByte();
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function peek( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_5 __self__.peek(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function discard( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader, _0:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.discard(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function buffered( __self__:stdgo._internal.go.internal.gcimporter.Gcimporter_t_intreader.T_intReader):stdgo.GoInt return @:_5 __self__.buffered();
}
