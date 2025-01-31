package stdgo._internal.encoding.xml;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.errors.Errors;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
@:keep @:allow(stdgo._internal.encoding.xml.Xml.T_parentStack_asInterface) class T_parentStack_static_extension {
    @:keep
    @:tdfield
    static public function _push( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack> = _s;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_parents.length) : Bool)) {
                {
                    var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._p._writeStart((stdgo.Go.setRef(({ name : ({ local : _parents[(_i : stdgo.GoInt)].__copy__() } : stdgo._internal.encoding.xml.Xml_Name.Name) } : stdgo._internal.encoding.xml.Xml_StartElement.StartElement)) : stdgo.Ref<stdgo._internal.encoding.xml.Xml_StartElement.StartElement>)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _i++;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._stack = ((@:checkr _s ?? throw "null pointer dereference")._stack.__append__(...(_parents : Array<stdgo.GoString>)));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _trim( _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack>, _parents:stdgo.Slice<stdgo.GoString>):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.encoding.xml.Xml_T_parentStack.T_parentStack> = _s;
        var _split = (0 : stdgo.GoInt);
        while (((_split < (_parents.length) : Bool) && (_split < ((@:checkr _s ?? throw "null pointer dereference")._stack.length) : Bool) : Bool)) {
            if (_parents[(_split : stdgo.GoInt)] != ((@:checkr _s ?? throw "null pointer dereference")._stack[(_split : stdgo.GoInt)])) {
                break;
            };
            _split++;
        };
        {
            var _i = (((@:checkr _s ?? throw "null pointer dereference")._stack.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i >= _split : Bool)) {
                {
                    var _err = (@:check2r (@:checkr _s ?? throw "null pointer dereference")._p._writeEnd(({ local : (@:checkr _s ?? throw "null pointer dereference")._stack[(_i : stdgo.GoInt)].__copy__() } : stdgo._internal.encoding.xml.Xml_Name.Name)) : stdgo.Error);
                    if (_err != null) {
                        return _err;
                    };
                };
                _i--;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._stack = ((@:checkr _s ?? throw "null pointer dereference")._stack.__slice__(0, _split) : stdgo.Slice<stdgo.GoString>);
        return (null : stdgo.Error);
    }
}
