package stdgo.mime.multipart;
class Part_static_extension {
    static public function close(_p:Part):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.close(_p);
    }
    static public function read(_p:Part, _d:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        final _d = ([for (i in _d) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.read(_p, _d);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _populateHeaders(_p:Part, _maxMIMEHeaderSize:haxe.Int64, _maxMIMEHeaders:haxe.Int64):stdgo.Error {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        final _maxMIMEHeaderSize = (_maxMIMEHeaderSize : stdgo.GoInt64);
        final _maxMIMEHeaders = (_maxMIMEHeaders : stdgo.GoInt64);
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension._populateHeaders(_p, _maxMIMEHeaderSize, _maxMIMEHeaders);
    }
    static public function _parseContentDisposition(_p:Part):Void {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension._parseContentDisposition(_p);
    }
    static public function fileName(_p:Part):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.fileName(_p);
    }
    static public function formName(_p:Part):String {
        final _p = (_p : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Part.Part>);
        return stdgo._internal.mime.multipart.Multipart_Part_static_extension.Part_static_extension.formName(_p);
    }
}
