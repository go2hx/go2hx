package stdgo.bufio;
class Scanner_static_extension {
    static public function split(_s:Scanner, _split:SplitFunc):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.split(_s, _split);
    }
    static public function buffer(_s:Scanner, _buf:Array<std.UInt>, _max:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        final _buf = ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _max = (_max : stdgo.GoInt);
        stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.buffer(_s, _buf, _max);
    }
    static public function _setErr(_s:Scanner, _err:stdgo.Error):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        final _err = (_err : stdgo.Error);
        stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension._setErr(_s, _err);
    }
    static public function _advance(_s:Scanner, _n:StdTypes.Int):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension._advance(_s, _n);
    }
    static public function scan(_s:Scanner):Bool {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.scan(_s);
    }
    static public function text(_s:Scanner):String {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.text(_s);
    }
    static public function bytes(_s:Scanner):Array<std.UInt> {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        return [for (i in stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.bytes(_s)) i];
    }
    static public function err(_s:Scanner):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.err(_s);
    }
    static public function errOrEOF(_s:Scanner):stdgo.Error {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        return stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.errOrEOF(_s);
    }
    static public function maxTokenSize(_s:Scanner, _n:StdTypes.Int):Void {
        final _s = (_s : stdgo.Ref<stdgo._internal.bufio.Bufio_Scanner.Scanner>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.bufio.Bufio_Scanner_static_extension.Scanner_static_extension.maxTokenSize(_s, _n);
    }
}
