package stdgo._internal.internal.coverage.encodemeta;
function _hashFuncDesc(_h:stdgo._internal.hash.Hash_hash.Hash, _f:stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>, _tmp:stdgo.Slice<stdgo.GoUInt8>):Void {
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L201"
        stdgo._internal.io.Io_writestring.writeString(_h, (@:checkr _f ?? throw "null pointer dereference").funcname?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L202"
        stdgo._internal.io.Io_writestring.writeString(_h, (@:checkr _f ?? throw "null pointer dereference").srcfile?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L203"
        for (__0 => _u in (@:checkr _f ?? throw "null pointer dereference").units) {
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L204"
            stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_u.stLine, _h, _tmp);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L205"
            stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_u.stCol, _h, _tmp);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L206"
            stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_u.enLine, _h, _tmp);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L207"
            stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_u.enCol, _h, _tmp);
            //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L208"
            stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_u.nxStmts, _h, _tmp);
        };
        var _lit = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L211"
        if ((@:checkr _f ?? throw "null pointer dereference").lit) {
            _lit = (1u32 : stdgo.GoUInt32);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/coverage/encodemeta/encode.go#L214"
        stdgo._internal.internal.coverage.encodemeta.Encodemeta__h32._h32(_lit, _h, _tmp);
    }
