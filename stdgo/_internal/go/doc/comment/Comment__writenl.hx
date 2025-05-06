package stdgo._internal.go.doc.comment;
function _writeNL(_out:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>):Void {
        var _data = _out.bytes();
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L72"
        while (((_n < (_data.length) : Bool) && (((_data[(((_data.length) - _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (32 : stdgo.GoUInt8)) || (_data[(((_data.length) - _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L73"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L75"
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L76"
            _out.truncate(((_data.length) - _n : stdgo.GoInt));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/comment/text.go#L78"
        _out.writeByte((10 : stdgo.GoUInt8));
    }
