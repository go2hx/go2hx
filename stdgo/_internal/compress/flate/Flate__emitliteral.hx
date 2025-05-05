package stdgo._internal.compress.flate;
function _emitLiteral(_dst:stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>, _lit:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token> {
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L202"
        for (__0 => _v in _lit) {
            _dst = (_dst.__append__(stdgo._internal.compress.flate.Flate__literaltoken._literalToken((_v : stdgo.GoUInt32))) : stdgo.Slice<stdgo._internal.compress.flate.Flate_t_token.T_token>);
        };
        //"file:///home/runner/.go/go1.21.3/src/compress/flate/deflatefast.go#L205"
        return _dst;
    }
