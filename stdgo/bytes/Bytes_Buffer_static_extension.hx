package stdgo.bytes;
class Buffer_static_extension {
    static public function readString(_b:Buffer, _delim:std.UInt):stdgo.Tuple<String, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.readString(_b, _delim);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readSlice(_b:Buffer, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension._readSlice(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function readBytes(_b:Buffer, _delim:std.UInt):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _delim = (_delim : stdgo.GoUInt8);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.readBytes(_b, _delim);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function unreadByte(_b:Buffer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.unreadByte(_b);
    }
    static public function unreadRune(_b:Buffer):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.unreadRune(_b);
    }
    static public function readRune(_b:Buffer):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.readRune(_b);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function readByte(_b:Buffer):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.readByte(_b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function next(_b:Buffer, _n:StdTypes.Int):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.next(_b, _n)) i];
    }
    static public function read(_b:Buffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.read(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Buffer, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Buffer, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.writeByte(_b, _c);
    }
    static public function writeTo(_b:Buffer, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.writeTo(_b, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readFrom(_b:Buffer, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.readFrom(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeString(_b:Buffer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_b:Buffer, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Buffer, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Buffer, _n:StdTypes.Int):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension._grow(_b, _n);
    }
    static public function _tryGrowByReslice(_b:Buffer, _n:StdTypes.Int):stdgo.Tuple<StdTypes.Int, Bool> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        return {
            final obj = stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension._tryGrowByReslice(_b, _n);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function reset(_b:Buffer):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.reset(_b);
    }
    static public function truncate(_b:Buffer, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.truncate(_b, _n);
    }
    static public function available(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.available(_b);
    }
    static public function cap(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.cap(_b);
    }
    static public function len(_b:Buffer):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.len(_b);
    }
    static public function _empty(_b:Buffer):Bool {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension._empty(_b);
    }
    static public function string(_b:Buffer):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.string(_b);
    }
    static public function availableBuffer(_b:Buffer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return [for (i in stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.availableBuffer(_b)) i];
    }
    static public function bytes(_b:Buffer):Array<std.UInt> {
        final _b = (_b : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
        return [for (i in stdgo._internal.bytes.Bytes_Buffer_static_extension.Buffer_static_extension.bytes(_b)) i];
    }
}
