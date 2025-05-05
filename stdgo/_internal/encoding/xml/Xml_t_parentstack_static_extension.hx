package stdgo._internal.encoding.xml;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_parentStack_asInterface) class T_parentStack_static_extension {
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_parentstack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_parentstack.T_parentStack> = _s;
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1100"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_parents.length) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1101"
                {
                    var _err = ((@:checkr _s ?? throw "null pointer dereference")._p._writeStart((stdgo.Go.setRef(({ name : ({ local : _parents[(_i : stdgo.GoInt)].__copy__() } : stdgo._internal.encoding.xml.Xml_name.Name) } : stdgo._internal.encoding.xml.Xml_startelement.StartElement)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_startelement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1102"
                        return _err;
                    };
                };
                _i++;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._stack = ((@:checkr _s ?? throw "null pointer dereference")._stack.__append__(...(_parents : Array<stdgo.GoString>)) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1106"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _trim( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_parentstack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_t_parentstack.T_parentStack> = _s;
        var _split = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1084"
        while (((_split < (_parents.length) : Bool) && (_split < ((@:checkr _s ?? throw "null pointer dereference")._stack.length) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1085"
            if (_parents[(_split : stdgo.GoInt)] != ((@:checkr _s ?? throw "null pointer dereference")._stack[(_split : stdgo.GoInt)])) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1086"
                break;
            };
            _split++;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1089"
        {
            var _i = (((@:checkr _s ?? throw "null pointer dereference")._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= _split : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1090"
                {
                    var _err = ((@:checkr _s ?? throw "null pointer dereference")._p._writeEnd(({ local : (@:checkr _s ?? throw "null pointer dereference")._stack[(_i : stdgo.GoInt)].__copy__() } : stdgo._internal.encoding.xml.Xml_name.Name)) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1091"
                        return _err;
                    };
                };
                _i--;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._stack = ((@:checkr _s ?? throw "null pointer dereference")._stack.__slice__(0, _split) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/xml/marshal.go#L1095"
        return (null : stdgo.Error);
    }
}
