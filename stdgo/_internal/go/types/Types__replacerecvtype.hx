package stdgo._internal.go.types;
function _replaceRecvType(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>, _old:stdgo._internal.go.types.Types_type_.Type_, _new_:stdgo._internal.go.types.Types_type_.Type_):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>; var _1 : Bool; } {
        var _out = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>), _copied = false;
        _out = _in;
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L406"
        for (_i => _method in _in) {
            var _sig = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_method.type()) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>);
            //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L408"
            if ((({
                final value = (@:checkr _sig ?? throw "null pointer dereference")._recv;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && (stdgo.Go.toInterface((@:checkr _sig ?? throw "null pointer dereference")._recv.type()) == stdgo.Go.toInterface(_old)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L409"
                if (!_copied) {
                    _out = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>((_in.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_func.Func>>);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L414"
                    _out.__copyTo__(_in);
                    _copied = true;
                };
                var _newsig = ((_sig : stdgo._internal.go.types.Types_signature.Signature)?.__copy__() : stdgo._internal.go.types.Types_signature.Signature);
                _newsig._recv = stdgo._internal.go.types.Types__substvar._substVar((@:checkr _sig ?? throw "null pointer dereference")._recv, _new_);
                _out[(_i : stdgo.GoInt)] = stdgo._internal.go.types.Types__substfunc._substFunc(_method, stdgo.Go.asInterface((stdgo.Go.setRef(_newsig) : stdgo.Ref<stdgo._internal.go.types.Types_signature.Signature>)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/subst.go#L422"
        return { _0 : _out, _1 : _copied };
    }
