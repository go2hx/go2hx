package stdgo.strings;
class Reader_static_extension {
    static public function reset(_r:Reader, _s:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.reset(_r, _s);
    }
    static public function writeTo(_r:Reader, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.writeTo(_r, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:Reader, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.readAt(_r, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.size(_r);
    }
    static public function len(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_Reader.Reader>);
        return stdgo._internal.strings.Strings_Reader_static_extension.Reader_static_extension.len(_r);
    }
}
