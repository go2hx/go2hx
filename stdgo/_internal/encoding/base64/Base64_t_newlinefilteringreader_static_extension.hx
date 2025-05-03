package stdgo._internal.encoding.base64;
@:keep @:allow(stdgo._internal.encoding.base64.Base64.T_newlineFilteringReader_asInterface) class T_newlineFilteringReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _r:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader>, _p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_newlinefilteringreader.T_newlineFilteringReader> = _r;
        var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._wrapped.read(_p), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L597"
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _offset = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L599"
            for (_i => _b in (_p.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L600"
                if (((_b != (13 : stdgo.GoUInt8)) && (_b != (10 : stdgo.GoUInt8)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L601"
                    if (_i != (_offset)) {
                        _p[(_offset : stdgo.GoInt)] = _b;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L604"
                    _offset++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L607"
            if ((_offset > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L608"
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = (@:checkr _r ?? throw "null pointer dereference")._wrapped.read(_p);
                _n = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/base64/base64.go#L613"
        return { _0 : _n, _1 : _err };
    }
}
