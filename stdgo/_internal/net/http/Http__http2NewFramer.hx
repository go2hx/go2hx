package stdgo._internal.net.http;
function _http2NewFramer(_w:stdgo._internal.io.Io_Writer.Writer, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer> {
        var _fr = (stdgo.Go.setRef(({ _w : _w, _r : _r, _countError : function(_0:stdgo.GoString):Void {}, _logReads : stdgo._internal.net.http.Http__http2logFrameReads._http2logFrameReads, _logWrites : stdgo._internal.net.http.Http__http2logFrameWrites._http2logFrameWrites, _debugReadLoggerf : stdgo._internal.log.Log_printf.printf, _debugWriteLoggerf : stdgo._internal.log.Log_printf.printf } : stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer)) : stdgo.Ref<stdgo._internal.net.http.Http_T_http2Framer.T_http2Framer>);
        (@:checkr _fr ?? throw "null pointer dereference")._getReadBuf = function(_size:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
            if (((@:checkr _fr ?? throw "null pointer dereference")._readBuf.capacity >= (_size : stdgo.GoInt) : Bool)) {
                return ((@:checkr _fr ?? throw "null pointer dereference")._readBuf.__slice__(0, _size) : stdgo.Slice<stdgo.GoUInt8>);
            };
            (@:checkr _fr ?? throw "null pointer dereference")._readBuf = (new stdgo.Slice<stdgo.GoUInt8>((_size : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            return (@:checkr _fr ?? throw "null pointer dereference")._readBuf;
        };
        @:check2r _fr.setMaxReadFrameSize((16777215u32 : stdgo.GoUInt32));
        return _fr;
    }
