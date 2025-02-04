package stdgo._internal.mime.multipart;
@:keep @:allow(stdgo._internal.mime.multipart.Multipart.T_partReader_asInterface) class T_partReader_static_extension {
    @:keep
    @:tdfield
    static public function read( _pr:stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader, _d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _pr:stdgo._internal.mime.multipart.Multipart_t_partreader.T_partReader = _pr?.__copy__();
        var _p = _pr._p;
        var _br = (@:checkr (@:checkr _p ?? throw "null pointer dereference")._mr ?? throw "null pointer dereference")._bufReader;
        while ((((@:checkr _p ?? throw "null pointer dereference")._n == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
            var __tmp__ = @:check2r _br.peek(@:check2r _br.buffered()), _peek:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
            {
                var __tmp__ = stdgo._internal.mime.multipart.Multipart__scanuntilboundary._scanUntilBoundary(_peek, (@:checkr (@:checkr _p ?? throw "null pointer dereference")._mr ?? throw "null pointer dereference")._dashBoundary, (@:checkr (@:checkr _p ?? throw "null pointer dereference")._mr ?? throw "null pointer dereference")._nlDashBoundary, (@:checkr _p ?? throw "null pointer dereference")._total, (@:checkr _p ?? throw "null pointer dereference")._readErr);
                (@:checkr _p ?? throw "null pointer dereference")._n = @:tmpset0 __tmp__._0;
                (@:checkr _p ?? throw "null pointer dereference")._err = @:tmpset0 __tmp__._1;
            };
            if ((((@:checkr _p ?? throw "null pointer dereference")._n == (0 : stdgo.GoInt)) && ((@:checkr _p ?? throw "null pointer dereference")._err == null) : Bool)) {
                {
                    var __tmp__ = @:check2r _br.peek(((_peek.length) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    (@:checkr _p ?? throw "null pointer dereference")._readErr = @:tmpset0 __tmp__._1;
                };
                if (stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference")._readErr) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                    (@:checkr _p ?? throw "null pointer dereference")._readErr = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                };
            };
        };
        if ((@:checkr _p ?? throw "null pointer dereference")._n == ((0 : stdgo.GoInt))) {
            return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
        };
        var _n = (_d.length : stdgo.GoInt);
        if ((_n > (@:checkr _p ?? throw "null pointer dereference")._n : Bool)) {
            _n = (@:checkr _p ?? throw "null pointer dereference")._n;
        };
        {
            var __tmp__ = @:check2r _br.read((_d.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>));
            _n = @:tmpset0 __tmp__._0;
        };
        (@:checkr _p ?? throw "null pointer dereference")._total = ((@:checkr _p ?? throw "null pointer dereference")._total + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        (@:checkr _p ?? throw "null pointer dereference")._n = ((@:checkr _p ?? throw "null pointer dereference")._n - (_n) : stdgo.GoInt);
        if ((@:checkr _p ?? throw "null pointer dereference")._n == ((0 : stdgo.GoInt))) {
            return { _0 : _n, _1 : (@:checkr _p ?? throw "null pointer dereference")._err };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
}
