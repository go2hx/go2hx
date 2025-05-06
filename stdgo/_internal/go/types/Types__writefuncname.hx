package stdgo._internal.go.types;
function _writeFuncName(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _f:stdgo.Ref<stdgo._internal.go.types.Types_func.Func>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L593"
        if ((@:checkr _f ?? throw "null pointer dereference")._object._typ != null) {
            var _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference")._object._typ) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L595"
            {
                var _recv = _sig.recv();
                if (({
                    final value = _recv;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L596"
                    _buf.writeByte((40 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L597"
                    {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_recv.type()) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>), _1 : false };
                        }, __0 = __tmp__._0, _ok = __tmp__._1;
                        if (_ok) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L602"
                            _buf.writeString(("interface" : stdgo.GoString));
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L604"
                            stdgo._internal.go.types.Types_writetype.writeType(_buf, _recv.type(), _qf);
                        };
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L606"
                    _buf.writeByte((41 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L607"
                    _buf.writeByte((46 : stdgo.GoUInt8));
                } else if (({
                    final value = (@:checkr _f ?? throw "null pointer dereference")._object._pkg;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L609"
                    _buf.writeString(stdgo._internal.go.types.Types__packageprefix._packagePrefix((@:checkr _f ?? throw "null pointer dereference")._object._pkg, _qf)?.__copy__());
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/object.go#L612"
        _buf.writeString((@:checkr _f ?? throw "null pointer dereference")._object._name?.__copy__());
    }
