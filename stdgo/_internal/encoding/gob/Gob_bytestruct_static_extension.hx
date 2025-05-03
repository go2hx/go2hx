package stdgo._internal.encoding.gob;
@:keep @:allow(stdgo._internal.encoding.gob.Gob.ByteStruct_asInterface) class ByteStruct_static_extension {
    @:keep
    @:tdfield
    static public function gobDecode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct> = _g;
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L58"
        if (({
            final value = _g;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L59"
            return stdgo._internal.errors.Errors_new_.new_(("NIL RECEIVER" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L62"
        if ((_data.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L63"
            return stdgo._internal.io.Io_eof.eOF;
        };
        (@:checkr _g ?? throw "null pointer dereference")._a = _data[(0 : stdgo.GoInt)];
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L66"
        for (_i => _c in _data) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L67"
            if (_c != (((@:checkr _g ?? throw "null pointer dereference")._a + (_i : stdgo.GoUInt8) : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L68"
                return stdgo._internal.errors.Errors_new_.new_(("invalid data sequence" : stdgo.GoString));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L71"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function gobEncode( _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        @:recv var _g:stdgo.Ref<stdgo._internal.encoding.gob.Gob_bytestruct.ByteStruct> = _g;
        var _b = (new stdgo.Slice<stdgo.GoUInt8>((3 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        _b[(0 : stdgo.GoInt)] = (@:checkr _g ?? throw "null pointer dereference")._a;
        _b[(1 : stdgo.GoInt)] = ((@:checkr _g ?? throw "null pointer dereference")._a + (1 : stdgo.GoUInt8) : stdgo.GoUInt8);
        _b[(2 : stdgo.GoInt)] = ((@:checkr _g ?? throw "null pointer dereference")._a + (2 : stdgo.GoUInt8) : stdgo.GoUInt8);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/gobencdec_test.go#L54"
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
}
