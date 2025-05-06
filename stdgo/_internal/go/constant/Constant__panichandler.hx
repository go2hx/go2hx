package stdgo._internal.go.constant;
function _panicHandler(_v:stdgo.Ref<stdgo._internal.go.constant.Constant_value.Value>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L508"
        {
            final __type__ = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            });
            if (__type__ == null) {
                var _p:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _p:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? "" : __type__.__underlying__().value);
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_makestring.makeString(_p?.__copy__());
                    var x = (_v : stdgo._internal.go.constant.Constant_value.Value);
                    x.exactString = __tmp__.exactString;
                    x.kind = __tmp__.kind;
                    x.string = __tmp__.string;
                    x._implementsValue = __tmp__._implementsValue;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Error))) {
                var _p:stdgo.Error = __type__ == null ? (null : stdgo.Error) : __type__.__underlying__() == null ? (null : stdgo.Error) : __type__ == null ? (null : stdgo.Error) : __type__.__underlying__().value;
                {
                    var __tmp__ = stdgo._internal.go.constant.Constant_makestring.makeString(_p.error()?.__copy__());
                    var x = (_v : stdgo._internal.go.constant.Constant_value.Value);
                    x.exactString = __tmp__.exactString;
                    x.kind = __tmp__.kind;
                    x.string = __tmp__.string;
                    x._implementsValue = __tmp__._implementsValue;
                };
            } else {
                var _p:stdgo.AnyInterface = __type__?.__underlying__();
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L516"
                throw stdgo.Go.toInterface(_p);
            };
        };
    }
