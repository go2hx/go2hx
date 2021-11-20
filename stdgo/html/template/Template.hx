package stdgo.html.template;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class CSS {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new CSS(__t__);
}
@:named class HTML {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new HTML(__t__);
}
@:named class HTMLAttr {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new HTMLAttr(__t__);
}
@:named class JS {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new JS(__t__);
}
@:named class JSStr {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new JSStr(__t__);
}
@:named class URL {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new URL(__t__);
}
@:named class Srcset {
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Srcset(__t__);
}
@:named class T_contentType {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_contentType(__t__);
}
@:structInit class T_context {
    public function _mangle(_templateName:GoString):GoString {
        var _c = this.__copy__();
        if (_c._state.__t__ == _stateText.__t__) {
            return _templateName;
        };
        var _s:GoString = _templateName + (("$htmltemplate_" : GoString)) + _c._state.toString();
        if (_c._delim.__t__ != _delimNone.__t__) {
            _s = _s + ((("_" : GoString)) + _c._delim.toString());
        };
        if (_c._urlPart.__t__ != _urlPartNone.__t__) {
            _s = _s + ((("_" : GoString)) + _c._urlPart.toString());
        };
        if (_c._jsCtx.__t__ != _jsCtxRegexp.__t__) {
            _s = _s + ((("_" : GoString)) + _c._jsCtx.toString());
        };
        if (_c._attr.__t__ != _attrNone.__t__) {
            _s = _s + ((("_" : GoString)) + _c._attr.toString());
        };
        if (_c._element.__t__ != _elementNone.__t__) {
            _s = _s + ((("_" : GoString)) + _c._element.toString());
        };
        return _s;
    }
    public function _eq(_d:T_context):Bool {
        var _c = this.__copy__();
        return _c._state.__t__ == _d._state.__t__ && _c._delim.__t__ == _d._delim.__t__ && _c._urlPart.__t__ == _d._urlPart.__t__ && _c._jsCtx.__t__ == _d._jsCtx.__t__ && _c._attr.__t__ == _d._attr.__t__ && _c._element.__t__ == _d._element.__t__ && _c._err == _d._err;
    }
    public function toString():GoString {
        var _c = this.__copy__();
        var _err:Error = ((null : stdgo.Error));
        if (_c._err != null && !_c._err.isNil()) {
            _err = _c._err.value;
        };
        return stdgo.fmt.Fmt.sprintf("{%v %v %v %v %v %v %v}", Go.toInterface(_c._state), Go.toInterface(_c._delim), Go.toInterface(_c._urlPart), Go.toInterface(_c._jsCtx), Go.toInterface(_c._attr), Go.toInterface(_c._element), Go.toInterface(_err));
    }
    public var _state : T_state = new T_state();
    public var _delim : T_delim = new T_delim();
    public var _urlPart : T_urlPart = new T_urlPart();
    public var _jsCtx : T_jsCtx = new T_jsCtx();
    public var _attr : T_attr = new T_attr();
    public var _element : T_element = new T_element();
    public var _err : Pointer<Error> = new Pointer<Error>().nil();
    public function new(?_state:T_state, ?_delim:T_delim, ?_urlPart:T_urlPart, ?_jsCtx:T_jsCtx, ?_attr:T_attr, ?_element:T_element, ?_err:Pointer<Error>) stdgo.internal.Macro.initLocals();
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_context(_state, _delim, _urlPart, _jsCtx, _attr, _element, _err);
    }
    public function __set__(__tmp__) {
        this._state = __tmp__._state;
        this._delim = __tmp__._delim;
        this._urlPart = __tmp__._urlPart;
        this._jsCtx = __tmp__._jsCtx;
        this._attr = __tmp__._attr;
        this._element = __tmp__._element;
        this._err = __tmp__._err;
        return this;
    }
}
@:named class T_state {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_state((__state_index.length - ((1 : GoInt)))).__t__) {
            return (("state(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __state_name.__slice__(__state_index[_i.__t__], __state_index[new T_state(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_state(__t__);
}
@:named class T_delim {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_delim((__delim_index.length - ((1 : GoInt)))).__t__) {
            return (("delim(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __delim_name.__slice__(__delim_index[_i.__t__], __delim_index[new T_delim(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_delim(__t__);
}
@:named class T_urlPart {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_urlPart((__urlPart_index.length - ((1 : GoInt)))).__t__) {
            return (("urlPart(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __urlPart_name.__slice__(__urlPart_index[_i.__t__], __urlPart_index[new T_urlPart(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_urlPart(__t__);
}
@:named class T_jsCtx {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_jsCtx((__jsCtx_index.length - ((1 : GoInt)))).__t__) {
            return (("jsCtx(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __jsCtx_name.__slice__(__jsCtx_index[_i.__t__], __jsCtx_index[new T_jsCtx(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_jsCtx(__t__);
}
@:named class T_element {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_element((__element_index.length - ((1 : GoInt)))).__t__) {
            return (("element(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __element_name.__slice__(__element_index[_i.__t__], __element_index[new T_element(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_element(__t__);
}
@:named class T_attr {
    public function toString():GoString {
        var _i = this.__copy__();
        if (_i.__t__ >= new T_attr((__attr_index.length - ((1 : GoInt)))).__t__) {
            return (("attr(" : GoString)) + stdgo.strconv.Strconv.formatInt(_i.__t__, ((10 : GoInt))) + ((")" : GoString));
        };
        return __attr_name.__slice__(__attr_index[_i.__t__], __attr_index[new T_attr(_i.__t__ + ((1 : GoUInt8))).__t__]);
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new T_attr(__t__);
}
@:structInit class Error {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value.node != null) {
            var __tmp__ = ((new Pointer<stdgo.text.template.parse.Parse.Tree>().nil() : Pointer<stdgo.text.template.parse.Parse.Tree>)).value.errorContext(_e.value.node), _loc:GoString = __tmp__._0, _:GoString = __tmp__._1;
            return stdgo.fmt.Fmt.sprintf("html/template:%s: %s", Go.toInterface(_loc), Go.toInterface(_e.value.description));
        } else if (_e.value.line != ((0 : GoInt))) {
            return stdgo.fmt.Fmt.sprintf("html/template:%s:%d: %s", Go.toInterface(_e.value.name), Go.toInterface(_e.value.line), Go.toInterface(_e.value.description));
        } else if (_e.value.name != (("" : GoString))) {
            return stdgo.fmt.Fmt.sprintf("html/template:%s: %s", Go.toInterface(_e.value.name), Go.toInterface(_e.value.description));
        };
        return (("html/template: " : GoString)) + _e.value.description;
    }
    public var errorCode : ErrorCode = new ErrorCode();
    public var node : stdgo.text.template.parse.Parse.Node = ((null : stdgo.text.template.parse.Parse.Node));
    public var name : GoString = (("" : GoString));
    public var line : GoInt = ((0 : GoInt));
    public var description : GoString = (("" : GoString));
    public function new(?errorCode:ErrorCode, ?node:stdgo.text.template.parse.Parse.Node, ?name:GoString, ?line:GoInt, ?description:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(errorCode) + " " + Go.string(node) + " " + Go.string(name) + " " + Go.string(line) + " " + Go.string(description) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Error(errorCode, node, name, line, description);
    }
    public function __set__(__tmp__) {
        this.errorCode = __tmp__.errorCode;
        this.node = __tmp__.node;
        this.name = __tmp__.name;
        this.line = __tmp__.line;
        this.description = __tmp__.description;
        return this;
    }
}
@:named class ErrorCode {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new ErrorCode(__t__);
}
@:structInit class T_escaper {
    public function _arbitraryTemplate():Pointer<Template> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_t in _e.value._ns.value._set) {
            return _t;
        };
        throw "no templates in name space";
    }
    public function _template(_name:GoString):Pointer<stdgo.text.template.Template.Template> {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _t:Pointer<stdgo.text.template.Template.Template> = _e.value._arbitraryTemplate().value._text.value.lookup(_name);
        if (_t == null || _t.isNil()) {
            _t = _e.value._derived[_name];
        };
        return _t;
    }
    public function _commit():Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _name;
            for (_obj in _e.value._output.keyValueIterator()) {
                _name = _obj.key;
                _e.value._template(_name).value.funcs(_funcMap.__copy__());
            };
        };
        var _tmpl:Pointer<Template> = _e.value._arbitraryTemplate();
        for (_t in _e.value._derived) {
            {
                var __tmp__ = _tmpl.value._text.value.addParseTree(_t.value.name(), _t.value.tree), _:Pointer<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    throw "error adding derived template";
                };
            };
        };
        {
            var _n;
            var _s;
            for (_obj in _e.value._actionNodeEdits.keyValueIterator()) {
                _n = _obj.key;
                _s = _obj.value;
                _ensurePipelineContains(_n.value.pipe, _s);
            };
        };
        {
            var _n;
            var _name;
            for (_obj in _e.value._templateNodeEdits.keyValueIterator()) {
                _n = _obj.key;
                _name = _obj.value;
                _n.value.name = _name;
            };
        };
        {
            var _n;
            var _s;
            for (_obj in _e.value._textNodeEdits.keyValueIterator()) {
                _n = _obj.key;
                _s = _obj.value;
                _n.value.text = _s;
            };
        };
        _e.value._called = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        _e.value._actionNodeEdits = new GoMap<Pointer<stdgo.text.template.parse.Parse.ActionNode>, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)))));
        _e.value._templateNodeEdits = new GoMap<Pointer<stdgo.text.template.parse.Parse.TemplateNode>, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind))));
        _e.value._textNodeEdits = new GoMap<Pointer<stdgo.text.template.parse.Parse.TextNode>, Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))));
    }
    public function _editTextNode(_n:Pointer<stdgo.text.template.parse.Parse.TextNode>, _text:Slice<GoByte>):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _e.value._textNodeEdits.exists(_n) ? { value : _e.value._textNodeEdits[_n], ok : true } : { value : _e.value._textNodeEdits.defaultValue(), ok : false }, _:Slice<GoUInt8> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                throw stdgo.fmt.Fmt.sprintf("node %s shared between templates", Go.toInterface(_n));
            };
        };
        _e.value._textNodeEdits[_n] = _text;
    }
    public function _editTemplateNode(_n:Pointer<stdgo.text.template.parse.Parse.TemplateNode>, _callee:GoString):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _e.value._templateNodeEdits.exists(_n) ? { value : _e.value._templateNodeEdits[_n], ok : true } : { value : _e.value._templateNodeEdits.defaultValue(), ok : false }, _:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                throw stdgo.fmt.Fmt.sprintf("node %s shared between templates", Go.toInterface(_n));
            };
        };
        _e.value._templateNodeEdits[_n] = _callee;
    }
    public function _editActionNode(_n:Pointer<stdgo.text.template.parse.Parse.ActionNode>, _cmds:Slice<GoString>):Void {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var __tmp__ = _e.value._actionNodeEdits.exists(_n) ? { value : _e.value._actionNodeEdits[_n], ok : true } : { value : _e.value._actionNodeEdits.defaultValue(), ok : false }, _:Slice<GoString> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                throw stdgo.fmt.Fmt.sprintf("node %s shared between templates", Go.toInterface(_n));
            };
        };
        _e.value._actionNodeEdits[_n] = _cmds;
    }
    public function _escapeText(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.TextNode>):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:Slice<GoUInt8> = _n.value.text, _written:GoInt = ((0 : GoInt)), _i:GoInt = ((0 : GoInt)), _b:Pointer<stdgo.bytes.Bytes.Buffer> = Go.pointer(new stdgo.bytes.Bytes.Buffer());
        while (_i != _s.length) {
            var __tmp__ = _contextAfterText(_c.__copy__(), _s.__slice__(_i)), _c1:T_context = __tmp__._0, _nread:GoInt = __tmp__._1;
            var _i1:GoInt = _i + _nread;
            if (_c._state.__t__ == _stateText.__t__ || _c._state.__t__ == _stateRCDATA.__t__) {
                var _end:GoInt = _i1;
                if (_c1._state.__t__ != _c._state.__t__) {
                    {
                        var _j:GoInt = _end - ((1 : GoInt));
                        Go.cfor(_j >= _i, _j--, {
                            if (_s[_j] == (("<".code : GoRune))) {
                                _end = _j;
                                break;
                            };
                        });
                    };
                };
                {
                    var _j:GoInt = _i;
                    Go.cfor(_j < _end, _j++, {
                        if (_s[_j] == (("<".code : GoRune)) && !stdgo.bytes.Bytes.hasPrefix(stdgo.bytes.Bytes.toUpper(_s.__slice__(_j)), _doctypeBytes)) {
                            _b.value.write(_s.__slice__(_written, _j));
                            _b.value.writeString("&lt;");
                            _written = _j + ((1 : GoInt));
                        };
                    });
                };
            } else if (_isComment(_c._state) && _c._delim.__t__ == _delimNone.__t__) {
                if (_c._state.__t__ == _stateJSBlockCmt.__t__) {
                    if (stdgo.bytes.Bytes.containsAny(_s.__slice__(_written, _i1), "\n\r\u2028\u2029")) {
                        _b.value.writeByte((("\n".code : GoRune)));
                    } else {
                        _b.value.writeByte(((" ".code : GoRune)));
                    };
                } else if (_c._state.__t__ == _stateCSSBlockCmt.__t__) {
                    _b.value.writeByte(((" ".code : GoRune)));
                };
                _written = _i1;
            };
            if (_c._state.__t__ != _c1._state.__t__ && _isComment(_c1._state) && _c1._delim.__t__ == _delimNone.__t__) {
                var _cs:GoInt = _i1 - ((2 : GoInt));
                if (_c1._state.__t__ == _stateHTMLCmt.__t__) {
                    _cs = _cs - (((2 : GoInt)));
                };
                _b.value.write(_s.__slice__(_written, _cs));
                _written = _i1;
            };
            if (_i == _i1 && _c._state.__t__ == _c1._state.__t__) {
                throw stdgo.fmt.Fmt.sprintf("infinite loop from %v to %v on %q..%q", Go.toInterface(_c.__copy__()), Go.toInterface(_c1.__copy__()), Go.toInterface(_s.__slice__(0, _i)), Go.toInterface(_s.__slice__(_i)));
            };
            {
                final __tmp__0 = _c1.__copy__();
                final __tmp__1 = _i1;
                _c = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (_written != ((0 : GoInt)) && _c._state.__t__ != _stateError.__t__) {
            if (!_isComment(_c._state) || _c._delim.__t__ != _delimNone.__t__) {
                _b.value.write(_n.value.text.__slice__(_written));
            };
            _e.value._editTextNode(_n, _b.value.bytes());
        };
        return _c.__copy__();
    }
    public function _escapeTemplateBody(_c:T_context, _t:Pointer<stdgo.text.template.Template.Template>):{ var _0 : T_context; var _1 : Bool; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _filter:(Pointer<T_escaper>, T_context) -> Bool = function(_e1:Pointer<T_escaper>, _c1:T_context):Bool {
            if (_c1._state.__t__ == _stateError.__t__) {
                return false;
            };
            if (!_e1.value._called[_t.value.name()]) {
                return true;
            };
            return _c._eq(_c1.__copy__());
        };
        _e.value._output[_t.value.name()] = _c.__copy__();
        return _e.value._escapeListConditionally(_c.__copy__(), _t.value.tree.value.root, _filter);
    }
    public function _computeOutCtx(_c:T_context, _t:Pointer<stdgo.text.template.Template.Template>):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _e.value._escapeTemplateBody(_c.__copy__(), _t), _c1:T_context = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            {
                var __tmp__ = _e.value._escapeTemplateBody(_c1.__copy__(), _t), _c2:T_context = __tmp__._0, _ok2:Bool = __tmp__._1;
                if (_ok2) {
                    {
                        final __tmp__0 = _c2.__copy__();
                        final __tmp__1 = true;
                        _c1 = __tmp__0;
                        _ok = __tmp__1;
                    };
                };
            };
        };
        if (!_ok && _c1._state.__t__ != _stateError.__t__) {
            return (({ _state : _stateError, _err : _errorf(errOutputContext, _t.value.tree.value.root.value, ((0 : GoInt)), "cannot compute output context for template %s", Go.toInterface(_t.value.name())), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__();
        };
        return _c1.__copy__();
    }
    public function _escapeTree(_c:T_context, _node:stdgo.text.template.parse.Parse.Node, _name:GoString, _line:GoInt):{ var _0 : T_context; var _1 : GoString; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _dname:GoString = _c._mangle(_name);
        _e.value._called[_dname] = true;
        {
            var __tmp__ = _e.value._output.exists(_dname) ? { value : _e.value._output[_dname], ok : true } : { value : _e.value._output.defaultValue(), ok : false }, _out:T_context = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return { _0 : _out.__copy__(), _1 : _dname };
            };
        };
        var _t:Pointer<stdgo.text.template.Template.Template> = _e.value._template(_name);
        if (_t == null || _t.isNil()) {
            if (_e.value._ns.value._set[_name] != null && !_e.value._ns.value._set[_name].isNil()) {
                return { _0 : (({ _state : _stateError, _err : _errorf(errNoSuchTemplate, _node, _line, "%q is an incomplete or empty template", Go.toInterface(_name)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _dname };
            };
            return { _0 : (({ _state : _stateError, _err : _errorf(errNoSuchTemplate, _node, _line, "no such template %q", Go.toInterface(_name)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _dname };
        };
        if (_dname != _name) {
            var _dt:Pointer<stdgo.text.template.Template.Template> = _e.value._template(_dname);
            if (_dt == null || _dt.isNil()) {
                _dt = stdgo.text.template.Template.new_(_dname);
                _dt.value.tree = Go.pointer((({ name : _dname, root : _t.value.tree.value.root.value.copyList(), parseName : "", mode : new stdgo.text.template.parse.Parse.Mode(), _text : "", _funcs : new Slice<GoMap<GoString, AnyInterface>>().nil(), _lex : new Pointer<stdgo.text.template.parse.Parse.T_lexer>().nil(), _token : new GoArray<stdgo.text.template.parse.Parse.T_item>(...[for (i in 0 ... 3) ((null : stdgo.text.template.parse.Parse.T_item))]), _peekCount : 0, _vars : new Slice<GoString>().nil(), _treeSet : new GoMap<GoString, Pointer<stdgo.text.template.parse.Parse.Tree>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))))).nil(), _actionLine : 0, _mode : ((null : stdgo.text.template.parse.Parse.Mode)) } : stdgo.text.template.parse.Parse.Tree)));
                _e.value._derived[_dname] = _dt;
            };
            _t = _dt;
        };
        return { _0 : _e.value._computeOutCtx(_c.__copy__(), _t).__copy__(), _1 : _dname };
    }
    public function _escapeTemplate(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.TemplateNode>):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _e.value._escapeTree(_c.__copy__(), _n.value, _n.value.name, _n.value.line), _c:T_context = __tmp__._0, _name:GoString = __tmp__._1;
        if (_name != _n.value.name) {
            _e.value._editTemplateNode(_n, _name);
        };
        return _c.__copy__();
    }
    public function _escapeListConditionally(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ListNode>, _filter:(Pointer<T_escaper>, T_context) -> Bool):{ var _0 : T_context; var _1 : Bool; } {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _e1:T_escaper = _makeEscaper(_e.value._ns).__copy__();
        {
            var _k;
            var _v;
            for (_obj in _e.value._output.keyValueIterator()) {
                _k = _obj.key;
                _v = _obj.value;
                _e1._output[_k] = _v.__copy__();
            };
        };
        _c = _e1._escapeList(_c.__copy__(), _n).__copy__();
        var _ok:Bool = _filter != null && _filter(Go.pointer(_e1), _c.__copy__());
        if (_ok) {
            {
                var _k;
                var _v;
                for (_obj in _e1._output.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._output[_k] = _v.__copy__();
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _e1._derived.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._derived[_k] = _v;
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _e1._called.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._called[_k] = _v;
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _e1._actionNodeEdits.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._editActionNode(_k, _v);
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _e1._templateNodeEdits.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._editTemplateNode(_k, _v);
                };
            };
            {
                var _k;
                var _v;
                for (_obj in _e1._textNodeEdits.keyValueIterator()) {
                    _k = _obj.key;
                    _v = _obj.value;
                    _e.value._editTextNode(_k, _v);
                };
            };
        };
        return { _0 : _c.__copy__(), _1 : _ok };
    }
    public function _escapeList(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ListNode>):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n == null || _n.isNil()) {
            return _c.__copy__();
        };
        for (_m in _n.value.nodes) {
            _c = _e.value._escape(_c.__copy__(), _m).__copy__();
        };
        return _c.__copy__();
    }
    public function _escapeBranch(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.BranchNode>, _nodeName:GoString):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _c0:T_context = _e.value._escapeList(_c.__copy__(), _n.value.list).__copy__();
        if (_nodeName == (("range" : GoString)) && _c0._state.__t__ != _stateError.__t__) {
            var __tmp__ = _e.value._escapeListConditionally(_c0.__copy__(), _n.value.list, null), _c1:T_context = __tmp__._0, _:Bool = __tmp__._1;
            _c0 = _join(_c0.__copy__(), _c1.__copy__(), _n.value, _nodeName).__copy__();
            if (_c0._state.__t__ == _stateError.__t__) {
                _c0._err.value.line = _n.value.line;
                _c0._err.value.description = (("on range loop re-entry: " : GoString)) + _c0._err.value.description;
                return _c0.__copy__();
            };
        };
        var _c1:T_context = _e.value._escapeList(_c.__copy__(), _n.value.elseList).__copy__();
        return _join(_c0.__copy__(), _c1.__copy__(), _n.value, _nodeName).__copy__();
    }
    public function _escapeAction(_c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ActionNode>):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_n.value.pipe.value.decl.length != ((0 : GoInt))) {
            return _c.__copy__();
        };
        _c = _nudge(_c.__copy__()).__copy__();
        {
            var _pos;
            var _idNode;
            for (_obj in _n.value.pipe.value.cmds.keyValueIterator()) {
                _pos = _obj.key;
                _idNode = _obj.value;
                var __tmp__ = try {
                    { value : ((_idNode.value.args[((0 : GoInt))].__underlying__().value : stdgo.text.template.parse.Parse.IdentifierNode)), ok : true };
                } catch(_) {
                    { value : new Pointer<stdgo.text.template.parse.Parse.IdentifierNode>().nil(), ok : false };
                }, _node = __tmp__.value, _ok = __tmp__.ok;
                if (!_ok) {
                    continue;
                };
                var _ident:GoString = _node.value.ident;
                {
                    var __tmp__ = _predefinedEscapers.exists(_ident) ? { value : _predefinedEscapers[_ident], ok : true } : { value : _predefinedEscapers.defaultValue(), ok : false }, _:Bool = __tmp__.value, _ok:Bool = __tmp__.ok;
                    if (_ok) {
                        if (_pos < _n.value.pipe.value.cmds.length - ((1 : GoInt)) || _c._state.__t__ == _stateAttr.__t__ && _c._delim.__t__ == _delimSpaceOrTagEnd.__t__ && _ident == (("html" : GoString))) {
                            return (({ _state : _stateError, _err : _errorf(errPredefinedEscaper, _n.value, _n.value.line, "predefined escaper %q disallowed in template", Go.toInterface(_ident)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__();
                        };
                    };
                };
            };
        };
        var _s:Slice<GoString> = new Slice<GoString>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) (("" : GoString))]).setCap(((((3 : GoInt)) : GoInt)).toBasic());
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_c._state.__t__ == _stateError.__t__) {
                    return _c.__copy__();
                    break;
                } else if (_c._state.__t__ == _stateURL.__t__ || _c._state.__t__ == _stateCSSDqStr.__t__ || _c._state.__t__ == _stateCSSSqStr.__t__ || _c._state.__t__ == _stateCSSDqURL.__t__ || _c._state.__t__ == _stateCSSSqURL.__t__ || _c._state.__t__ == _stateCSSURL.__t__) {
                    {
                        var __switchIndex__ = -1;
                        while (true) {
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && _c._urlPart.__t__ == _urlPartNone.__t__)) {
                                _s = _s.__append__("_html_template_urlfilter");
                                @:fallthrough {
                                    __switchIndex__ = 1;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && _c._urlPart.__t__ == _urlPartPreQuery.__t__)) {
                                if (_c._state.__t__ == _stateCSSDqStr.__t__ || _c._state.__t__ == _stateCSSSqStr.__t__) {
                                    _s = _s.__append__("_html_template_cssescaper");
                                } else {
                                    _s = _s.__append__("_html_template_urlnormalizer");
                                };
                                break;
                                break;
                            } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && _c._urlPart.__t__ == _urlPartQueryOrFrag.__t__)) {
                                _s = _s.__append__("_html_template_urlescaper");
                                break;
                                break;
                            } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && _c._urlPart.__t__ == _urlPartUnknown.__t__)) {
                                return (({ _state : _stateError, _err : _errorf(errAmbigContext, _n.value, _n.value.line, "%s appears in an ambiguous context within a URL", Go.toInterface(_n)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__();
                                break;
                                break;
                            } else {
                                throw _c._urlPart.toString();
                                break;
                            };
                            break;
                        };
                    };
                    break;
                } else if (_c._state.__t__ == _stateJS.__t__) {
                    _s = _s.__append__("_html_template_jsvalescaper");
                    _c._jsCtx = _jsCtxDivOp;
                    break;
                } else if (_c._state.__t__ == _stateJSDqStr.__t__ || _c._state.__t__ == _stateJSSqStr.__t__) {
                    _s = _s.__append__("_html_template_jsstrescaper");
                    break;
                } else if (_c._state.__t__ == _stateJSRegexp.__t__) {
                    _s = _s.__append__("_html_template_jsregexpescaper");
                    break;
                } else if (_c._state.__t__ == _stateCSS.__t__) {
                    _s = _s.__append__("_html_template_cssvaluefilter");
                    break;
                } else if (_c._state.__t__ == _stateText.__t__) {
                    _s = _s.__append__("_html_template_htmlescaper");
                    break;
                } else if (_c._state.__t__ == _stateRCDATA.__t__) {
                    _s = _s.__append__("_html_template_rcdataescaper");
                    break;
                } else if (_c._state.__t__ == _stateAttr.__t__) {
                    break;
                } else if (_c._state.__t__ == _stateAttrName.__t__ || _c._state.__t__ == _stateTag.__t__) {
                    _c._state = _stateAttrName;
                    _s = _s.__append__("_html_template_htmlnamefilter");
                    break;
                } else if (_c._state.__t__ == _stateSrcset.__t__) {
                    _s = _s.__append__("_html_template_srcsetescaper");
                    break;
                } else {
                    if (_isComment(_c._state)) {
                        _s = _s.__append__("_html_template_commentescaper");
                    } else {
                        throw (("unexpected state " : GoString)) + _c._state.toString();
                    };
                };
                break;
            };
        };
        if (_c._delim.__t__ == _delimNone.__t__) {} else if (_c._delim.__t__ == _delimSpaceOrTagEnd.__t__) {
            _s = _s.__append__("_html_template_nospaceescaper");
        } else {
            _s = _s.__append__("_html_template_attrescaper");
        };
        _e.value._editActionNode(_n, _s);
        return _c.__copy__();
    }
    public function _escape(_c:T_context, _n:stdgo.text.template.parse.Parse.Node):T_context {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.ActionNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.ActionNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeAction(_c.__copy__(), _n).__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.CommentNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.CommentNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _c.__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.IfNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.IfNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeBranch(_c.__copy__(), Go.pointer(_n.value.branchNode), "if").__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.ListNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.ListNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeList(_c.__copy__(), _n).__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.RangeNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.RangeNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeBranch(_c.__copy__(), Go.pointer(_n.value.branchNode), "range").__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.TemplateNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.TemplateNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeTemplate(_c.__copy__(), _n).__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.TextNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.TextNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeText(_c.__copy__(), _n).__copy__();
        } else if (Go.assertable(((_n : Pointer<stdgo.text.template.parse.Parse.WithNode>)))) {
            var _n:Pointer<stdgo.text.template.parse.Parse.WithNode> = _n == null ? null : _n.__underlying__() == null ? null : _n == null ? null : _n.__underlying__().value;
            return _e.value._escapeBranch(_c.__copy__(), Go.pointer(_n.value.branchNode), "with").__copy__();
        };
        throw (("escaping " : GoString)) + _n.toString() + ((" is unimplemented" : GoString));
    }
    public var _ns : Pointer<T_nameSpace> = new Pointer<T_nameSpace>().nil();
    public var _output : GoMap<GoString, T_context> = new GoMap<GoString, T_context>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))))).nil();
    public var _derived : GoMap<GoString, Pointer<stdgo.text.template.Template.Template>> = new GoMap<GoString, Pointer<stdgo.text.template.Template.Template>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))).nil();
    public var _called : GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))).nil();
    public var _actionNodeEdits : GoMap<Pointer<stdgo.text.template.parse.Parse.ActionNode>, Slice<GoString>> = new GoMap<Pointer<stdgo.text.template.parse.Parse.ActionNode>, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))).nil();
    public var _templateNodeEdits : GoMap<Pointer<stdgo.text.template.parse.Parse.TemplateNode>, GoString> = new GoMap<Pointer<stdgo.text.template.parse.Parse.TemplateNode>, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)))).nil();
    public var _textNodeEdits : GoMap<Pointer<stdgo.text.template.parse.Parse.TextNode>, Slice<GoUInt8>> = new GoMap<Pointer<stdgo.text.template.parse.Parse.TextNode>, Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))))).nil();
    public function new(?_ns:Pointer<T_nameSpace>, ?_output:GoMap<GoString, T_context>, ?_derived:GoMap<GoString, Pointer<stdgo.text.template.Template.Template>>, ?_called:GoMap<GoString, Bool>, ?_actionNodeEdits:GoMap<Pointer<stdgo.text.template.parse.Parse.ActionNode>, Slice<GoString>>, ?_templateNodeEdits:GoMap<Pointer<stdgo.text.template.parse.Parse.TemplateNode>, GoString>, ?_textNodeEdits:GoMap<Pointer<stdgo.text.template.parse.Parse.TextNode>, Slice<GoUInt8>>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_ns) + " " + Go.string(_output) + " " + Go.string(_derived) + " " + Go.string(_called) + " " + Go.string(_actionNodeEdits) + " " + Go.string(_templateNodeEdits) + " " + Go.string(_textNodeEdits) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_escaper(_ns, _output, _derived, _called, _actionNodeEdits, _templateNodeEdits, _textNodeEdits);
    }
    public function __set__(__tmp__) {
        this._ns = __tmp__._ns;
        this._output = __tmp__._output;
        this._derived = __tmp__._derived;
        this._called = __tmp__._called;
        this._actionNodeEdits = __tmp__._actionNodeEdits;
        this._templateNodeEdits = __tmp__._templateNodeEdits;
        this._textNodeEdits = __tmp__._textNodeEdits;
        return this;
    }
}
@:structInit class Template {
    public function parseFS(_fs:stdgo.io.fs.Fs.FS, _patterns:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _patterns = new Slice<GoString>(..._patterns);
        return _parseFS(_t, _fs, _patterns);
    }
    public function parseGlob(_pattern:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _parseGlob(_t, _pattern);
    }
    public function parseFiles(_filenames:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _filenames = new Slice<GoString>(..._filenames);
        return _parseFiles(_t, _readFileOS, ..._filenames.toArray());
    }
    public function lookup(_name:GoString):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _t.value._nameSpace.value._mu.lock();
        try {
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _t.value._nameSpace.value._set[_name];
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<Template>().nil();
            };
        };
    }
    public function delims(_left:GoString, _right:GoString):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value._text.value.delims(_left, _right);
        return _t;
    }
    public function funcs(_funcMap:FuncMap):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value._text.value.funcs(new stdgo.text.template.Template.FuncMap(_funcMap.__copy__().__t__).__copy__());
        return _t;
    }
    public function name():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._text.value.name();
    }
    public function _new(_name:GoString):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _tmpl:Pointer<Template> = Go.pointer(new Template(((null : stdgo.Error)), _t.value._text.value.new_(_name), new Pointer<stdgo.text.template.parse.Parse.Tree>().nil(), _t.value._nameSpace));
        {
            var __tmp__ = _tmpl.value._nameSpace.value._set.exists(_name) ? { value : _tmpl.value._nameSpace.value._set[_name], ok : true } : { value : _tmpl.value._nameSpace.value._set.defaultValue(), ok : false }, _existing:Pointer<Template> = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                var _emptyTmpl:Pointer<Template> = Template.new_(_existing.value.name());
                _existing.value = _emptyTmpl.value.__copy__();
            };
        };
        _tmpl.value._nameSpace.value._set[_name] = _tmpl;
        return _tmpl;
    }
    public function new_(_name:GoString):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _t.value._nameSpace.value._mu.lock();
        try {
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            {
                for (defer in deferstack) {
                    defer();
                };
                return _t.value._new(_name);
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Pointer<Template>().nil();
            };
        };
    }
    public function clone():{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _t.value._nameSpace.value._mu.lock();
        deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
        try {
            if (_t.value._escapeErr != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: cannot Clone %q after it has executed", Go.toInterface(_t.value.name())) };
                };
            };
            var __tmp__ = _t.value._text.value.clone(), _textClone:Pointer<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : _err };
                };
            };
            var _ns:Pointer<T_nameSpace> = Go.pointer((({ _set : new GoMap<GoString, Pointer<Template>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }])) }]))) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }]))) }]))) }]))))))), _mu : new stdgo.sync.Sync.Mutex(), _escaped : false, _esc : new T_escaper() } : T_nameSpace)));
            _ns.value._esc = _makeEscaper(_ns).__copy__();
            var _ret:Pointer<Template> = Go.pointer(new Template(((null : stdgo.Error)), _textClone, _textClone.value.tree, _ns));
            _ret.value._nameSpace.value._set[_ret.value.name()] = _ret;
            for (_x in _textClone.value.templates()) {
                var _name:GoString = _x.value.name();
                var _src:Pointer<Template> = _t.value._nameSpace.value._set[_name];
                if (_src == null || _src.isNil() || _src.value._escapeErr != null) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: cannot Clone %q after it has executed", Go.toInterface(_t.value.name())) };
                    };
                };
                _x.value.tree = _x.value.tree.value.copy();
                _ret.value._nameSpace.value._set[_name] = Go.pointer(new Template(((null : stdgo.Error)), _x, _x.value.tree, _ret.value._nameSpace));
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _ret.value._nameSpace.value._set[_ret.value.name()], _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Template>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function addParseTree(_name:GoString, _tree:Pointer<stdgo.text.template.parse.Parse.Tree>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        {
            var _err:stdgo.Error = _t.value._checkCanParse();
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
        };
        _t.value._nameSpace.value._mu.lock();
        try {
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            var __tmp__ = _t.value._text.value.addParseTree(_name, _tree), _text:Pointer<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : _err };
                };
            };
            var _ret:Pointer<Template> = Go.pointer(new Template(((null : stdgo.Error)), _text, _text.value.tree, _t.value._nameSpace));
            _t.value._nameSpace.value._set[_name] = _ret;
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _ret, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Template>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function parse(_text:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        {
            var _err:stdgo.Error = _t.value._checkCanParse();
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
        };
        var __tmp__ = _t.value._text.value.parse(_text), _ret:Pointer<stdgo.text.template.Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        try {
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
            _t.value._nameSpace.value._mu.lock();
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            for (_v in _ret.value.templates()) {
                var _name:GoString = _v.value.name();
                var _tmpl:Pointer<Template> = _t.value._nameSpace.value._set[_name];
                if (_tmpl == null || _tmpl.isNil()) {
                    _tmpl = _t.value._new(_name);
                };
                _tmpl.value._text = _v;
                _tmpl.value.tree = _v.value.tree;
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _t, _1 : ((null : stdgo.Error)) };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : new Pointer<Template>().nil(), _1 : ((null : stdgo.Error)) };
            };
        };
    }
    public function definedTemplates():GoString {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._text.value.definedTemplates();
    }
    public function _lookupAndEscapeTemplate(_name:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _tmpl:Pointer<Template> = new Pointer<Template>().nil(), _err:Error = ((null : stdgo.Error));
        _t.value._nameSpace.value._mu.lock();
        try {
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            _t.value._nameSpace.value._escaped = true;
            _tmpl = _t.value._nameSpace.value._set[_name];
            if (_tmpl == null || _tmpl.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: %q is undefined", Go.toInterface(_name)) };
                };
            };
            if (_tmpl.value._escapeErr != null && Go.toInterface(_tmpl.value._escapeErr) != Go.toInterface(_escapeOK)) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : _tmpl.value._escapeErr };
                };
            };
            if (_tmpl.value._text.value.tree == null || _tmpl.value._text.value.tree.isNil() || _tmpl.value._text.value.tree.value.root == null || _tmpl.value._text.value.tree.value.root.isNil()) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: %q is an incomplete template", Go.toInterface(_name)) };
                };
            };
            if (_t.value._text.value.lookup(_name) == null || _t.value._text.value.lookup(_name).isNil()) {
                throw "html/template internal error: template escaping out of sync";
            };
            if (_tmpl.value._escapeErr == null) {
                _err = _escapeTemplate(_tmpl, _tmpl.value._text.value.tree.value.root.value, _name);
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return { _0 : _tmpl, _1 : _err };
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return { _0 : _tmpl, _1 : _err };
            };
        };
    }
    public function executeTemplate(_wr:stdgo.io.Io.Writer, _name:GoString, _data:AnyInterface):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var __tmp__ = _t.value._lookupAndEscapeTemplate(_name), _tmpl:Pointer<Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        return _tmpl.value._text.value.execute(_wr, Go.toInterface(_data));
    }
    public function execute(_wr:stdgo.io.Io.Writer, _data:AnyInterface):Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        {
            var _err:stdgo.Error = _t.value._escape();
            if (_err != null) {
                return _err;
            };
        };
        return _t.value._text.value.execute(_wr, Go.toInterface(_data));
    }
    public function _escape():Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        _t.value._nameSpace.value._mu.lock();
        try {
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            _t.value._nameSpace.value._escaped = true;
            if (_t.value._escapeErr == null) {
                if (_t.value.tree == null || _t.value.tree.isNil()) {
                    {
                        for (defer in deferstack) {
                            defer();
                        };
                        return stdgo.fmt.Fmt.errorf("template: %q is an incomplete or empty template", Go.toInterface(_t.value.name()));
                    };
                };
                {
                    var _err:stdgo.Error = _escapeTemplate(_t, _t.value._text.value.tree.value.root.value, _t.value.name());
                    if (_err != null) {
                        {
                            for (defer in deferstack) {
                                defer();
                            };
                            return _err;
                        };
                    };
                };
            } else if (Go.toInterface(_t.value._escapeErr) != Go.toInterface(_escapeOK)) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return _t.value._escapeErr;
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function _checkCanParse():Error {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        if (_t == null || _t.isNil()) {
            return ((null : stdgo.Error));
        };
        try {
            _t.value._nameSpace.value._mu.lock();
            deferstack.unshift(() -> _t.value._nameSpace.value._mu.unlock());
            if (_t.value._nameSpace.value._escaped) {
                {
                    for (defer in deferstack) {
                        defer();
                    };
                    return stdgo.fmt.Fmt.errorf("html/template: cannot Parse after Execute");
                };
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return ((null : stdgo.Error));
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return ((null : stdgo.Error));
            };
        };
    }
    public function option(_opt:haxe.Rest<GoString>):Pointer<Template> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _opt = new Slice<GoString>(..._opt);
        _t.value._text.value.option(..._opt.toArray());
        return _t;
    }
    public function templates():Slice<Pointer<Template>> {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var recover_exception:Error = null;
        var deferstack:Array<Void -> Void> = [];
        var _ns:Pointer<T_nameSpace> = _t.value._nameSpace;
        try {
            _ns.value._mu.lock();
            deferstack.unshift(() -> _ns.value._mu.unlock());
            var _m:Slice<Pointer<Template>> = new Slice<Pointer<Template>>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) new Pointer<Template>().nil()]).setCap((((_ns.value._set == null ? 0 : _ns.value._set.length) : GoInt)).toBasic());
            for (_v in _ns.value._set) {
                _m = _m.__append__(_v);
            };
            {
                for (defer in deferstack) {
                    defer();
                };
                return _m;
            };
            for (defer in deferstack) {
                defer();
            };
        } catch(e) {
            recover_exception = stdgo.runtime.Runtime.newRuntime(e.message);
            {
                for (defer in deferstack) {
                    defer();
                };
                if (recover_exception != null) throw recover_exception;
                return new Slice<Pointer<Template>>().nil();
            };
        };
    }
    public var _escapeErr : stdgo.Error = ((null : stdgo.Error));
    public var _text : Pointer<stdgo.text.template.Template.Template> = new Pointer<stdgo.text.template.Template.Template>().nil();
    public var tree : Pointer<stdgo.text.template.parse.Parse.Tree> = new Pointer<stdgo.text.template.parse.Parse.Tree>().nil();
    @:embedded
    public var _nameSpace : Pointer<T_nameSpace> = new Pointer<T_nameSpace>().nil();
    public function new(?_escapeErr:stdgo.Error, ?_text:Pointer<stdgo.text.template.Template.Template>, ?tree:Pointer<stdgo.text.template.parse.Parse.Tree>, ?_nameSpace:Pointer<T_nameSpace>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_escapeErr) + " " + Go.string(_text) + " " + Go.string(tree) + " " + Go.string(_nameSpace) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Template(_escapeErr, _text, tree, _nameSpace);
    }
    public function __set__(__tmp__) {
        this._escapeErr = __tmp__._escapeErr;
        this._text = __tmp__._text;
        this.tree = __tmp__.tree;
        this._nameSpace = __tmp__._nameSpace;
        return this;
    }
}
@:structInit class T_nameSpace {
    public var _mu : stdgo.sync.Sync.Mutex = new stdgo.sync.Sync.Mutex();
    public var _set : GoMap<GoString, Pointer<Template>> = new GoMap<GoString, Pointer<Template>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }])) }]))) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }]))) }]))) }]))))))).nil();
    public var _escaped : Bool = false;
    public var _esc : T_escaper = new T_escaper();
    public function new(?_mu:stdgo.sync.Sync.Mutex, ?_set:GoMap<GoString, Pointer<Template>>, ?_escaped:Bool, ?_esc:T_escaper) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mu) + " " + Go.string(_set) + " " + Go.string(_escaped) + " " + Go.string(_esc) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_nameSpace(_mu, _set, _escaped, _esc);
    }
    public function __set__(__tmp__) {
        this._mu = __tmp__._mu;
        this._set = __tmp__._set;
        this._escaped = __tmp__._escaped;
        this._esc = __tmp__._esc;
        return this;
    }
}
@:named class FuncMap {
    public var __t__ : GoMap<GoString, AnyInterface>;
    public function new(?t:GoMap<GoString, AnyInterface>) {
        __t__ = t == null ? new GoMap<GoString, AnyInterface>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, [])))).nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new FuncMap(__t__);
}
var _escapeOK : stdgo.Error = stdgo.fmt.Fmt.errorf("template escaped correctly");
var _regexpPrecederKeywords : GoMap<GoString, Bool> = new GoMap<GoString, Bool>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))),
{ key : "break", value : true },
{ key : "case", value : true },
{ key : "continue", value : true },
{ key : "delete", value : true },
{ key : "do", value : true },
{ key : "else", value : true },
{ key : "finally", value : true },
{ key : "in", value : true },
{ key : "instanceof", value : true },
{ key : "return", value : true },
{ key : "throw", value : true },
{ key : "try", value : true },
{ key : "typeof", value : true },
{ key : "void", value : true });
final errNoSuchTemplate : ErrorCode = new ErrorCode((5 : GoUnTypedInt));
var __delim_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((9 : GoUInt8)), ((25 : GoUInt8)), ((41 : GoUInt8)), ((59 : GoUInt8))).copy();
final _contentTypeJS : T_contentType = new T_contentType((4 : GoUnTypedInt));
final _stateJSDqStr : T_state = new T_state((11 : GoUnTypedInt));
final _contentTypeURL : T_contentType = new T_contentType((6 : GoUnTypedInt));
final _attrStyle : T_attr = new T_attr((3 : GoUnTypedInt));
final _stateCSS : T_state = new T_state((16 : GoUnTypedInt));
final _stateRCDATA : T_state = new T_state((6 : GoUnTypedInt));
final _stateJS : T_state = new T_state((10 : GoUnTypedInt));
var _htmlNospaceReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "&#xfffd;";
        s[0] = "&#9;";
        s[0] = "&#10;";
        s[0] = "&#11;";
        s[0] = "&#12;";
        s[0] = "&#13;";
        s[0] = "&#32;";
        s[0] = "&#34;";
        s[0] = "&amp;";
        s[0] = "&#39;";
        s[0] = "&#43;";
        s[0] = "&lt;";
        s[0] = "&#61;";
        s[0] = "&gt;";
        s[0] = "&#96;";
        s;
    };
final _elementScript : T_element = new T_element((1 : GoUnTypedInt));
final _attrURL : T_attr = new T_attr((4 : GoUnTypedInt));
final __attr_name : GoString = "attrNoneattrScriptattrScriptTypeattrStyleattrURLattrSrcset";
final _jsCtxRegexp : T_jsCtx = new T_jsCtx((0 : GoUnTypedInt));
final errOutputContext : ErrorCode = new ErrorCode((6 : GoUnTypedInt));
final _stateAttr : T_state = new T_state((7 : GoUnTypedInt));
final _contentTypePlain : T_contentType = new T_contentType((0 : GoUnTypedInt));
final _contentTypeUnsafe : T_contentType = new T_contentType((8 : GoUnTypedInt));
final _contentTypeHTML : T_contentType = new T_contentType((2 : GoUnTypedInt));
final _contentTypeSrcset : T_contentType = new T_contentType((7 : GoUnTypedInt));
final _contentTypeCSS : T_contentType = new T_contentType((1 : GoUnTypedInt));
var _attrTypeMap : GoMap<GoString, T_contentType> = new GoMap<GoString, T_contentType>(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.contentType", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)))),
{ key : "accept", value : _contentTypePlain },
{ key : "accept-charset", value : _contentTypeUnsafe },
{ key : "action", value : _contentTypeURL },
{ key : "alt", value : _contentTypePlain },
{ key : "archive", value : _contentTypeURL },
{ key : "async", value : _contentTypeUnsafe },
{ key : "autocomplete", value : _contentTypePlain },
{ key : "autofocus", value : _contentTypePlain },
{ key : "autoplay", value : _contentTypePlain },
{ key : "background", value : _contentTypeURL },
{ key : "border", value : _contentTypePlain },
{ key : "checked", value : _contentTypePlain },
{ key : "cite", value : _contentTypeURL },
{ key : "challenge", value : _contentTypeUnsafe },
{ key : "charset", value : _contentTypeUnsafe },
{ key : "class", value : _contentTypePlain },
{ key : "classid", value : _contentTypeURL },
{ key : "codebase", value : _contentTypeURL },
{ key : "cols", value : _contentTypePlain },
{ key : "colspan", value : _contentTypePlain },
{ key : "content", value : _contentTypeUnsafe },
{ key : "contenteditable", value : _contentTypePlain },
{ key : "contextmenu", value : _contentTypePlain },
{ key : "controls", value : _contentTypePlain },
{ key : "coords", value : _contentTypePlain },
{ key : "crossorigin", value : _contentTypeUnsafe },
{ key : "data", value : _contentTypeURL },
{ key : "datetime", value : _contentTypePlain },
{ key : "default", value : _contentTypePlain },
{ key : "defer", value : _contentTypeUnsafe },
{ key : "dir", value : _contentTypePlain },
{ key : "dirname", value : _contentTypePlain },
{ key : "disabled", value : _contentTypePlain },
{ key : "draggable", value : _contentTypePlain },
{ key : "dropzone", value : _contentTypePlain },
{ key : "enctype", value : _contentTypeUnsafe },
{ key : "for", value : _contentTypePlain },
{ key : "form", value : _contentTypeUnsafe },
{ key : "formaction", value : _contentTypeURL },
{ key : "formenctype", value : _contentTypeUnsafe },
{ key : "formmethod", value : _contentTypeUnsafe },
{ key : "formnovalidate", value : _contentTypeUnsafe },
{ key : "formtarget", value : _contentTypePlain },
{ key : "headers", value : _contentTypePlain },
{ key : "height", value : _contentTypePlain },
{ key : "hidden", value : _contentTypePlain },
{ key : "high", value : _contentTypePlain },
{ key : "href", value : _contentTypeURL },
{ key : "hreflang", value : _contentTypePlain },
{ key : "http-equiv", value : _contentTypeUnsafe },
{ key : "icon", value : _contentTypeURL },
{ key : "id", value : _contentTypePlain },
{ key : "ismap", value : _contentTypePlain },
{ key : "keytype", value : _contentTypeUnsafe },
{ key : "kind", value : _contentTypePlain },
{ key : "label", value : _contentTypePlain },
{ key : "lang", value : _contentTypePlain },
{ key : "language", value : _contentTypeUnsafe },
{ key : "list", value : _contentTypePlain },
{ key : "longdesc", value : _contentTypeURL },
{ key : "loop", value : _contentTypePlain },
{ key : "low", value : _contentTypePlain },
{ key : "manifest", value : _contentTypeURL },
{ key : "max", value : _contentTypePlain },
{ key : "maxlength", value : _contentTypePlain },
{ key : "media", value : _contentTypePlain },
{ key : "mediagroup", value : _contentTypePlain },
{ key : "method", value : _contentTypeUnsafe },
{ key : "min", value : _contentTypePlain },
{ key : "multiple", value : _contentTypePlain },
{ key : "name", value : _contentTypePlain },
{ key : "novalidate", value : _contentTypeUnsafe },
{ key : "open", value : _contentTypePlain },
{ key : "optimum", value : _contentTypePlain },
{ key : "pattern", value : _contentTypeUnsafe },
{ key : "placeholder", value : _contentTypePlain },
{ key : "poster", value : _contentTypeURL },
{ key : "profile", value : _contentTypeURL },
{ key : "preload", value : _contentTypePlain },
{ key : "pubdate", value : _contentTypePlain },
{ key : "radiogroup", value : _contentTypePlain },
{ key : "readonly", value : _contentTypePlain },
{ key : "rel", value : _contentTypeUnsafe },
{ key : "required", value : _contentTypePlain },
{ key : "reversed", value : _contentTypePlain },
{ key : "rows", value : _contentTypePlain },
{ key : "rowspan", value : _contentTypePlain },
{ key : "sandbox", value : _contentTypeUnsafe },
{ key : "spellcheck", value : _contentTypePlain },
{ key : "scope", value : _contentTypePlain },
{ key : "scoped", value : _contentTypePlain },
{ key : "seamless", value : _contentTypePlain },
{ key : "selected", value : _contentTypePlain },
{ key : "shape", value : _contentTypePlain },
{ key : "size", value : _contentTypePlain },
{ key : "sizes", value : _contentTypePlain },
{ key : "span", value : _contentTypePlain },
{ key : "src", value : _contentTypeURL },
{ key : "srcdoc", value : _contentTypeHTML },
{ key : "srclang", value : _contentTypePlain },
{ key : "srcset", value : _contentTypeSrcset },
{ key : "start", value : _contentTypePlain },
{ key : "step", value : _contentTypePlain },
{ key : "style", value : _contentTypeCSS },
{ key : "tabindex", value : _contentTypePlain },
{ key : "target", value : _contentTypePlain },
{ key : "title", value : _contentTypePlain },
{ key : "type", value : _contentTypeUnsafe },
{ key : "usemap", value : _contentTypeURL },
{ key : "value", value : _contentTypeUnsafe },
{ key : "width", value : _contentTypePlain },
{ key : "wrap", value : _contentTypePlain },
{ key : "xmlns", value : _contentTypeURL });
var _doctypeBytes : Slice<GoUInt8> = (("<!DOCTYPE" : Slice<GoByte>));
final _stateSrcset : T_state = new T_state((9 : GoUnTypedInt));
var _tagEndSeparators : Slice<GoUInt8> = (("> \t\n\f/" : Slice<GoByte>));
var _commentStart : Slice<GoUInt8> = (("<!--" : Slice<GoByte>));
final _attrScript : T_attr = new T_attr((1 : GoUnTypedInt));
var _specialTagEndMarkers : GoArray<Slice<GoUInt8>> = {
        var s = new GoArray<Slice<GoUInt8>>(...[for (i in 0 ... 5) new Slice<GoUInt8>().nil()]);
        s[0] = (("script" : Slice<GoByte>));
        s[1] = (("style" : Slice<GoByte>));
        s[2] = (("textarea" : Slice<GoByte>));
        s[3] = (("title" : Slice<GoByte>));
        s;
    };
var _redundantFuncs : GoMap<GoString, GoMap<GoString, Bool>> = new GoMap<GoString, GoMap<GoString, Bool>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))), { key : "_html_template_commentescaper", value : new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "_html_template_attrescaper", value : true }, { key : "_html_template_nospaceescaper", value : true }, { key : "_html_template_htmlescaper", value : true }) }, { key : "_html_template_cssescaper", value : new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "_html_template_attrescaper", value : true }) }, { key : "_html_template_jsregexpescaper", value : new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "_html_template_attrescaper", value : true }) }, { key : "_html_template_jsstrescaper", value : new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "_html_template_attrescaper", value : true }) }, { key : "_html_template_urlescaper", value : new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "_html_template_urlnormalizer", value : true }) });
final _stateError : T_state = new T_state((24 : GoUnTypedInt));
var _jsStrNormReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\u0000";
        s[0] = "\t";
        s[0] = "\n";
        s[0] = "\u000b";
        s[0] = "\f";
        s[0] = "\r";
        s[0] = "\u0022";
        s[0] = "\u0026";
        s[0] = "\u0027";
        s[0] = "\u002b";
        s[0] = "\/";
        s[0] = "\u003c";
        s[0] = "\u003e";
        s;
    };
final errSlashAmbig : ErrorCode = new ErrorCode((10 : GoUnTypedInt));
final _delimDoubleQuote : T_delim = new T_delim((1 : GoUnTypedInt));
final _stateAttrName : T_state = new T_state((2 : GoUnTypedInt));
final _stateCSSDqStr : T_state = new T_state((17 : GoUnTypedInt));
final __element_name : GoString = "elementNoneelementScriptelementStyleelementTextareaelementTitle";
final __delim_name : GoString = "delimNonedelimDoubleQuotedelimSingleQuotedelimSpaceOrTagEnd";
final _stateURL : T_state = new T_state((8 : GoUnTypedInt));
var __state_index : GoArray<GoUInt16> = new GoArray<GoUInt16>(
((0 : GoUInt16)),
((9 : GoUInt16)),
((17 : GoUInt16)),
((30 : GoUInt16)),
((44 : GoUInt16)),
((60 : GoUInt16)),
((72 : GoUInt16)),
((83 : GoUInt16)),
((92 : GoUInt16)),
((100 : GoUInt16)),
((111 : GoUInt16)),
((118 : GoUInt16)),
((130 : GoUInt16)),
((142 : GoUInt16)),
((155 : GoUInt16)),
((170 : GoUInt16)),
((184 : GoUInt16)),
((192 : GoUInt16)),
((205 : GoUInt16)),
((218 : GoUInt16)),
((231 : GoUInt16)),
((244 : GoUInt16)),
((255 : GoUInt16)),
((271 : GoUInt16)),
((286 : GoUInt16)),
((296 : GoUInt16))).copy();
var _errorType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.Error>().nil() : Pointer<Error>)))).elem();
final _urlPartQueryOrFrag : T_urlPart = new T_urlPart((2 : GoUnTypedInt));
final _attrScriptType : T_attr = new T_attr((2 : GoUnTypedInt));
final _elementStyle : T_element = new T_element((2 : GoUnTypedInt));
final _elementTextarea : T_element = new T_element((3 : GoUnTypedInt));
final _elementTitle : T_element = new T_element((4 : GoUnTypedInt));
var _elementNameMap : GoMap<GoString, T_element> = new GoMap<GoString, T_element>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)))), { key : "script", value : _elementScript }, { key : "style", value : _elementStyle }, { key : "textarea", value : _elementTextarea }, { key : "title", value : _elementTitle });
final _stateCSSBlockCmt : T_state = new T_state((22 : GoUnTypedInt));
var _expressionBytes : Slice<GoUInt8> = (("expression" : Slice<GoByte>));
final _stateCSSDqURL : T_state = new T_state((19 : GoUnTypedInt));
final _contentTypeHTMLAttr : T_contentType = new T_contentType((3 : GoUnTypedInt));
var _commentEnd : Slice<GoUInt8> = (("-->" : Slice<GoByte>));
final errBadHTML : ErrorCode = new ErrorCode((2 : GoUnTypedInt));
final _jsCtxDivOp : T_jsCtx = new T_jsCtx((1 : GoUnTypedInt));
final _stateTag : T_state = new T_state((1 : GoUnTypedInt));
final _delimSingleQuote : T_delim = new T_delim((2 : GoUnTypedInt));
final __urlPart_name : GoString = "urlPartNoneurlPartPreQueryurlPartQueryOrFragurlPartUnknown";
final _stateJSBlockCmt : T_state = new T_state((14 : GoUnTypedInt));
var __urlPart_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((11 : GoUInt8)), ((26 : GoUInt8)), ((44 : GoUInt8)), ((58 : GoUInt8))).copy();
var _predefinedEscapers : GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))), { key : "html", value : true }, { key : "urlquery", value : true });
final errPartialEscape : ErrorCode = new ErrorCode((8 : GoUnTypedInt));
final _stateAfterName : T_state = new T_state((3 : GoUnTypedInt));
final _stateBeforeValue : T_state = new T_state((4 : GoUnTypedInt));
final __state_name : GoString = "stateTextstateTagstateAttrNamestateAfterNamestateBeforeValuestateHTMLCmtstateRCDATAstateAttrstateURLstateSrcsetstateJSstateJSDqStrstateJSSqStrstateJSRegexpstateJSBlockCmtstateJSLineCmtstateCSSstateCSSDqStrstateCSSSqStrstateCSSDqURLstateCSSSqURLstateCSSURLstateCSSBlockCmtstateCSSLineCmtstateError";
var _transitionFunc : GoArray<(T_context, Slice<GoUInt8>) -> { var _0 : T_context; var _1 : GoInt; }> = {
        var s = new GoArray<(T_context, Slice<GoUInt8>) -> { var _0 : T_context; var _1 : GoInt; }>(...[for (i in 0 ... 25) null]);
        s[0] = _tText;
        s[1] = _tTag;
        s[2] = _tAttrName;
        s[3] = _tAfterName;
        s[4] = _tBeforeValue;
        s[5] = _tHTMLCmt;
        s[6] = _tSpecialTagEnd;
        s[7] = _tAttr;
        s[8] = _tURL;
        s[9] = _tURL;
        s[10] = _tJS;
        s[11] = _tJSDelimited;
        s[12] = _tJSDelimited;
        s[13] = _tJSDelimited;
        s[14] = _tBlockCmt;
        s[15] = _tLineCmt;
        s[16] = _tCSS;
        s[17] = _tCSSStr;
        s[18] = _tCSSStr;
        s[19] = _tCSSStr;
        s[20] = _tCSSStr;
        s[21] = _tCSSStr;
        s[22] = _tBlockCmt;
        s[23] = _tLineCmt;
        s[24] = _tError;
        s;
    };
var _htmlNormReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\uFFFD";
        s[0] = "&#34;";
        s[0] = "&#39;";
        s[0] = "&#43;";
        s[0] = "&lt;";
        s[0] = "&gt;";
        s;
    };
final errRangeLoopReentry : ErrorCode = new ErrorCode((9 : GoUnTypedInt));
final _urlPartUnknown : T_urlPart = new T_urlPart((3 : GoUnTypedInt));
final _htmlSpaceAndASCIIAlnumBytes : GoString = "\\x00\\x36\\x00\\x00\\x01\\x00\\xff\\x03\\xfe\\xff\\xff\\x07\\xfe\\xff\\xff\\x07";
final _delimSpaceOrTagEnd : T_delim = new T_delim((3 : GoUnTypedInt));
final _attrNone : T_attr = new T_attr((0 : GoUnTypedInt));
var _lowUnicodeReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 32) ""]));
        s[0] = "\u0000";
        s[1] = "\u0001";
        s[2] = "\u0002";
        s[3] = "\u0003";
        s[4] = "\u0004";
        s[5] = "\u0005";
        s[6] = "\u0006";
        s[0] = "\u0007";
        s[0] = "\u0008";
        s[0] = "\t";
        s[0] = "\n";
        s[0] = "\u000b";
        s[0] = "\f";
        s[0] = "\r";
        s[14] = "\u000e";
        s[15] = "\u000f";
        s[16] = "\u0010";
        s[17] = "\u0011";
        s[18] = "\u0012";
        s[19] = "\u0013";
        s[20] = "\u0014";
        s[21] = "\u0015";
        s[22] = "\u0016";
        s[23] = "\u0017";
        s[24] = "\u0018";
        s[25] = "\u0019";
        s[26] = "\u001a";
        s[27] = "\u001b";
        s[28] = "\u001c";
        s[29] = "\u001d";
        s[30] = "\u001e";
        s[31] = "\u001f";
        s;
    };
final _stateJSLineCmt : T_state = new T_state((15 : GoUnTypedInt));
final _jsCtxUnknown : T_jsCtx = new T_jsCtx((2 : GoUnTypedInt));
var _htmlNospaceNormReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "&#xfffd;";
        s[0] = "&#9;";
        s[0] = "&#10;";
        s[0] = "&#11;";
        s[0] = "&#12;";
        s[0] = "&#13;";
        s[0] = "&#32;";
        s[0] = "&#34;";
        s[0] = "&#39;";
        s[0] = "&#43;";
        s[0] = "&lt;";
        s[0] = "&#61;";
        s[0] = "&gt;";
        s[0] = "&#96;";
        s;
    };
var _attrStartStates : GoArray<T_state> = {
        var s = new GoArray<T_state>(...[for (i in 0 ... 6) new T_state()]);
        s[0] = new T_state(_stateAttr);
        s[1] = new T_state(_stateJS);
        s[2] = new T_state(_stateAttr);
        s[3] = new T_state(_stateCSS);
        s[4] = new T_state(_stateURL);
        s[5] = new T_state(_stateSrcset);
        s;
    };
var _mozBindingBytes : Slice<GoUInt8> = (("mozbinding" : Slice<GoByte>));
final _urlPartNone : T_urlPart = new T_urlPart((0 : GoUnTypedInt));
var _blockCommentEnd : Slice<GoUInt8> = (("*/" : Slice<GoByte>));
var _specialTagEndPrefix : Slice<GoUInt8> = (("</" : Slice<GoByte>));
var _jsStrReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\u0000";
        s[0] = "\t";
        s[0] = "\n";
        s[0] = "\u000b";
        s[0] = "\f";
        s[0] = "\r";
        s[0] = "\u0022";
        s[0] = "\u0026";
        s[0] = "\u0027";
        s[0] = "\u002b";
        s[0] = "\/";
        s[0] = "\u003c";
        s[0] = "\u003e";
        s[0] = "\\";
        s;
    };
var _delimEnds : GoArray<GoString> = {
        var s = new GoArray<GoString>(...[for (i in 0 ... 4) ""]);
        s[0] = "\"";
        s[1] = "\'";
        s[2] = " \t\n\f\r>";
        s;
    };
final _filterFailsafe : GoString = "ZgotmplZ";
final errPredefinedEscaper : ErrorCode = new ErrorCode((11 : GoUnTypedInt));
final errEndContext : ErrorCode = new ErrorCode((4 : GoUnTypedInt));
var __element_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((11 : GoUInt8)), ((24 : GoUInt8)), ((36 : GoUInt8)), ((51 : GoUInt8)), ((63 : GoUInt8))).copy();
final _stateText : T_state = new T_state((0 : GoUnTypedInt));
final _contentTypeJSStr : T_contentType = new T_contentType((5 : GoUnTypedInt));
final _elementNone : T_element = new T_element((0 : GoUnTypedInt));
var _elementContentType : GoArray<T_state> = {
        var s = new GoArray<T_state>(...[for (i in 0 ... 5) new T_state()]);
        s[0] = new T_state(_stateText);
        s[1] = new T_state(_stateJS);
        s[2] = new T_state(_stateCSS);
        s[3] = new T_state(_stateRCDATA);
        s[4] = new T_state(_stateRCDATA);
        s;
    };
var _htmlReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\uFFFD";
        s[0] = "&#34;";
        s[0] = "&amp;";
        s[0] = "&#39;";
        s[0] = "&#43;";
        s[0] = "&lt;";
        s[0] = "&gt;";
        s;
    };
final _stateCSSSqStr : T_state = new T_state((18 : GoUnTypedInt));
final _attrSrcset : T_attr = new T_attr((5 : GoUnTypedInt));
final errAmbigContext : ErrorCode = new ErrorCode((1 : GoUnTypedInt));
var __jsCtx_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((11 : GoUInt8)), ((21 : GoUInt8)), ((33 : GoUInt8))).copy();
var _equivEscapers : GoMap<GoString, GoString> = new GoMap<GoString, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(string_kind))), { key : "_html_template_attrescaper", value : "html" }, { key : "_html_template_htmlescaper", value : "html" }, { key : "_html_template_rcdataescaper", value : "html" }, { key : "_html_template_urlescaper", value : "urlquery" }, { key : "_html_template_urlnormalizer", value : "urlquery" });
var _funcMap : stdgo.text.template.Template.FuncMap = new stdgo.text.template.Template.FuncMap(
new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, [])))),
{ key : "_html_template_attrescaper", value : Go.toInterface(_attrEscaper) },
{ key : "_html_template_commentescaper", value : Go.toInterface(_commentEscaper) },
{ key : "_html_template_cssescaper", value : Go.toInterface(_cssEscaper) },
{ key : "_html_template_cssvaluefilter", value : Go.toInterface(_cssValueFilter) },
{ key : "_html_template_htmlnamefilter", value : Go.toInterface(_htmlNameFilter) },
{ key : "_html_template_htmlescaper", value : Go.toInterface(_htmlEscaper) },
{ key : "_html_template_jsregexpescaper", value : Go.toInterface(_jsRegexpEscaper) },
{ key : "_html_template_jsstrescaper", value : Go.toInterface(_jsStrEscaper) },
{ key : "_html_template_jsvalescaper", value : Go.toInterface(_jsValEscaper) },
{ key : "_html_template_nospaceescaper", value : Go.toInterface(_htmlNospaceEscaper) },
{ key : "_html_template_rcdataescaper", value : Go.toInterface(_rcdataEscaper) },
{ key : "_html_template_srcsetescaper", value : Go.toInterface(_srcsetFilterAndEscaper) },
{ key : "_html_template_urlescaper", value : Go.toInterface(_urlEscaper) },
{ key : "_html_template_urlfilter", value : Go.toInterface(_urlFilter) },
{ key : "_html_template_urlnormalizer", value : Go.toInterface(_urlNormalizer) },
{ key : "_eval_args_", value : Go.toInterface(_evalArgs) }).__copy__();
final _stateCSSURL : T_state = new T_state((21 : GoUnTypedInt));
final __jsCtx_name : GoString = "jsCtxRegexpjsCtxDivOpjsCtxUnknown";
final _urlPartPreQuery : T_urlPart = new T_urlPart((1 : GoUnTypedInt));
final _stateCSSSqURL : T_state = new T_state((20 : GoUnTypedInt));
var _jsonMarshalType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.encoding.json.Json.Marshaler>().nil() : Pointer<stdgo.encoding.json.Json.Marshaler>)))).elem();
final ok : ErrorCode = new ErrorCode((0 : GoUnTypedInt));
final _stateHTMLCmt : T_state = new T_state((5 : GoUnTypedInt));
final _stateCSSLineCmt : T_state = new T_state((23 : GoUnTypedInt));
final _stateJSSqStr : T_state = new T_state((12 : GoUnTypedInt));
var _cssReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\0";
        s[0] = "\9";
        s[0] = "\a";
        s[0] = "\c";
        s[0] = "\d";
        s[0] = "\22";
        s[0] = "\26";
        s[0] = "\27";
        s[0] = "\28";
        s[0] = "\29";
        s[0] = "\2b";
        s[0] = "\2f";
        s[0] = "\3a";
        s[0] = "\3b";
        s[0] = "\3c";
        s[0] = "\3e";
        s[0] = "\\";
        s[0] = "\7b";
        s[0] = "\7d";
        s;
    };
final _delimNone : T_delim = new T_delim((0 : GoUnTypedInt));
var _jsRegexpReplacementTable : Slice<GoString> = {
        var s = new Slice<GoString>(...([for (i in 0 ... 1) ""]));
        s[0] = "\u0000";
        s[0] = "\t";
        s[0] = "\n";
        s[0] = "\u000b";
        s[0] = "\f";
        s[0] = "\r";
        s[0] = "\u0022";
        s[0] = "\$";
        s[0] = "\u0026";
        s[0] = "\u0027";
        s[0] = "\(";
        s[0] = "\)";
        s[0] = "\*";
        s[0] = "\u002b";
        s[0] = "\-";
        s[0] = "\.";
        s[0] = "\/";
        s[0] = "\u003c";
        s[0] = "\u003e";
        s[0] = "\?";
        s[0] = "\[";
        s[0] = "\\";
        s[0] = "\]";
        s[0] = "\^";
        s[0] = "\{";
        s[0] = "\|";
        s[0] = "\}";
        s;
    };
final errBranchEnd : ErrorCode = new ErrorCode((3 : GoUnTypedInt));
var _fmtStringerType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new Pointer<stdgo.fmt.Fmt.Stringer>().nil() : Pointer<stdgo.fmt.Fmt.Stringer>)))).elem();
final _stateJSRegexp : T_state = new T_state((13 : GoUnTypedInt));
var __attr_index : GoArray<GoUInt8> = new GoArray<GoUInt8>(((0 : GoUInt8)), ((8 : GoUInt8)), ((18 : GoUInt8)), ((32 : GoUInt8)), ((41 : GoUInt8)), ((48 : GoUInt8)), ((58 : GoUInt8))).copy();
final errPartialCharset : ErrorCode = new ErrorCode((7 : GoUnTypedInt));
/**
    // attrType returns a conservative (upper-bound on authority) guess at the
    // type of the lowercase named attribute.
**/
function _attrType(_name:GoString):T_contentType {
        if (stdgo.strings.Strings.hasPrefix(_name, "data-")) {
            _name = _name.__slice__(((5 : GoInt)));
        } else {
            var _colon:GoInt = stdgo.strings.Strings.indexRune(_name, ((":".code : GoRune)));
            if (_colon != -((1 : GoUnTypedInt))) {
                if (_name.__slice__(0, _colon) == (("xmlns" : GoString))) {
                    return _contentTypeURL;
                };
                _name = _name.__slice__(_colon + ((1 : GoInt)));
            };
        };
        {
            var __tmp__ = _attrTypeMap.exists(_name) ? { value : _attrTypeMap[_name], ok : true } : { value : _attrTypeMap.defaultValue(), ok : false }, _t:T_contentType = __tmp__.value, _ok:Bool = __tmp__.ok;
            if (_ok) {
                return _t;
            };
        };
        if (stdgo.strings.Strings.hasPrefix(_name, "on")) {
            return _contentTypeJS;
        };
        if (stdgo.strings.Strings.contains(_name, "src") || stdgo.strings.Strings.contains(_name, "uri") || stdgo.strings.Strings.contains(_name, "url")) {
            return _contentTypeURL;
        };
        return _contentTypePlain;
    }
/**
    // indirect returns the value, after dereferencing as many times
    // as necessary to reach the base type (or nil).
**/
function _indirect(_a:AnyInterface):AnyInterface {
        if (_a == null) {
            return ((null : AnyInterface));
        };
        {
            var _t:stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(_a));
            if (_t.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
                return Go.toInterface(_a);
            };
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_a)).__copy__();
        while (_v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && !_v.isNil()) {
            _v = _v.elem().__copy__();
        };
        return Go.toInterface(_v.interface_());
    }
/**
    // indirectToStringerOrError returns the value, after dereferencing as many times
    // as necessary to reach the base type (or nil) or an implementation of fmt.Stringer
    // or error,
**/
function _indirectToStringerOrError(_a:AnyInterface):AnyInterface {
        if (_a == null) {
            return ((null : AnyInterface));
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_a)).__copy__();
        while (!_v.type().implements_(_fmtStringerType) && !_v.type().implements_(_errorType) && _v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && !_v.isNil()) {
            _v = _v.elem().__copy__();
        };
        return Go.toInterface(_v.interface_());
    }
/**
    // stringify converts its arguments to a string and the type of the content.
    // All pointers are dereferenced, as in the text/template package.
**/
function _stringify(_args:haxe.Rest<AnyInterface>):{ var _0 : GoString; var _1 : T_contentType; } {
        var _args = new Slice<AnyInterface>(..._args);
        if (_args.length == ((1 : GoInt))) {
            if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : GoString)))) {
                var _s:GoString = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s, _1 : _contentTypePlain };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : CSS)))) {
                var _s:CSS = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeCSS };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : HTML)))) {
                var _s:HTML = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeHTML };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : HTMLAttr)))) {
                var _s:HTMLAttr = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeHTMLAttr };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : JS)))) {
                var _s:JS = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeJS };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : JSStr)))) {
                var _s:JSStr = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeJSStr };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : URL)))) {
                var _s:URL = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeURL };
            } else if (Go.assertable(((_indirect(Go.toInterface(_args[((0 : GoInt))])) : Srcset)))) {
                var _s:Srcset = _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__() == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])) == null ? null : _indirect(Go.toInterface(_args[((0 : GoInt))])).__underlying__().value;
                return { _0 : _s.__t__, _1 : _contentTypeSrcset };
            };
        };
        var _i:GoInt = ((0 : GoInt));
        for (_arg in _args) {
            if (_arg == null) {
                continue;
            };
            _args[_i] = Go.toInterface(_indirectToStringerOrError(Go.toInterface(_arg)));
            _i++;
        };
        return { _0 : stdgo.fmt.Fmt.sprint(..._args.__slice__(0, _i).toArray()), _1 : _contentTypePlain };
    }
/**
    // isComment is true for any state that contains content meant for template
    // authors & maintainers, not for end-users or machines.
**/
function _isComment(_s:T_state):Bool {
        if (_s.__t__ == _stateHTMLCmt.__t__ || _s.__t__ == _stateJSBlockCmt.__t__ || _s.__t__ == _stateJSLineCmt.__t__ || _s.__t__ == _stateCSSBlockCmt.__t__ || _s.__t__ == _stateCSSLineCmt.__t__) {
            return true;
        };
        return false;
    }
/**
    // isInTag return whether s occurs solely inside an HTML tag.
**/
function _isInTag(_s:T_state):Bool {
        if (_s.__t__ == _stateTag.__t__ || _s.__t__ == _stateAttrName.__t__ || _s.__t__ == _stateAfterName.__t__ || _s.__t__ == _stateBeforeValue.__t__ || _s.__t__ == _stateAttr.__t__) {
            return true;
        };
        return false;
    }
/**
    // endsWithCSSKeyword reports whether b ends with an ident that
    // case-insensitively matches the lower-case kw.
**/
function _endsWithCSSKeyword(_b:Slice<GoByte>, _kw:GoString):Bool {
        var _i:GoInt = _b.length - _kw.length;
        if (_i < ((0 : GoInt))) {
            return false;
        };
        if (_i != ((0 : GoInt))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b.__slice__(0, _i)), _r:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
            if (_isCSSNmchar(_r)) {
                return false;
            };
        };
        return ((stdgo.bytes.Bytes.toLower(_b.__slice__(_i)) : GoString)) == _kw;
    }
/**
    // isCSSNmchar reports whether rune is allowed anywhere in a CSS identifier.
**/
function _isCSSNmchar(_r:GoRune):Bool {
        return (("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune)) || (("A".code : GoRune)) <= _r && _r <= (("Z".code : GoRune)) || (("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune)) || _r == (("-".code : GoRune)) || _r == (("_".code : GoRune)) || ((128 : GoInt32)) <= _r && _r <= ((55295 : GoInt32)) || ((57344 : GoInt32)) <= _r && _r <= ((65533 : GoInt32)) || ((65536 : GoInt32)) <= _r && _r <= ((1114111 : GoInt32));
    }
/**
    // decodeCSS decodes CSS3 escapes given a sequence of stringchars.
    // If there is no change, it returns the input, otherwise it returns a slice
    // backed by a new array.
    // https://www.w3.org/TR/css3-syntax/#SUBTOK-stringchar defines stringchar.
**/
function _decodeCSS(_s:Slice<GoByte>):Slice<GoByte> {
        var _i:GoInt = stdgo.bytes.Bytes.indexByte(_s, (("\\".code : GoRune)));
        if (_i == -((1 : GoUnTypedInt))) {
            return _s;
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_s.length : GoInt)).toBasic());
        while (_s.length != ((0 : GoInt))) {
            var _i:GoInt = stdgo.bytes.Bytes.indexByte(_s, (("\\".code : GoRune)));
            if (_i == -((1 : GoUnTypedInt))) {
                _i = _s.length;
            };
            {
                final __tmp__0 = _b.__append__(..._s.__slice__(0, _i).toArray());
                final __tmp__1 = _s.__slice__(_i);
                _b = __tmp__0;
                _s = __tmp__1;
            };
            if (_s.length < ((2 : GoInt))) {
                break;
            };
            if (_isHex(_s[((1 : GoInt))])) {
                var _j:GoInt = ((2 : GoInt));
                while (_j < _s.length && _j < ((7 : GoInt)) && _isHex(_s[_j])) {
                    _j++;
                };
                var _r:GoInt32 = _hexDecode(_s.__slice__(((1 : GoInt)), _j));
                if (_r > stdgo.unicode.Unicode.maxRune) {
                    {
                        final __tmp__0 = _r / ((16 : GoInt32));
                        final __tmp__1 = _j - ((1 : GoInt));
                        _r = __tmp__0;
                        _j = __tmp__1;
                    };
                };
                var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_b.__slice__(_b.length, _b.cap()), _r);
                {
                    final __tmp__0 = _b.__slice__(0, _b.length + _n);
                    final __tmp__1 = _skipCSSSpace(_s.__slice__(_j));
                    _b = __tmp__0;
                    _s = __tmp__1;
                };
            } else {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_s.__slice__(((1 : GoInt)))), _:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                {
                    final __tmp__0 = _b.__append__(..._s.__slice__(((1 : GoInt)), ((1 : GoInt)) + _n).toArray());
                    final __tmp__1 = _s.__slice__(((1 : GoInt)) + _n);
                    _b = __tmp__0;
                    _s = __tmp__1;
                };
            };
        };
        return _b;
    }
/**
    // isHex reports whether the given character is a hex digit.
**/
function _isHex(_c:GoByte):Bool {
        return (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune)) || (("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune)) || (("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune));
    }
/**
    // hexDecode decodes a short hex digit sequence: "10" -> 16.
**/
function _hexDecode(_s:Slice<GoByte>):GoRune {
        var _n:GoInt32 = (("\u{0000}".code : GoRune));
        for (_c in _s) {
            _n = (_n << (((4 : GoUnTypedInt))));
            if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
                _n = _n | ((((_c - (("0".code : GoRune))) : GoRune)));
            } else if ((("a".code : GoRune)) <= _c && _c <= (("f".code : GoRune))) {
                _n = _n | ((((_c - (("a".code : GoRune))) : GoRune)) + ((10 : GoInt32)));
            } else if ((("A".code : GoRune)) <= _c && _c <= (("F".code : GoRune))) {
                _n = _n | ((((_c - (("A".code : GoRune))) : GoRune)) + ((10 : GoInt32)));
            } else {
                throw stdgo.fmt.Fmt.sprintf("Bad hex digit in %q", Go.toInterface(_s));
            };
        };
        return _n;
    }
/**
    // skipCSSSpace returns a suffix of c, skipping over a single space.
**/
function _skipCSSSpace(_c:Slice<GoByte>):Slice<GoByte> {
        if (_c.length == ((0 : GoInt))) {
            return _c;
        };
        if (_c[((0 : GoInt))] == (("\t".code : GoRune)) || _c[((0 : GoInt))] == (("\n".code : GoRune)) || _c[((0 : GoInt))] == (("".code : GoRune)) || _c[((0 : GoInt))] == ((" ".code : GoRune))) {
            return _c.__slice__(((1 : GoInt)));
        } else if (_c[((0 : GoInt))] == (("\r".code : GoRune))) {
            if (_c.length >= ((2 : GoInt)) && _c[((1 : GoInt))] == (("\n".code : GoRune))) {
                return _c.__slice__(((2 : GoInt)));
            };
            return _c.__slice__(((1 : GoInt)));
        };
        return _c;
    }
/**
    // isCSSSpace reports whether b is a CSS space char as defined in wc.
**/
function _isCSSSpace(_b:GoByte):Bool {
        if (_b == (("\t".code : GoRune)) || _b == (("\n".code : GoRune)) || _b == (("".code : GoRune)) || _b == (("\r".code : GoRune)) || _b == ((" ".code : GoRune))) {
            return true;
        };
        return false;
    }
/**
    // cssEscaper escapes HTML and CSS special characters using \<hex>+ escapes.
**/
function _cssEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _:T_contentType = __tmp__._1;
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _r:GoInt32 = ((((0 : GoInt32)) : GoRune)), _w:GoInt = ((0 : GoInt)), _written:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i = _i + (_w), {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i));
                    _r = __tmp__._0;
                    _w = __tmp__._1;
                };
                var _repl:GoString = (("" : GoString));
                if (((_r : GoInt)) < _cssReplacementTable.length && _cssReplacementTable[_r] != (("" : GoString))) {
                    _repl = _cssReplacementTable[_r];
                } else {
                    continue;
                };
                if (_written == ((0 : GoInt))) {
                    _b.grow(_s.length);
                };
                _b.writeString(_s.__slice__(_written, _i));
                _b.writeString(_repl);
                _written = _i + _w;
                if (_repl != (("\\" : GoString)) && (_written == _s.length || _isHex(_s[_written]) || _isCSSSpace(_s[_written]))) {
                    _b.writeByte(((" ".code : GoRune)));
                };
            });
        };
        if (_written == ((0 : GoInt))) {
            return _s;
        };
        _b.writeString(_s.__slice__(_written));
        return _b.toString();
    }
/**
    // cssValueFilter allows innocuous CSS values in the output including CSS
    // quantities (10px or 25%), ID or class literals (#foo, .bar), keyword values
    // (inherit, blue), and colors (#888).
    // It filters out unsafe values, such as those that affect token boundaries,
    // and anything that might execute scripts.
**/
function _cssValueFilter(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeCSS.__t__) {
            return _s;
        };
        var _b:Slice<GoUInt8> = _decodeCSS(((_s : Slice<GoByte>))), _id:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((64 : GoInt)) : GoInt)).toBasic());
        {
            var _i;
            var _c;
            for (_obj in _b.keyValueIterator()) {
                _i = _obj.key;
                _c = _obj.value;
                if (_c == ((0 : GoUInt8)) || _c == (("\"".code : GoRune)) || _c == (("\'".code : GoRune)) || _c == (("(".code : GoRune)) || _c == ((")".code : GoRune)) || _c == (("/".code : GoRune)) || _c == ((";".code : GoRune)) || _c == (("@".code : GoRune)) || _c == (("[".code : GoRune)) || _c == (("\\".code : GoRune)) || _c == (("]".code : GoRune)) || _c == (("`".code : GoRune)) || _c == (("{".code : GoRune)) || _c == (("}".code : GoRune))) {
                    return _filterFailsafe;
                } else if (_c == (("-".code : GoRune))) {
                    if (_i != ((0 : GoInt)) && _b[_i - ((1 : GoInt))] == (("-".code : GoRune))) {
                        return _filterFailsafe;
                    };
                } else {
                    if (_c < stdgo.unicode.utf8.Utf8.runeSelf && _isCSSNmchar(((_c : GoRune)))) {
                        _id = _id.__append__(_c);
                    };
                };
            };
        };
        _id = stdgo.bytes.Bytes.toLower(_id);
        if (stdgo.bytes.Bytes.contains(_id, _expressionBytes) || stdgo.bytes.Bytes.contains(_id, _mozBindingBytes)) {
            return _filterFailsafe;
        };
        return ((_b : GoString));
    }
/**
    // errorf creates an error given a format string f and args.
    // The template Name still needs to be supplied.
**/
function _errorf(_k:ErrorCode, _node:stdgo.text.template.parse.Parse.Node, _line:GoInt, _f:GoString, _args:haxe.Rest<AnyInterface>):Pointer<Error> {
        var _args = new Slice<AnyInterface>(..._args);
        return Go.pointer(new Error(_k, _node, "", _line, stdgo.fmt.Fmt.sprintf(_f, ..._args.toArray())));
    }
/**
    // escapeTemplate rewrites the named template, which must be
    // associated with t, to guarantee that the output of any of the named
    // templates is properly escaped. If no error is returned, then the named templates have
    // been modified. Otherwise the named templates have been rendered
    // unusable.
**/
function _escapeTemplate(_tmpl:Pointer<Template>, _node:stdgo.text.template.parse.Parse.Node, _name:GoString):Error {
        var __tmp__ = _tmpl.value._nameSpace.value._esc._escapeTree(new T_context().__copy__(), _node, _name, ((0 : GoInt))), _c:T_context = __tmp__._0, _:GoString = __tmp__._1;
        var _err:Error = ((null : stdgo.Error));
        if (_c._err != null && !_c._err.isNil()) {
            {
                final __tmp__0 = _c._err.value;
                final __tmp__1 = _name;
                _err = __tmp__0;
                _c._err.value.name = __tmp__1;
            };
        } else if (_c._state.__t__ != _stateText.__t__) {
            _err = Go.pointer(new Error(errEndContext, ((null : stdgo.text.template.parse.Parse.Node)), _name, ((0 : GoInt)), stdgo.fmt.Fmt.sprintf("ends in a non-text context: %v", Go.toInterface(_c.__copy__())))).value;
        };
        if (_err != null) {
            {
                var _t:Pointer<Template> = _tmpl.value._nameSpace.value._set[_name];
                if (_t != null && !_t.isNil()) {
                    _t.value._escapeErr = _err;
                    _t.value._text.value.tree = new Pointer<stdgo.text.template.parse.Parse.Tree>().nil();
                    _t.value.tree = new Pointer<stdgo.text.template.parse.Parse.Tree>().nil();
                };
            };
            return _err;
        };
        _tmpl.value._nameSpace.value._esc._commit();
        {
            var _t:Pointer<Template> = _tmpl.value._nameSpace.value._set[_name];
            if (_t != null && !_t.isNil()) {
                _t.value._escapeErr = _escapeOK;
                _t.value.tree = _t.value._text.value.tree;
            };
        };
        return ((null : stdgo.Error));
    }
/**
    // evalArgs formats the list of arguments into a string. It is equivalent to
    // fmt.Sprint(args...), except that it deferences all pointers.
**/
function _evalArgs(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        if (_args.length == ((1 : GoInt))) {
            {
                var __tmp__ = try {
                    { value : ((_args[((0 : GoInt))].value : GoString)), ok : true };
                } catch(_) {
                    { value : (("" : GoString)), ok : false };
                }, _s = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    return _s;
                };
            };
        };
        {
            var _i;
            var _arg;
            for (_obj in _args.keyValueIterator()) {
                _i = _obj.key;
                _arg = _obj.value;
                _args[_i] = Go.toInterface(_indirectToStringerOrError(Go.toInterface(_arg)));
            };
        };
        return stdgo.fmt.Fmt.sprint(..._args.toArray());
    }
/**
    // makeEscaper creates a blank escaper for the given set.
**/
function _makeEscaper(_n:Pointer<T_nameSpace>):T_escaper {
        return new T_escaper(_n, new GoMap<GoString, T_context>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))))), new GoMap<GoString, Pointer<stdgo.text.template.Template.Template>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))))), new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)))), new GoMap<Pointer<stdgo.text.template.parse.Parse.ActionNode>, Slice<GoString>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))))), new GoMap<Pointer<stdgo.text.template.parse.Parse.TemplateNode>, GoString>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)))), new GoMap<Pointer<stdgo.text.template.parse.Parse.TextNode>, Slice<GoUInt8>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)))))).__copy__();
    }
/**
    // ensurePipelineContains ensures that the pipeline ends with the commands with
    // the identifiers in s in order. If the pipeline ends with a predefined escaper
    // (i.e. "html" or "urlquery"), merge it with the identifiers in s.
**/
function _ensurePipelineContains(_p:Pointer<stdgo.text.template.parse.Parse.PipeNode>, _s:Slice<GoString>):Void {
        if (_s.length == ((0 : GoInt))) {
            return;
        };
        var _pipelineLen:GoInt = _p.value.cmds.length;
        if (_pipelineLen > ((0 : GoInt))) {
            var _lastCmd:Pointer<stdgo.text.template.parse.Parse.CommandNode> = _p.value.cmds[_pipelineLen - ((1 : GoInt))];
            {
                var __tmp__ = try {
                    { value : ((_lastCmd.value.args[((0 : GoInt))].__underlying__().value : stdgo.text.template.parse.Parse.IdentifierNode)), ok : true };
                } catch(_) {
                    { value : new Pointer<stdgo.text.template.parse.Parse.IdentifierNode>().nil(), ok : false };
                }, _idNode = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    {
                        var _esc:GoString = _idNode.value.ident;
                        if (_predefinedEscapers[_esc]) {
                            if (_p.value.cmds.length == ((1 : GoInt)) && _lastCmd.value.args.length > ((1 : GoInt))) {
                                _lastCmd.value.args[((0 : GoInt))] = stdgo.text.template.parse.Parse.newIdentifier("_eval_args_").value.setTree(new Pointer<stdgo.text.template.parse.Parse.Tree>().nil()).value.setPos(_lastCmd.value.args[((0 : GoInt))].position()).value;
                                _p.value.cmds = _appendCmd(_p.value.cmds, _newIdentCmd(_esc, _p.value.position()));
                                _pipelineLen++;
                            };
                            var _dup:Bool = false;
                            {
                                var _i;
                                var _escaper;
                                for (_obj in _s.keyValueIterator()) {
                                    _i = _obj.key;
                                    _escaper = _obj.value;
                                    if (_escFnsEq(_esc, _escaper)) {
                                        _s[_i] = _idNode.value.ident;
                                        _dup = true;
                                    };
                                };
                            };
                            if (_dup) {
                                _pipelineLen--;
                            };
                        };
                    };
                };
            };
        };
        var _newCmds:Slice<Pointer<stdgo.text.template.parse.Parse.CommandNode>> = new Slice<Pointer<stdgo.text.template.parse.Parse.CommandNode>>(...[for (i in 0 ... ((_pipelineLen : GoInt)).toBasic()) new Pointer<stdgo.text.template.parse.Parse.CommandNode>().nil()]).setCap(((_pipelineLen + _s.length : GoInt)).toBasic());
        var _insertedIdents:GoMap<GoString, Bool> = new GoMap<GoString, Bool>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind))));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _pipelineLen, _i++, {
                var _cmd:Pointer<stdgo.text.template.parse.Parse.CommandNode> = _p.value.cmds[_i];
                _newCmds[_i] = _cmd;
                {
                    var __tmp__ = try {
                        { value : ((_cmd.value.args[((0 : GoInt))].__underlying__().value : stdgo.text.template.parse.Parse.IdentifierNode)), ok : true };
                    } catch(_) {
                        { value : new Pointer<stdgo.text.template.parse.Parse.IdentifierNode>().nil(), ok : false };
                    }, _idNode = __tmp__.value, _ok = __tmp__.ok;
                    if (_ok) {
                        _insertedIdents[_normalizeEscFn(_idNode.value.ident)] = true;
                    };
                };
            });
        };
        for (_name in _s) {
            if (!_insertedIdents[_normalizeEscFn(_name)]) {
                _newCmds = _appendCmd(_newCmds, _newIdentCmd(_name, _p.value.position()));
            };
        };
        _p.value.cmds = _newCmds;
    }
/**
    // escFnsEq reports whether the two escaping functions are equivalent.
**/
function _escFnsEq(_a:GoString, _b:GoString):Bool {
        return _normalizeEscFn(_a) == _normalizeEscFn(_b);
    }
/**
    // normalizeEscFn(a) is equal to normalizeEscFn(b) for any pair of names of
    // escaper functions a and b that are equivalent.
**/
function _normalizeEscFn(_e:GoString):GoString {
        {
            var _norm:GoString = _equivEscapers[_e];
            if (_norm != (("" : GoString))) {
                return _norm;
            };
        };
        return _e;
    }
/**
    // appendCmd appends the given command to the end of the command pipeline
    // unless it is redundant with the last command.
**/
function _appendCmd(_cmds:Slice<Pointer<stdgo.text.template.parse.Parse.CommandNode>>, _cmd:Pointer<stdgo.text.template.parse.Parse.CommandNode>):Slice<Pointer<stdgo.text.template.parse.Parse.CommandNode>> {
        {
            var _n:GoInt = _cmds.length;
            if (_n != ((0 : GoInt))) {
                var __tmp__ = try {
                    { value : ((_cmds[_n - ((1 : GoInt))].value.args[((0 : GoInt))].__underlying__().value : stdgo.text.template.parse.Parse.IdentifierNode)), ok : true };
                } catch(_) {
                    { value : new Pointer<stdgo.text.template.parse.Parse.IdentifierNode>().nil(), ok : false };
                }, _last = __tmp__.value, _okLast = __tmp__.ok;
                var __tmp__ = try {
                    { value : ((_cmd.value.args[((0 : GoInt))].__underlying__().value : stdgo.text.template.parse.Parse.IdentifierNode)), ok : true };
                } catch(_) {
                    { value : new Pointer<stdgo.text.template.parse.Parse.IdentifierNode>().nil(), ok : false };
                }, _next = __tmp__.value, _okNext = __tmp__.ok;
                if (_okLast && _okNext && _redundantFuncs[_last.value.ident][_next.value.ident]) {
                    return _cmds;
                };
            };
        };
        return _cmds.__append__(_cmd);
    }
/**
    // newIdentCmd produces a command containing a single identifier node.
**/
function _newIdentCmd(_identifier:GoString, _pos:stdgo.text.template.parse.Parse.Pos):Pointer<stdgo.text.template.parse.Parse.CommandNode> {
        return Go.pointer((({ nodeType : stdgo.text.template.parse.Parse.nodeCommand, args : new Slice<stdgo.text.template.parse.Parse.Node>(stdgo.text.template.parse.Parse.newIdentifier(_identifier).value.setTree(new Pointer<stdgo.text.template.parse.Parse.Tree>().nil()).value.setPos(_pos).value), pos : new stdgo.text.template.parse.Parse.Pos(), _tr : new Pointer<stdgo.text.template.parse.Parse.Tree>().nil() } : stdgo.text.template.parse.Parse.CommandNode)));
    }
/**
    // nudge returns the context that would result from following empty string
    // transitions from the input context.
    // For example, parsing:
    //     `<a href=`
    // will end in context{stateBeforeValue, attrURL}, but parsing one extra rune:
    //     `<a href=x`
    // will end in context{stateURL, delimSpaceOrTagEnd, ...}.
    // There are two transitions that happen when the 'x' is seen:
    // (1) Transition from a before-value state to a start-of-value state without
    //     consuming any character.
    // (2) Consume 'x' and transition past the first value character.
    // In this case, nudging produces the context after (1) happens.
**/
function _nudge(_c:T_context):T_context {
        if (_c._state.__t__ == _stateTag.__t__) {
            _c._state = _stateAttrName;
        } else if (_c._state.__t__ == _stateBeforeValue.__t__) {
            {
                final __tmp__0 = _attrStartStates[_c._attr.__t__];
                final __tmp__1 = _delimSpaceOrTagEnd;
                final __tmp__2 = _attrNone;
                _c._state = __tmp__0;
                _c._delim = __tmp__1;
                _c._attr = __tmp__2;
            };
        } else if (_c._state.__t__ == _stateAfterName.__t__) {
            {
                final __tmp__0 = _stateAttrName;
                final __tmp__1 = _attrNone;
                _c._state = __tmp__0;
                _c._attr = __tmp__1;
            };
        };
        return _c.__copy__();
    }
/**
    // join joins the two contexts of a branch template node. The result is an
    // error context if either of the input contexts are error contexts, or if the
    // input contexts differ.
**/
function _join(_a:T_context, _b:T_context, _node:stdgo.text.template.parse.Parse.Node, _nodeName:GoString):T_context {
        if (_a._state.__t__ == _stateError.__t__) {
            return _a.__copy__();
        };
        if (_b._state.__t__ == _stateError.__t__) {
            return _b.__copy__();
        };
        if (_a._eq(_b.__copy__())) {
            return _a.__copy__();
        };
        var _c:T_context = _a.__copy__();
        _c._urlPart = _b._urlPart;
        if (_c._eq(_b.__copy__())) {
            _c._urlPart = _urlPartUnknown;
            return _c.__copy__();
        };
        _c = _a.__copy__();
        _c._jsCtx = _b._jsCtx;
        if (_c._eq(_b.__copy__())) {
            _c._jsCtx = _jsCtxUnknown;
            return _c.__copy__();
        };
        {
            var _c:T_context = _nudge(_a.__copy__()).__copy__(), _d:T_context = _nudge(_b.__copy__()).__copy__();
            if (!(_c._eq(_a.__copy__()) && _d._eq(_b.__copy__()))) {
                {
                    var _e:T_context = _join(_c.__copy__(), _d.__copy__(), _node, _nodeName).__copy__();
                    if (_e._state.__t__ != _stateError.__t__) {
                        return _e.__copy__();
                    };
                };
            };
        };
        return (({ _state : _stateError, _err : _errorf(errBranchEnd, _node, ((0 : GoInt)), "{{%s}} branches end in different contexts: %v, %v", Go.toInterface(_nodeName), Go.toInterface(_a.__copy__()), Go.toInterface(_b.__copy__())), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__();
    }
/**
    // contextAfterText starts in context c, consumes some tokens from the front of
    // s, then returns the context after those tokens and the unprocessed suffix.
**/
function _contextAfterText(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        if (_c._delim.__t__ == _delimNone.__t__) {
            var __tmp__ = _tSpecialTagEnd(_c.__copy__(), _s), _c1:T_context = __tmp__._0, _i:GoInt = __tmp__._1;
            if (_i == ((0 : GoInt))) {
                return { _0 : _c1.__copy__(), _1 : ((0 : GoInt)) };
            };
            return _transitionFunc[_c._state.__t__](_c.__copy__(), _s.__slice__(0, _i));
        };
        var _i:GoInt = stdgo.bytes.Bytes.indexAny(_s, _delimEnds[_c._delim.__t__]);
        if (_i == -((1 : GoUnTypedInt))) {
            _i = _s.length;
        };
        if (_c._delim.__t__ == _delimSpaceOrTagEnd.__t__) {
            {
                var _j:GoInt = stdgo.bytes.Bytes.indexAny(_s.__slice__(0, _i), "\"\'<=`");
                if (_j >= ((0 : GoInt))) {
                    return { _0 : (({ _state : _stateError, _err : _errorf(errBadHTML, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "%q in unquoted attr: %q", Go.toInterface(_s.__slice__(_j, _j + ((1 : GoInt)))), Go.toInterface(_s.__slice__(0, _i))), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
                };
            };
        };
        if (_i == _s.length) {
            {
                var _u:Slice<GoUInt8> = ((stdgo.html.Html.unescapeString(((_s : GoString))) : Slice<GoByte>));
                while (_u.length != ((0 : GoInt))) {
                    var __tmp__ = _transitionFunc[_c._state.__t__](_c.__copy__(), _u), _c1:T_context = __tmp__._0, _i1:GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _c1.__copy__();
                        final __tmp__1 = _u.__slice__(_i1);
                        _c = __tmp__0;
                        _u = __tmp__1;
                    };
                };
            };
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        var _element:T_element = _c._element;
        if (_c._state.__t__ == _stateAttr.__t__ && _c._element.__t__ == _elementScript.__t__ && _c._attr.__t__ == _attrScriptType.__t__ && !_isJSType(((_s.__slice__(0, _i) : GoString)))) {
            _element = _elementNone;
        };
        if (_c._delim.__t__ != _delimSpaceOrTagEnd.__t__) {
            _i++;
        };
        return { _0 : (({ _state : _stateTag, _element : _element, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _err : new Pointer<Error>().nil() } : T_context)).__copy__(), _1 : _i };
    }
/**
    // HTMLEscape writes to w the escaped HTML equivalent of the plain text data b.
**/
function htmlescape(_w:stdgo.io.Io.Writer, _b:Slice<GoByte>):Void {
        stdgo.text.template.Template.htmlescape(_w, _b);
    }
/**
    // HTMLEscapeString returns the escaped HTML equivalent of the plain text data s.
**/
function htmlescapeString(_s:GoString):GoString {
        return stdgo.text.template.Template.htmlescapeString(_s);
    }
/**
    // HTMLEscaper returns the escaped HTML equivalent of the textual
    // representation of its arguments.
**/
function htmlescaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return stdgo.text.template.Template.htmlescaper(..._args.toArray());
    }
/**
    // JSEscape writes to w the escaped JavaScript equivalent of the plain text data b.
**/
function jsescape(_w:stdgo.io.Io.Writer, _b:Slice<GoByte>):Void {
        stdgo.text.template.Template.jsescape(_w, _b);
    }
/**
    // JSEscapeString returns the escaped JavaScript equivalent of the plain text data s.
**/
function jsescapeString(_s:GoString):GoString {
        return stdgo.text.template.Template.jsescapeString(_s);
    }
/**
    // JSEscaper returns the escaped JavaScript equivalent of the textual
    // representation of its arguments.
**/
function jsescaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return stdgo.text.template.Template.jsescaper(..._args.toArray());
    }
/**
    // URLQueryEscaper returns the escaped value of the textual representation of
    // its arguments in a form suitable for embedding in a URL query.
**/
function urlqueryEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return stdgo.text.template.Template.urlqueryEscaper(..._args.toArray());
    }
/**
    // htmlNospaceEscaper escapes for inclusion in unquoted attribute values.
**/
function _htmlNospaceEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeHTML.__t__) {
            return _htmlReplacer(_stripTags(_s), _htmlNospaceNormReplacementTable, false);
        };
        return _htmlReplacer(_s, _htmlNospaceReplacementTable, false);
    }
/**
    // attrEscaper escapes for inclusion in quoted attribute values.
**/
function _attrEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeHTML.__t__) {
            return _htmlReplacer(_stripTags(_s), _htmlNormReplacementTable, true);
        };
        return _htmlReplacer(_s, _htmlReplacementTable, true);
    }
/**
    // rcdataEscaper escapes for inclusion in an RCDATA element body.
**/
function _rcdataEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeHTML.__t__) {
            return _htmlReplacer(_s, _htmlNormReplacementTable, true);
        };
        return _htmlReplacer(_s, _htmlReplacementTable, true);
    }
/**
    // htmlEscaper escapes for inclusion in HTML text.
**/
function _htmlEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeHTML.__t__) {
            return _s;
        };
        return _htmlReplacer(_s, _htmlReplacementTable, true);
    }
/**
    // htmlReplacer returns s with runes replaced according to replacementTable
    // and when badRunes is true, certain bad runes are allowed through unescaped.
**/
function _htmlReplacer(_s:GoString, _replacementTable:Slice<GoString>, _badRunes:Bool):GoString {
        var _written:GoInt = ((0 : GoInt)), _b:Pointer<stdgo.strings.Strings.Builder> = Go.pointer(new stdgo.strings.Strings.Builder());
        var _r:GoInt32 = ((((0 : GoInt32)) : GoRune)), _w:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i = _i + (_w), {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i));
                    _r = __tmp__._0;
                    _w = __tmp__._1;
                };
                if (((_r : GoInt)) < _replacementTable.length) {
                    {
                        var _repl:GoString = _replacementTable[_r];
                        if (_repl.length != ((0 : GoInt))) {
                            if (_written == ((0 : GoInt))) {
                                _b.value.grow(_s.length);
                            };
                            _b.value.writeString(_s.__slice__(_written, _i));
                            _b.value.writeString(_repl);
                            _written = _i + _w;
                        };
                    };
                } else if (_badRunes) {} else if (((64976 : GoInt32)) <= _r && _r <= ((65007 : GoInt32)) || ((65520 : GoInt32)) <= _r && _r <= ((65535 : GoInt32))) {
                    if (_written == ((0 : GoInt))) {
                        _b.value.grow(_s.length);
                    };
                    stdgo.fmt.Fmt.fprintf(_b.value, "%s&#x%x;", Go.toInterface(_s.__slice__(_written, _i)), Go.toInterface(_r));
                    _written = _i + _w;
                };
            });
        };
        if (_written == ((0 : GoInt))) {
            return _s;
        };
        _b.value.writeString(_s.__slice__(_written));
        return _b.value.toString();
    }
/**
    // stripTags takes a snippet of HTML and returns only the text content.
    // For example, `<b>&iexcl;Hi!</b> <script>...</script>` -> `&iexcl;Hi! `.
**/
function _stripTags(_html:GoString):GoString {
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _s:Slice<GoUInt8> = ((_html : Slice<GoByte>)), _c:T_context = new T_context().__copy__(), _i:GoInt = ((0 : GoInt)), _allText:Bool = true;
        while (_i != _s.length) {
            if (_c._delim.__t__ == _delimNone.__t__) {
                var _st:T_state = _c._state;
                if (_c._element.__t__ != _elementNone.__t__ && !_isInTag(_st)) {
                    _st = _stateRCDATA;
                };
                var __tmp__ = _transitionFunc[_st.__t__](_c.__copy__(), _s.__slice__(_i)), _d:T_context = __tmp__._0, _nread:GoInt = __tmp__._1;
                var _i1:GoInt = _i + _nread;
                if (_c._state.__t__ == _stateText.__t__ || _c._state.__t__ == _stateRCDATA.__t__) {
                    var _j:GoInt = _i1;
                    if (_d._state.__t__ != _c._state.__t__) {
                        {
                            var _j1:GoInt = _j - ((1 : GoInt));
                            Go.cfor(_j1 >= _i, _j1--, {
                                if (_s[_j1] == (("<".code : GoRune))) {
                                    _j = _j1;
                                    break;
                                };
                            });
                        };
                    };
                    _b.write(_s.__slice__(_i, _j));
                } else {
                    _allText = false;
                };
                {
                    final __tmp__0 = _d.__copy__();
                    final __tmp__1 = _i1;
                    _c = __tmp__0;
                    _i = __tmp__1;
                };
                continue;
            };
            var _i1:GoInt = _i + stdgo.bytes.Bytes.indexAny(_s.__slice__(_i), _delimEnds[_c._delim.__t__]);
            if (_i1 < _i) {
                break;
            };
            if (_c._delim.__t__ != _delimSpaceOrTagEnd.__t__) {
                _i1++;
            };
            {
                final __tmp__0 = (({ _state : _stateTag, _element : _c._element, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _err : new Pointer<Error>().nil() } : T_context)).__copy__();
                final __tmp__1 = _i1;
                _c = __tmp__0;
                _i = __tmp__1;
            };
        };
        if (_allText) {
            return _html;
        } else if (_c._state.__t__ == _stateText.__t__ || _c._state.__t__ == _stateRCDATA.__t__) {
            _b.write(_s.__slice__(_i));
        };
        return _b.toString();
    }
/**
    // htmlNameFilter accepts valid parts of an HTML attribute or tag name or
    // a known-safe HTML attribute.
**/
function _htmlNameFilter(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeHTMLAttr.__t__) {
            return _s;
        };
        if (_s.length == ((0 : GoInt))) {
            return _filterFailsafe;
        };
        _s = stdgo.strings.Strings.toLower(_s);
        {
            var _t:T_contentType = _attrType(_s);
            if (_t.__t__ != _contentTypePlain.__t__) {
                return _filterFailsafe;
            };
        };
        for (_r in _s) {
            if ((("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune))) {} else if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {} else {
                return _filterFailsafe;
            };
        };
        return _s;
    }
/**
    // commentEscaper returns the empty string regardless of input.
    // Comment content does not correspond to any parsed structure or
    // human-readable content, so the simplest and most secure policy is to drop
    // content interpolated into comments.
    // This approach is equally valid whether or not static comment content is
    // removed from the template.
**/
function _commentEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return "";
    }
/**
    // nextJSCtx returns the context that determines whether a slash after the
    // given run of tokens starts a regular expression instead of a division
    // operator: / or /=.
    //
    // This assumes that the token run does not include any string tokens, comment
    // tokens, regular expression literal tokens, or division operators.
    //
    // This fails on some valid but nonsensical JavaScript programs like
    // "x = ++/foo/i" which is quite different than "x++/foo/i", but is not known to
    // fail on any known useful programs. It is based on the draft
    // JavaScript 2.0 lexical grammar and requires one token of lookbehind:
    // https://www.mozilla.org/js/language/js20-2000-07/rationale/syntax.html
**/
function _nextJSCtx(_s:Slice<GoByte>, _preceding:T_jsCtx):T_jsCtx {
        _s = stdgo.bytes.Bytes.trimRight(_s, "\t\n\f\r \u2028\u2029");
        if (_s.length == ((0 : GoInt))) {
            return _preceding;
        };
        {
            var _c:GoUInt8 = _s[_s.length - ((1 : GoInt))], _n:GoInt = _s.length;
            if (_c == (("+".code : GoRune)) || _c == (("-".code : GoRune))) {
                var _start:GoInt = _n - ((1 : GoInt));
                while (_start > ((0 : GoInt)) && _s[_start - ((1 : GoInt))] == _c) {
                    _start--;
                };
                if ((_n - _start) & ((1 : GoInt)) == ((1 : GoInt))) {
                    return _jsCtxRegexp;
                };
                return _jsCtxDivOp;
            } else if (_c == ((".".code : GoRune))) {
                if (_n != ((1 : GoInt)) && (("0".code : GoRune)) <= _s[_n - ((2 : GoInt))] && _s[_n - ((2 : GoInt))] <= (("9".code : GoRune))) {
                    return _jsCtxDivOp;
                };
                return _jsCtxRegexp;
            } else if (_c == ((",".code : GoRune)) || _c == (("<".code : GoRune)) || _c == ((">".code : GoRune)) || _c == (("=".code : GoRune)) || _c == (("*".code : GoRune)) || _c == (("%".code : GoRune)) || _c == (("&".code : GoRune)) || _c == (("|".code : GoRune)) || _c == (("^".code : GoRune)) || _c == (("?".code : GoRune))) {
                return _jsCtxRegexp;
            } else if (_c == (("!".code : GoRune)) || _c == (("~".code : GoRune))) {
                return _jsCtxRegexp;
            } else if (_c == (("(".code : GoRune)) || _c == (("[".code : GoRune))) {
                return _jsCtxRegexp;
            } else if (_c == ((":".code : GoRune)) || _c == ((";".code : GoRune)) || _c == (("{".code : GoRune))) {
                return _jsCtxRegexp;
            } else if (_c == (("}".code : GoRune))) {
                return _jsCtxRegexp;
            } else {
                var _j:GoInt = _n;
                while (_j > ((0 : GoInt)) && _isJSIdentPart(((_s[_j - ((1 : GoInt))] : GoRune)))) {
                    _j--;
                };
                if (_regexpPrecederKeywords[((_s.__slice__(_j) : GoString))]) {
                    return _jsCtxRegexp;
                };
            };
        };
        return _jsCtxDivOp;
    }
/**
    // indirectToJSONMarshaler returns the value, after dereferencing as many times
    // as necessary to reach the base type (or nil) or an implementation of json.Marshal.
**/
function _indirectToJSONMarshaler(_a:AnyInterface):AnyInterface {
        if (_a == null) {
            return ((null : AnyInterface));
        };
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_a)).__copy__();
        while (!_v.type().implements_(_jsonMarshalType) && _v.kind().__t__ == stdgo.reflect.Reflect.ptr.__t__ && !_v.isNil()) {
            _v = _v.elem().__copy__();
        };
        return Go.toInterface(_v.interface_());
    }
/**
    // jsValEscaper escapes its inputs to a JS Expression (section 11.14) that has
    // neither side-effects nor free variables outside (NaN, Infinity).
**/
function _jsValEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var _a:AnyInterface = ((null : AnyInterface));
        if (_args.length == ((1 : GoInt))) {
            _a = Go.toInterface(_indirectToJSONMarshaler(Go.toInterface(_args[((0 : GoInt))])));
            if (Go.assertable(((_a : JS)))) {
                var _t:JS = _a == null ? null : _a.__underlying__() == null ? null : _a == null ? null : _a.__underlying__().value;
                return _t.__t__;
            } else if (Go.assertable(((_a : JSStr)))) {
                var _t:JSStr = _a == null ? null : _a.__underlying__() == null ? null : _a == null ? null : _a.__underlying__().value;
                return (("\"" : GoString)) + _t.__t__ + (("\"" : GoString));
            } else if (Go.assertable(((_a : stdgo.encoding.json.Json.Marshaler)))) {
                var _t:stdgo.encoding.json.Json.Marshaler = _a == null ? null : _a.__underlying__() == null ? null : _a == null ? null : _a.__underlying__().value;
            } else if (Go.assertable(((_a : stdgo.fmt.Fmt.Stringer)))) {
                var _t:stdgo.fmt.Fmt.Stringer = _a == null ? null : _a.__underlying__() == null ? null : _a == null ? null : _a.__underlying__().value;
                _a = Go.toInterface(_t.toString());
            };
        } else {
            {
                var _i;
                var _arg;
                for (_obj in _args.keyValueIterator()) {
                    _i = _obj.key;
                    _arg = _obj.value;
                    _args[_i] = Go.toInterface(_indirectToJSONMarshaler(Go.toInterface(_arg)));
                };
            };
            _a = Go.toInterface(stdgo.fmt.Fmt.sprint(..._args.toArray()));
        };
        var __tmp__ = stdgo.encoding.json.Json.marshal(Go.toInterface(_a)), _b:Slice<GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return stdgo.fmt.Fmt.sprintf(" /* %s */null ", Go.toInterface(stdgo.strings.Strings.replaceAll(_err.error(), "*/", "* /")));
        };
        if (_b.length == ((0 : GoInt))) {
            return " null ";
        };
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b), _first:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRune(_b), _last:GoInt32 = __tmp__._0, _:GoInt = __tmp__._1;
        var _buf:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _pad:Bool = _isJSIdentPart(_first) || _isJSIdentPart(_last);
        if (_pad) {
            _buf.writeByte(((" ".code : GoRune)));
        };
        var _written:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _b.length) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRune(_b.__slice__(_i)), _rune:GoInt32 = __tmp__._0, _n:GoInt = __tmp__._1;
                var _repl:GoString = "";
                if (_rune == ((8232 : GoInt32))) {
                    _repl = "\u2028";
                } else if (_rune == ((8233 : GoInt32))) {
                    _repl = "\u2029";
                };
                if (_repl != (("" : GoString))) {
                    _buf.write(_b.__slice__(_written, _i));
                    _buf.writeString(_repl);
                    _written = _i + _n;
                };
                _i = _i + (_n);
            };
        };
        if (_buf.len() != ((0 : GoInt))) {
            _buf.write(_b.__slice__(_written));
            if (_pad) {
                _buf.writeByte(((" ".code : GoRune)));
            };
            return _buf.toString();
        };
        return ((_b : GoString));
    }
/**
    // jsStrEscaper produces a string that can be included between quotes in
    // JavaScript source, in JavaScript embedded in an HTML5 <script> element,
    // or in an HTML5 event handler attribute such as onclick.
**/
function _jsStrEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeJSStr.__t__) {
            return _replace(_s, _jsStrNormReplacementTable);
        };
        return _replace(_s, _jsStrReplacementTable);
    }
/**
    // jsRegexpEscaper behaves like jsStrEscaper but escapes regular expression
    // specials so the result is treated literally when included in a regular
    // expression literal. /foo{{.X}}bar/ matches the string "foo" followed by
    // the literal text of {{.X}} followed by the string "bar".
**/
function _jsRegexpEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _:T_contentType = __tmp__._1;
        _s = _replace(_s, _jsRegexpReplacementTable);
        if (_s == (("" : GoString))) {
            return "(?:)";
        };
        return _s;
    }
/**
    // replace replaces each rune r of s with replacementTable[r], provided that
    // r < len(replacementTable). If replacementTable[r] is the empty string then
    // no replacement is made.
    // It also replaces runes U+2028 and U+2029 with the raw strings `\u2028` and
    // `\u2029`.
**/
function _replace(_s:GoString, _replacementTable:Slice<GoString>):GoString {
        var _b:stdgo.strings.Strings.Builder = new stdgo.strings.Strings.Builder();
        var _r:GoInt32 = ((((0 : GoInt32)) : GoRune)), _w:GoInt = ((0 : GoInt)), _written:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i = _i + (_w), {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i));
                    _r = __tmp__._0;
                    _w = __tmp__._1;
                };
                var _repl:GoString = (("" : GoString));
                if (((_r : GoInt)) < _lowUnicodeReplacementTable.length) {
                    _repl = _lowUnicodeReplacementTable[_r];
                } else if (((_r : GoInt)) < _replacementTable.length && _replacementTable[_r] != (("" : GoString))) {
                    _repl = _replacementTable[_r];
                } else if (_r == (("\u{2028}".code : GoRune))) {
                    _repl = "\u2028";
                } else if (_r == (("\u{2029}".code : GoRune))) {
                    _repl = "\u2029";
                } else {
                    continue;
                };
                if (_written == ((0 : GoInt))) {
                    _b.grow(_s.length);
                };
                _b.writeString(_s.__slice__(_written, _i));
                _b.writeString(_repl);
                _written = _i + _w;
            });
        };
        if (_written == ((0 : GoInt))) {
            return _s;
        };
        _b.writeString(_s.__slice__(_written));
        return _b.toString();
    }
/**
    // isJSIdentPart reports whether the given rune is a JS identifier part.
    // It does not handle all the non-Latin letters, joiners, and combining marks,
    // but it does handle every codepoint that can occur in a numeric literal or
    // a keyword.
**/
function _isJSIdentPart(_r:GoRune):Bool {
        if (_r == (("$".code : GoRune))) {
            return true;
        } else if ((("0".code : GoRune)) <= _r && _r <= (("9".code : GoRune))) {
            return true;
        } else if ((("A".code : GoRune)) <= _r && _r <= (("Z".code : GoRune))) {
            return true;
        } else if (_r == (("_".code : GoRune))) {
            return true;
        } else if ((("a".code : GoRune)) <= _r && _r <= (("z".code : GoRune))) {
            return true;
        };
        return false;
    }
/**
    // isJSType reports whether the given MIME type should be considered JavaScript.
    //
    // It is used to determine whether a script tag with a type attribute is a javascript container.
**/
function _isJSType(_mimeType:GoString):Bool {
        {
            var _i:GoInt = stdgo.strings.Strings.index(_mimeType, ";");
            if (_i >= ((0 : GoInt))) {
                _mimeType = _mimeType.__slice__(0, _i);
            };
        };
        _mimeType = stdgo.strings.Strings.toLower(_mimeType);
        _mimeType = stdgo.strings.Strings.trimSpace(_mimeType);
        if (_mimeType == (("application/ecmascript" : GoString)) || _mimeType == (("application/javascript" : GoString)) || _mimeType == (("application/json" : GoString)) || _mimeType == (("application/ld+json" : GoString)) || _mimeType == (("application/x-ecmascript" : GoString)) || _mimeType == (("application/x-javascript" : GoString)) || _mimeType == (("module" : GoString)) || _mimeType == (("text/ecmascript" : GoString)) || _mimeType == (("text/javascript" : GoString)) || _mimeType == (("text/javascript1.0" : GoString)) || _mimeType == (("text/javascript1.1" : GoString)) || _mimeType == (("text/javascript1.2" : GoString)) || _mimeType == (("text/javascript1.3" : GoString)) || _mimeType == (("text/javascript1.4" : GoString)) || _mimeType == (("text/javascript1.5" : GoString)) || _mimeType == (("text/jscript" : GoString)) || _mimeType == (("text/livescript" : GoString)) || _mimeType == (("text/x-ecmascript" : GoString)) || _mimeType == (("text/x-javascript" : GoString))) {
            return true;
        } else {
            return false;
        };
    }
/**
    // New allocates a new HTML template with the given name.
**/
function new_(_name:GoString):Pointer<Template> {
        var _ns:Pointer<T_nameSpace> = Go.pointer((({ _set : new GoMap<GoString, Pointer<Template>>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_mu", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_set", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_escapeErr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("error", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }, { name : "tree", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_nameSpace", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }, { name : "_escaped", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "_esc", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.escaper", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_ns", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.nameSpace", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.invalidType)) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }])) }]))) }, { name : "_output", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.named("html/template.context", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.state", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_delim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.delim", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_urlPart", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.urlPart", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_jsCtx", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.jsCtx", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_attr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.attr", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_element", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.element", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }, { name : "_err", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("html/template.Error", [], stdgo.reflect.Reflect.GoType.structType([{ name : "errorCode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("html/template.ErrorCode", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "node", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, [])) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "description", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }]))) }])))) }, { name : "_derived", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "tree", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "_common", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.common", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_tmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template.Template", [], stdgo.reflect.Reflect.GoType.invalidType))) }, { name : "_muTmpl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_w", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.Mutex", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_state", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_sema", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }])) }, { name : "_writerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerSem", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) }, { name : "_readerCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }, { name : "_readerWait", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int32_kind) }])) }, { name : "_option", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.option", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_missingKey", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.missingKeyAction", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }])) }, { name : "_muFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("sync.RWMutex", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_parseFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template.FuncMap", [], stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) }, { name : "_execFuncs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.named("reflect.Value", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("reflect.rtype", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_size", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_ptrdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uintptr_kind) },
{ name : "_hash", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint32_kind) },
{ name : "_tflag", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.tflag", [], stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_align", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_fieldAlign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_kind", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(uint8_kind) },
{ name : "_equal", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.signature(false, [], [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_gcdata", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) },
{ name : "_str", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.nameOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) },
{ name : "_ptrToThis", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.typeOff", [], stdgo.reflect.Reflect.GoType.basic(int32_kind)) }]))) }, { name : "_ptr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(unsafepointer_kind) }, { name : "_flag", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("reflect.flag", [], stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) }]))) }]))) }, { name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }])))) }, { name : "_called", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.basic(bool_kind)) }, { name : "_actionNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ActionNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind))) }, { name : "_templateNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TemplateNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "pipe", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.PipeNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }, { name : "isAssign", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) }, { name : "decl", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.VariableNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "ident", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) }])))) }, { name : "cmds", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.CommandNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "args", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.invalidType)) }])))) }]))) }]))), stdgo.reflect.Reflect.GoType.basic(string_kind)) }, { name : "_textNodeEdits", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.TextNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "parseName", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "root", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.ListNode", [], stdgo.reflect.Reflect.GoType.structType([{ name : "nodeType", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.NodeType", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "pos", embedded : true, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_tr", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType)) }, { name : "nodes", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.named("text/template/parse.Node", [], stdgo.reflect.Reflect.GoType.interfaceType(false, []))) }]))) },
{ name : "mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)) },
{ name : "_text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_funcs", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.interfaceType(true, []))) },
{ name : "_lex", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.lexer", [], stdgo.reflect.Reflect.GoType.structType([
{ name : "_name", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_input", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_leftDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_rightDelim", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) },
{ name : "_emitComment", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(bool_kind) },
{ name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_start", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_width", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) },
{ name : "_items", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.chanType(0, stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.structType([{ name : "_typ", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.itemType", [], stdgo.reflect.Reflect.GoType.basic(int_kind)) }, { name : "_pos", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Pos", [], stdgo.reflect.Reflect.GoType.invalidType) }, { name : "_val", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(string_kind) }, { name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_parenDepth", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_line", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_startLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) }]))) },
{ name : "_token", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.arrayType(stdgo.reflect.Reflect.GoType.named("text/template/parse.item", [], stdgo.reflect.Reflect.GoType.invalidType), 3) },
{ name : "_peekCount", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_vars", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(string_kind)) },
{ name : "_treeSet", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(string_kind), stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.named("text/template/parse.Tree", [], stdgo.reflect.Reflect.GoType.invalidType))) },
{ name : "_actionLine", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.basic(int_kind) },
{ name : "_mode", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.named("text/template/parse.Mode", [], stdgo.reflect.Reflect.GoType.invalidType) }]))) }, { name : "text", embedded : false, tag : "", type : stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind)) }]))), stdgo.reflect.Reflect.GoType.sliceType(stdgo.reflect.Reflect.GoType.basic(uint8_kind))) }]))) }]))) }]))))))), _mu : new stdgo.sync.Sync.Mutex(), _escaped : false, _esc : new T_escaper() } : T_nameSpace)));
        _ns.value._esc = _makeEscaper(_ns).__copy__();
        var _tmpl:Pointer<Template> = Go.pointer(new Template(((null : stdgo.Error)), stdgo.text.template.Template.new_(_name), new Pointer<stdgo.text.template.parse.Parse.Tree>().nil(), _ns));
        _tmpl.value._nameSpace.value._set[_name] = _tmpl;
        return _tmpl;
    }
/**
    // Must is a helper that wraps a call to a function returning (*Template, error)
    // and panics if the error is non-nil. It is intended for use in variable initializations
    // such as
    //	var t = template.Must(template.New("name").Parse("html"))
**/
function must(_t:Pointer<Template>, _err:Error):Pointer<Template> {
        if (_err != null) {
            throw _err;
        };
        return _t;
    }
/**
    // ParseFiles creates a new Template and parses the template definitions from
    // the named files. The returned template's name will have the (base) name and
    // (parsed) contents of the first file. There must be at least one file.
    // If an error occurs, parsing stops and the returned *Template is nil.
    //
    // When parsing multiple files with the same name in different directories,
    // the last one mentioned will be the one that results.
    // For instance, ParseFiles("a/foo", "b/foo") stores "b/foo" as the template
    // named "foo", while "a/foo" is unavailable.
**/
function parseFiles(_filenames:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _filenames = new Slice<GoString>(..._filenames);
        return _parseFiles(new Pointer<Template>().nil(), _readFileOS, ..._filenames.toArray());
    }
/**
    // parseFiles is the helper for the method and function. If the argument
    // template is nil, it is created from the first file.
**/
function _parseFiles(_t:Pointer<Template>, _readFile:GoString -> { var _0 : GoString; var _1 : Slice<GoByte>; var _2 : Error; }, _filenames:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _filenames = new Slice<GoString>(..._filenames);
        {
            var _err:stdgo.Error = _t.value._checkCanParse();
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
        };
        if (_filenames.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: no files named in call to ParseFiles") };
        };
        for (_filename in _filenames) {
            var __tmp__ = _readFile(_filename), _name:GoString = __tmp__._0, _b:Slice<GoUInt8> = __tmp__._1, _err:stdgo.Error = __tmp__._2;
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
            var _s:GoString = ((_b : GoString));
            var _tmpl:Pointer<Template> = new Pointer<Template>().nil();
            if (_t == null || _t.isNil()) {
                _t = new_(_name);
            };
            if (_name == _t.value.name()) {
                _tmpl = _t;
            } else {
                _tmpl = _t.value.new_(_name);
            };
            {
                var __tmp__ = _tmpl.value.parse(_s);
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
        };
        return { _0 : _t, _1 : ((null : stdgo.Error)) };
    }
/**
    // ParseGlob creates a new Template and parses the template definitions from
    // the files identified by the pattern. The files are matched according to the
    // semantics of filepath.Match, and the pattern must match at least one file.
    // The returned template will have the (base) name and (parsed) contents of the
    // first file matched by the pattern. ParseGlob is equivalent to calling
    // ParseFiles with the list of files matched by the pattern.
    //
    // When parsing multiple files with the same name in different directories,
    // the last one mentioned will be the one that results.
**/
function parseGlob(_pattern:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } {
        return _parseGlob(new Pointer<Template>().nil(), _pattern);
    }
/**
    // parseGlob is the implementation of the function and method ParseGlob.
**/
function _parseGlob(_t:Pointer<Template>, _pattern:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } {
        {
            var _err:stdgo.Error = _t.value._checkCanParse();
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
        };
        var __tmp__ = stdgo.path.filepath.Filepath.glob(_pattern), _filenames:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Pointer<Template>().nil(), _1 : _err };
        };
        if (_filenames.length == ((0 : GoInt))) {
            return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("html/template: pattern matches no files: %#q", Go.toInterface(_pattern)) };
        };
        return _parseFiles(_t, _readFileOS, ..._filenames.toArray());
    }
/**
    // IsTrue reports whether the value is 'true', in the sense of not the zero of its type,
    // and whether the value has a meaningful truth value. This is the definition of
    // truth used by if and other such actions.
**/
function isTrue(_val:AnyInterface):{ var _0 : Bool; var _1 : Bool; } {
        var _truth:Bool = false, _ok:Bool = false;
        return stdgo.text.template.Template.isTrue(Go.toInterface(_val));
    }
/**
    // ParseFS is like ParseFiles or ParseGlob but reads from the file system fs
    // instead of the host operating system's file system.
    // It accepts a list of glob patterns.
    // (Note that most file names serve as glob patterns matching only themselves.)
**/
function parseFS(_fs:stdgo.io.fs.Fs.FS, _patterns:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _patterns = new Slice<GoString>(..._patterns);
        return _parseFS(new Pointer<Template>().nil(), _fs, _patterns);
    }
function _parseFS(_t:Pointer<Template>, _fsys:stdgo.io.fs.Fs.FS, _patterns:Slice<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } {
        var _filenames:Slice<GoString> = new Slice<GoString>().nil();
        for (_pattern in _patterns) {
            var __tmp__ = stdgo.io.fs.Fs.glob(_fsys, _pattern), _list:Slice<GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : new Pointer<Template>().nil(), _1 : _err };
            };
            if (_list.length == ((0 : GoInt))) {
                return { _0 : new Pointer<Template>().nil(), _1 : stdgo.fmt.Fmt.errorf("template: pattern matches no files: %#q", Go.toInterface(_pattern)) };
            };
            _filenames = _filenames.__append__(..._list.toArray());
        };
        return _parseFiles(_t, _readFileFS(_fsys), ..._filenames.toArray());
    }
function _readFileOS(_file:GoString):{ var _0 : GoString; var _1 : Slice<GoByte>; var _2 : Error; } {
        var _name:GoString = (("" : GoString)), _b:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        _name = stdgo.path.filepath.Filepath.base(_file);
        {
            var __tmp__ = stdgo.os.Os.readFile(_file);
            _b = __tmp__._0;
            _err = __tmp__._1;
        };
        return { _0 : _name, _1 : _b, _2 : _err };
    }
function _readFileFS(_fsys:stdgo.io.fs.Fs.FS):GoString -> { var _0 : GoString; var _1 : Slice<GoByte>; var _2 : Error; } {
        return function(_file:GoString):{ var _0 : GoString; var _1 : Slice<GoByte>; var _2 : Error; } {
            var _name:GoString = (("" : GoString)), _b:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
            _name = stdgo.path.Path.base(_file);
            {
                var __tmp__ = stdgo.io.fs.Fs.readFile(_fsys, _file);
                _b = __tmp__._0;
                _err = __tmp__._1;
            };
            return { _0 : _name, _1 : _b, _2 : _err };
        };
    }
/**
    // tText is the context transition function for the text state.
**/
function _tText(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _k:GoInt = ((0 : GoInt));
        while (true) {
            var _i:GoInt = _k + stdgo.bytes.Bytes.indexByte(_s.__slice__(_k), (("<".code : GoRune)));
            if (_i < _k || _i + ((1 : GoInt)) == _s.length) {
                return { _0 : _c.__copy__(), _1 : _s.length };
            } else if (_i + ((4 : GoInt)) <= _s.length && stdgo.bytes.Bytes.equal(_commentStart, _s.__slice__(_i, _i + ((4 : GoInt))))) {
                return { _0 : (({ _state : _stateHTMLCmt, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element(), _err : new Pointer<Error>().nil() } : T_context)).__copy__(), _1 : _i + ((4 : GoInt)) };
            };
            _i++;
            var _end:Bool = false;
            if (_s[_i] == (("/".code : GoRune))) {
                if (_i + ((1 : GoInt)) == _s.length) {
                    return { _0 : _c.__copy__(), _1 : _s.length };
                };
                {
                    final __tmp__0 = true;
                    final __tmp__1 = _i + ((1 : GoInt));
                    _end = __tmp__0;
                    _i = __tmp__1;
                };
            };
            var __tmp__ = _eatTagName(_s, _i), _j:GoInt = __tmp__._0, _e:T_element = __tmp__._1;
            if (_j != _i) {
                if (_end) {
                    _e = _elementNone;
                };
                return { _0 : (({ _state : _stateTag, _element : _e, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _err : new Pointer<Error>().nil() } : T_context)).__copy__(), _1 : _j };
            };
            _k = _j;
        };
    }
/**
    // tTag is the context transition function for the tag state.
**/
function _tTag(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _i:GoInt = _eatWhiteSpace(_s, ((0 : GoInt)));
        if (_i == _s.length) {
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        if (_s[_i] == ((">".code : GoRune))) {
            return { _0 : (({ _state : _elementContentType[_c._element.__t__], _element : _c._element, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _err : new Pointer<Error>().nil() } : T_context)).__copy__(), _1 : _i + ((1 : GoInt)) };
        };
        var __tmp__ = _eatAttrName(_s, _i), _j:GoInt = __tmp__._0, _err:Pointer<Error> = __tmp__._1;
        if (_err != null && !_err.isNil()) {
            return { _0 : (({ _state : _stateError, _err : _err, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
        };
        var _state:T_state = _stateTag, _attr:T_attr = _attrNone;
        if (_i == _j) {
            return { _0 : (({ _state : _stateError, _err : _errorf(errBadHTML, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "expected space, attr name, or end of tag, but got %q", Go.toInterface(_s.__slice__(_i))), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
        };
        var _attrName:GoString = stdgo.strings.Strings.toLower(((_s.__slice__(_i, _j) : GoString)));
        if (_c._element.__t__ == _elementScript.__t__ && _attrName == (("type" : GoString))) {
            _attr = _attrScriptType;
        } else {
            if (_attrType(_attrName).__t__ == _contentTypeURL.__t__) {
                _attr = _attrURL;
            } else if (_attrType(_attrName).__t__ == _contentTypeCSS.__t__) {
                _attr = _attrStyle;
            } else if (_attrType(_attrName).__t__ == _contentTypeJS.__t__) {
                _attr = _attrScript;
            } else if (_attrType(_attrName).__t__ == _contentTypeSrcset.__t__) {
                _attr = _attrSrcset;
            };
        };
        if (_j == _s.length) {
            _state = _stateAttrName;
        } else {
            _state = _stateAfterName;
        };
        return { _0 : (({ _state : _state, _element : _c._element, _attr : _attr, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _err : new Pointer<Error>().nil() } : T_context)).__copy__(), _1 : _j };
    }
/**
    // tAttrName is the context transition function for stateAttrName.
**/
function _tAttrName(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var __tmp__ = _eatAttrName(_s, ((0 : GoInt))), _i:GoInt = __tmp__._0, _err:Pointer<Error> = __tmp__._1;
        if (_err != null && !_err.isNil()) {
            return { _0 : (({ _state : _stateError, _err : _err, _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
        } else if (_i != _s.length) {
            _c._state = _stateAfterName;
        };
        return { _0 : _c.__copy__(), _1 : _i };
    }
/**
    // tAfterName is the context transition function for stateAfterName.
**/
function _tAfterName(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _i:GoInt = _eatWhiteSpace(_s, ((0 : GoInt)));
        if (_i == _s.length) {
            return { _0 : _c.__copy__(), _1 : _s.length };
        } else if (_s[_i] != (("=".code : GoRune))) {
            _c._state = _stateTag;
            return { _0 : _c.__copy__(), _1 : _i };
        };
        _c._state = _stateBeforeValue;
        return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
    }
/**
    // tBeforeValue is the context transition function for stateBeforeValue.
**/
function _tBeforeValue(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _i:GoInt = _eatWhiteSpace(_s, ((0 : GoInt)));
        if (_i == _s.length) {
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        var _delim:T_delim = _delimSpaceOrTagEnd;
        if (_s[_i] == (("\'".code : GoRune))) {
            {
                final __tmp__0 = _delimSingleQuote;
                final __tmp__1 = _i + ((1 : GoInt));
                _delim = __tmp__0;
                _i = __tmp__1;
            };
        } else if (_s[_i] == (("\"".code : GoRune))) {
            {
                final __tmp__0 = _delimDoubleQuote;
                final __tmp__1 = _i + ((1 : GoInt));
                _delim = __tmp__0;
                _i = __tmp__1;
            };
        };
        {
            final __tmp__0 = _attrStartStates[_c._attr.__t__];
            final __tmp__1 = _delim;
            _c._state = __tmp__0;
            _c._delim = __tmp__1;
        };
        return { _0 : _c.__copy__(), _1 : _i };
    }
/**
    // tHTMLCmt is the context transition function for stateHTMLCmt.
**/
function _tHTMLCmt(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        {
            var _i:GoInt = stdgo.bytes.Bytes.index(_s, _commentEnd);
            if (_i != -((1 : GoUnTypedInt))) {
                return { _0 : new T_context().__copy__(), _1 : _i + ((3 : GoInt)) };
            };
        };
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // tSpecialTagEnd is the context transition function for raw text and RCDATA
    // element states.
**/
function _tSpecialTagEnd(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        if (_c._element.__t__ != _elementNone.__t__) {
            {
                var _i:GoInt = _indexTagEnd(_s, _specialTagEndMarkers[_c._element.__t__]);
                if (_i != -((1 : GoUnTypedInt))) {
                    return { _0 : new T_context().__copy__(), _1 : _i };
                };
            };
        };
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // indexTagEnd finds the index of a special tag end in a case insensitive way, or returns -1
**/
function _indexTagEnd(_s:Slice<GoByte>, _tag:Slice<GoByte>):GoInt {
        var _res:GoInt = ((0 : GoInt));
        var _plen:GoInt = _specialTagEndPrefix.length;
        while (_s.length > ((0 : GoInt))) {
            var _i:GoInt = stdgo.bytes.Bytes.index(_s, _specialTagEndPrefix);
            if (_i == -((1 : GoUnTypedInt))) {
                return _i;
            };
            _s = _s.__slice__(_i + _plen);
            if (_tag.length <= _s.length && stdgo.bytes.Bytes.equalFold(_tag, _s.__slice__(0, _tag.length))) {
                _s = _s.__slice__(_tag.length);
                if (_s.length > ((0 : GoInt)) && stdgo.bytes.Bytes.indexByte(_tagEndSeparators, _s[((0 : GoInt))]) != -((1 : GoUnTypedInt))) {
                    return _res + _i;
                };
                _res = _res + (_tag.length);
            };
            _res = _res + (_i + _plen);
        };
        return -((1 : GoUnTypedInt));
    }
/**
    // tAttr is the context transition function for the attribute state.
**/
function _tAttr(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // tURL is the context transition function for the URL state.
**/
function _tURL(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        if (stdgo.bytes.Bytes.containsAny(_s, "#?")) {
            _c._urlPart = _urlPartQueryOrFrag;
        } else if (_s.length != _eatWhiteSpace(_s, ((0 : GoInt))) && _c._urlPart.__t__ == _urlPartNone.__t__) {
            _c._urlPart = _urlPartPreQuery;
        };
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // tJS is the context transition function for the JS state.
**/
function _tJS(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _i:GoInt = stdgo.bytes.Bytes.indexAny(_s, "\"\'/");
        if (_i == -((1 : GoUnTypedInt))) {
            _c._jsCtx = _nextJSCtx(_s, _c._jsCtx);
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        _c._jsCtx = _nextJSCtx(_s.__slice__(0, _i), _c._jsCtx);
        if (_s[_i] == (("\"".code : GoRune))) {
            {
                final __tmp__0 = _stateJSDqStr;
                final __tmp__1 = _jsCtxRegexp;
                _c._state = __tmp__0;
                _c._jsCtx = __tmp__1;
            };
        } else if (_s[_i] == (("\'".code : GoRune))) {
            {
                final __tmp__0 = _stateJSSqStr;
                final __tmp__1 = _jsCtxRegexp;
                _c._state = __tmp__0;
                _c._jsCtx = __tmp__1;
            };
        } else if (_s[_i] == (("/".code : GoRune))) {
            if (_i + ((1 : GoInt)) < _s.length && _s[_i + ((1 : GoInt))] == (("/".code : GoRune))) {
                {
                    final __tmp__0 = _stateJSLineCmt;
                    final __tmp__1 = _i + ((1 : GoInt));
                    _c._state = __tmp__0;
                    _i = __tmp__1;
                };
            } else if (_i + ((1 : GoInt)) < _s.length && _s[_i + ((1 : GoInt))] == (("*".code : GoRune))) {
                {
                    final __tmp__0 = _stateJSBlockCmt;
                    final __tmp__1 = _i + ((1 : GoInt));
                    _c._state = __tmp__0;
                    _i = __tmp__1;
                };
            } else if (_c._jsCtx.__t__ == _jsCtxRegexp.__t__) {
                _c._state = _stateJSRegexp;
            } else if (_c._jsCtx.__t__ == _jsCtxDivOp.__t__) {
                _c._jsCtx = _jsCtxRegexp;
            } else {
                return { _0 : (({ _state : _stateError, _err : _errorf(errSlashAmbig, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "\'/\' could start a division or regexp: %.32q", Go.toInterface(_s.__slice__(_i))), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
            };
        } else {
            throw "unreachable";
        };
        return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
    }
/**
    // tJSDelimited is the context transition function for the JS string and regexp
    // states.
**/
function _tJSDelimited(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _specials:GoString = "\"";
        if (_c._state.__t__ == _stateJSSqStr.__t__) {
            _specials = "\\'";
        } else if (_c._state.__t__ == _stateJSRegexp.__t__) {
            _specials = "\/[]";
        };
        var _k:GoInt = ((0 : GoInt)), _inCharset:Bool = false;
        while (true) {
            var _i:GoInt = _k + stdgo.bytes.Bytes.indexAny(_s.__slice__(_k), _specials);
            if (_i < _k) {
                break;
            };
            if (_s[_i] == (("\\".code : GoRune))) {
                _i++;
                if (_i == _s.length) {
                    return { _0 : (({ _state : _stateError, _err : _errorf(errPartialEscape, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "unfinished escape sequence in JS string: %q", Go.toInterface(_s)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
                };
            } else if (_s[_i] == (("[".code : GoRune))) {
                _inCharset = true;
            } else if (_s[_i] == (("]".code : GoRune))) {
                _inCharset = false;
            } else {
                if (!_inCharset) {
                    {
                        final __tmp__0 = _stateJS;
                        final __tmp__1 = _jsCtxDivOp;
                        _c._state = __tmp__0;
                        _c._jsCtx = __tmp__1;
                    };
                    return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
                };
            };
            _k = _i + ((1 : GoInt));
        };
        if (_inCharset) {
            return { _0 : (({ _state : _stateError, _err : _errorf(errPartialCharset, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "unfinished JS regexp charset: %q", Go.toInterface(_s)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
        };
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // tBlockCmt is the context transition function for /*comment*/ states.
**/
function _tBlockCmt(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _i:GoInt = stdgo.bytes.Bytes.index(_s, _blockCommentEnd);
        if (_i == -((1 : GoUnTypedInt))) {
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        if (_c._state.__t__ == _stateJSBlockCmt.__t__) {
            _c._state = _stateJS;
        } else if (_c._state.__t__ == _stateCSSBlockCmt.__t__) {
            _c._state = _stateCSS;
        } else {
            throw _c._state.toString();
        };
        return { _0 : _c.__copy__(), _1 : _i + ((2 : GoInt)) };
    }
/**
    // tLineCmt is the context transition function for //comment states.
**/
function _tLineCmt(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _lineTerminators:GoString = (("" : GoString));
        var _endState:T_state = new T_state();
        if (_c._state.__t__ == _stateJSLineCmt.__t__) {
            {
                final __tmp__0 = "\n\r\u2028\u2029";
                final __tmp__1 = _stateJS;
                _lineTerminators = __tmp__0;
                _endState = __tmp__1;
            };
        } else if (_c._state.__t__ == _stateCSSLineCmt.__t__) {
            {
                final __tmp__0 = "\n\f\r";
                final __tmp__1 = _stateCSS;
                _lineTerminators = __tmp__0;
                _endState = __tmp__1;
            };
        } else {
            throw _c._state.toString();
        };
        var _i:GoInt = stdgo.bytes.Bytes.indexAny(_s, _lineTerminators);
        if (_i == -((1 : GoUnTypedInt))) {
            return { _0 : _c.__copy__(), _1 : _s.length };
        };
        _c._state = _endState;
        return { _0 : _c.__copy__(), _1 : _i };
    }
/**
    // tCSS is the context transition function for the CSS state.
**/
function _tCSS(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _k:GoInt = ((0 : GoInt));
        while (true) {
            var _i:GoInt = _k + stdgo.bytes.Bytes.indexAny(_s.__slice__(_k), "(\"\'/");
            if (_i < _k) {
                return { _0 : _c.__copy__(), _1 : _s.length };
            };
            if (_s[_i] == (("(".code : GoRune))) {
                var _p:Slice<GoUInt8> = stdgo.bytes.Bytes.trimRight(_s.__slice__(0, _i), "\t\n\f\r ");
                if (_endsWithCSSKeyword(_p, "url")) {
                    var _j:GoInt = _s.length - stdgo.bytes.Bytes.trimLeft(_s.__slice__(_i + ((1 : GoInt))), "\t\n\f\r ").length;
                    if (_j != _s.length && _s[_j] == (("\"".code : GoRune))) {
                        {
                            final __tmp__0 = _stateCSSDqURL;
                            final __tmp__1 = _j + ((1 : GoInt));
                            _c._state = __tmp__0;
                            _j = __tmp__1;
                        };
                    } else if (_j != _s.length && _s[_j] == (("\'".code : GoRune))) {
                        {
                            final __tmp__0 = _stateCSSSqURL;
                            final __tmp__1 = _j + ((1 : GoInt));
                            _c._state = __tmp__0;
                            _j = __tmp__1;
                        };
                    } else {
                        _c._state = _stateCSSURL;
                    };
                    return { _0 : _c.__copy__(), _1 : _j };
                };
            } else if (_s[_i] == (("/".code : GoRune))) {
                if (_i + ((1 : GoInt)) < _s.length) {
                    if (_s[_i + ((1 : GoInt))] == (("/".code : GoRune))) {
                        _c._state = _stateCSSLineCmt;
                        return { _0 : _c.__copy__(), _1 : _i + ((2 : GoInt)) };
                    } else if (_s[_i + ((1 : GoInt))] == (("*".code : GoRune))) {
                        _c._state = _stateCSSBlockCmt;
                        return { _0 : _c.__copy__(), _1 : _i + ((2 : GoInt)) };
                    };
                };
            } else if (_s[_i] == (("\"".code : GoRune))) {
                _c._state = _stateCSSDqStr;
                return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
            } else if (_s[_i] == (("\'".code : GoRune))) {
                _c._state = _stateCSSSqStr;
                return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
            };
            _k = _i + ((1 : GoInt));
        };
    }
/**
    // tCSSStr is the context transition function for the CSS string and URL states.
**/
function _tCSSStr(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        var _endAndEsc:GoString = (("" : GoString));
        if (_c._state.__t__ == _stateCSSDqStr.__t__ || _c._state.__t__ == _stateCSSDqURL.__t__) {
            _endAndEsc = "\"";
        } else if (_c._state.__t__ == _stateCSSSqStr.__t__ || _c._state.__t__ == _stateCSSSqURL.__t__) {
            _endAndEsc = "\\'";
        } else if (_c._state.__t__ == _stateCSSURL.__t__) {
            _endAndEsc = "\\\t\n\f\r )";
        } else {
            throw _c._state.toString();
        };
        var _k:GoInt = ((0 : GoInt));
        while (true) {
            var _i:GoInt = _k + stdgo.bytes.Bytes.indexAny(_s.__slice__(_k), _endAndEsc);
            if (_i < _k) {
                var __tmp__ = _tURL(_c.__copy__(), _decodeCSS(_s.__slice__(_k))), _c:T_context = __tmp__._0, _nread:GoInt = __tmp__._1;
                return { _0 : _c.__copy__(), _1 : _k + _nread };
            };
            if (_s[_i] == (("\\".code : GoRune))) {
                _i++;
                if (_i == _s.length) {
                    return { _0 : (({ _state : _stateError, _err : _errorf(errPartialEscape, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "unfinished escape sequence in CSS string: %q", Go.toInterface(_s)), _delim : new T_delim(), _urlPart : new T_urlPart(), _jsCtx : new T_jsCtx(), _attr : new T_attr(), _element : new T_element() } : T_context)).__copy__(), _1 : _s.length };
                };
            } else {
                _c._state = _stateCSS;
                return { _0 : _c.__copy__(), _1 : _i + ((1 : GoInt)) };
            };
            {
                var __tmp__ = _tURL(_c.__copy__(), _decodeCSS(_s.__slice__(0, _i + ((1 : GoInt)))));
                _c = __tmp__._0.__copy__();
            };
            _k = _i + ((1 : GoInt));
        };
    }
/**
    // tError is the context transition function for the error state.
**/
function _tError(_c:T_context, _s:Slice<GoByte>):{ var _0 : T_context; var _1 : GoInt; } {
        return { _0 : _c.__copy__(), _1 : _s.length };
    }
/**
    // eatAttrName returns the largest j such that s[i:j] is an attribute name.
    // It returns an error if s[i:] does not look like it begins with an
    // attribute name, such as encountering a quote mark without a preceding
    // equals sign.
**/
function _eatAttrName(_s:Slice<GoByte>, _i:GoInt):{ var _0 : GoInt; var _1 : Pointer<Error>; } {
        {
            var _j:GoInt = _i;
            Go.cfor(_j < _s.length, _j++, {
                if (_s[_j] == ((" ".code : GoRune)) || _s[_j] == (("\t".code : GoRune)) || _s[_j] == (("\n".code : GoRune)) || _s[_j] == (("".code : GoRune)) || _s[_j] == (("\r".code : GoRune)) || _s[_j] == (("=".code : GoRune)) || _s[_j] == ((">".code : GoRune))) {
                    return { _0 : _j, _1 : new Pointer<Error>().nil() };
                } else if (_s[_j] == (("\'".code : GoRune)) || _s[_j] == (("\"".code : GoRune)) || _s[_j] == (("<".code : GoRune))) {
                    return { _0 : -((1 : GoUnTypedInt)), _1 : _errorf(errBadHTML, ((null : stdgo.text.template.parse.Parse.Node)), ((0 : GoInt)), "%q in attribute name: %.32q", Go.toInterface(_s.__slice__(_j, _j + ((1 : GoInt)))), Go.toInterface(_s)) };
                } else {};
            });
        };
        return { _0 : _s.length, _1 : new Pointer<Error>().nil() };
    }
/**
    // asciiAlpha reports whether c is an ASCII letter.
**/
function _asciiAlpha(_c:GoByte):Bool {
        return (("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune)) || (("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune));
    }
/**
    // asciiAlphaNum reports whether c is an ASCII letter or digit.
**/
function _asciiAlphaNum(_c:GoByte):Bool {
        return _asciiAlpha(_c) || (("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune));
    }
/**
    // eatTagName returns the largest j such that s[i:j] is a tag name and the tag type.
**/
function _eatTagName(_s:Slice<GoByte>, _i:GoInt):{ var _0 : GoInt; var _1 : T_element; } {
        if (_i == _s.length || !_asciiAlpha(_s[_i])) {
            return { _0 : _i, _1 : _elementNone };
        };
        var _j:GoInt = _i + ((1 : GoInt));
        while (_j < _s.length) {
            var _x:GoUInt8 = _s[_j];
            if (_asciiAlphaNum(_x)) {
                _j++;
                continue;
            };
            if ((_x == ((":".code : GoRune)) || _x == (("-".code : GoRune))) && _j + ((1 : GoInt)) < _s.length && _asciiAlphaNum(_s[_j + ((1 : GoInt))])) {
                _j = _j + (((2 : GoInt)));
                continue;
            };
            break;
        };
        return { _0 : _j, _1 : _elementNameMap[stdgo.strings.Strings.toLower(((_s.__slice__(_i, _j) : GoString)))] };
    }
/**
    // eatWhiteSpace returns the largest j such that s[i:j] is white space.
**/
function _eatWhiteSpace(_s:Slice<GoByte>, _i:GoInt):GoInt {
        {
            var _j:GoInt = _i;
            Go.cfor(_j < _s.length, _j++, {
                if (_s[_j] == ((" ".code : GoRune)) || _s[_j] == (("\t".code : GoRune)) || _s[_j] == (("\n".code : GoRune)) || _s[_j] == (("".code : GoRune)) || _s[_j] == (("\r".code : GoRune))) {} else {
                    return _j;
                };
            });
        };
        return _s.length;
    }
/**
    // urlFilter returns its input unless it contains an unsafe scheme in which
    // case it defangs the entire URL.
    //
    // Schemes that cause unintended side effects that are irreversible without user
    // interaction are considered unsafe. For example, clicking on a "javascript:"
    // link can immediately trigger JavaScript code execution.
    //
    // This filter conservatively assumes that all schemes other than the following
    // are unsafe:
    //    * http:   Navigates to a new website, and may open a new window or tab.
    //              These side effects can be reversed by navigating back to the
    //              previous website, or closing the window or tab. No irreversible
    //              changes will take place without further user interaction with
    //              the new website.
    //    * https:  Same as http.
    //    * mailto: Opens an email program and starts a new draft. This side effect
    //              is not irreversible until the user explicitly clicks send; it
    //              can be undone by closing the email program.
    //
    // To allow URLs containing other schemes to bypass this filter, developers must
    // explicitly indicate that such a URL is expected and safe by encapsulating it
    // in a template.URL value.
**/
function _urlFilter(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeURL.__t__) {
            return _s;
        };
        if (!_isSafeURL(_s)) {
            return (("#" : GoString)) + _filterFailsafe;
        };
        return _s;
    }
/**
    // isSafeURL is true if s is a relative URL or if URL has a protocol in
    // (http, https, mailto).
**/
function _isSafeURL(_s:GoString):Bool {
        {
            var _i:GoInt = stdgo.strings.Strings.indexRune(_s, ((":".code : GoRune)));
            if (_i >= ((0 : GoInt)) && !stdgo.strings.Strings.containsRune(_s.__slice__(0, _i), (("/".code : GoRune)))) {
                var _protocol:GoString = _s.__slice__(0, _i);
                if (!stdgo.strings.Strings.equalFold(_protocol, "http") && !stdgo.strings.Strings.equalFold(_protocol, "https") && !stdgo.strings.Strings.equalFold(_protocol, "mailto")) {
                    return false;
                };
            };
        };
        return true;
    }
/**
    // urlEscaper produces an output that can be embedded in a URL query.
    // The output can be embedded in an HTML attribute without further escaping.
**/
function _urlEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return _urlProcessor(false, ..._args.toArray());
    }
/**
    // urlNormalizer normalizes URL content so it can be embedded in a quote-delimited
    // string or parenthesis delimited url(...).
    // The normalizer does not encode all HTML specials. Specifically, it does not
    // encode '&' so correct embedding in an HTML attribute requires escaping of
    // '&' to '&amp;'.
**/
function _urlNormalizer(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        return _urlProcessor(true, ..._args.toArray());
    }
/**
    // urlProcessor normalizes (when norm is true) or escapes its input to produce
    // a valid hierarchical or opaque URL part.
**/
function _urlProcessor(_norm:Bool, _args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeURL.__t__) {
            _norm = true;
        };
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        if (_processURLOnto(_s, _norm, Go.pointer(_b))) {
            return _b.toString();
        };
        return _s;
    }
/**
    // processURLOnto appends a normalized URL corresponding to its input to b
    // and reports whether the appended content differs from s.
**/
function _processURLOnto(_s:GoString, _norm:Bool, _b:Pointer<stdgo.bytes.Bytes.Buffer>):Bool {
        _b.value.grow(_s.length + ((16 : GoInt)));
        var _written:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt)), _n:GoInt = _s.length;
            Go.cfor(_i < _n, _i++, {
                var _c:GoUInt8 = _s[_i];
                if (_c == (("!".code : GoRune)) || _c == (("#".code : GoRune)) || _c == (("$".code : GoRune)) || _c == (("&".code : GoRune)) || _c == (("*".code : GoRune)) || _c == (("+".code : GoRune)) || _c == ((",".code : GoRune)) || _c == (("/".code : GoRune)) || _c == ((":".code : GoRune)) || _c == ((";".code : GoRune)) || _c == (("=".code : GoRune)) || _c == (("?".code : GoRune)) || _c == (("@".code : GoRune)) || _c == (("[".code : GoRune)) || _c == (("]".code : GoRune))) {
                    if (_norm) {
                        continue;
                    };
                } else if (_c == (("-".code : GoRune)) || _c == ((".".code : GoRune)) || _c == (("_".code : GoRune)) || _c == (("~".code : GoRune))) {
                    continue;
                } else if (_c == (("%".code : GoRune))) {
                    if (_norm && _i + ((2 : GoInt)) < _s.length && _isHex(_s[_i + ((1 : GoInt))]) && _isHex(_s[_i + ((2 : GoInt))])) {
                        continue;
                    };
                } else {
                    if ((("a".code : GoRune)) <= _c && _c <= (("z".code : GoRune))) {
                        continue;
                    };
                    if ((("A".code : GoRune)) <= _c && _c <= (("Z".code : GoRune))) {
                        continue;
                    };
                    if ((("0".code : GoRune)) <= _c && _c <= (("9".code : GoRune))) {
                        continue;
                    };
                };
                _b.value.writeString(_s.__slice__(_written, _i));
                stdgo.fmt.Fmt.fprintf(_b.value, "%%%02x", Go.toInterface(_c));
                _written = _i + ((1 : GoInt));
            });
        };
        _b.value.writeString(_s.__slice__(_written));
        return _written != ((0 : GoInt));
    }
/**
    // Filters and normalizes srcset values which are comma separated
    // URLs followed by metadata.
**/
function _srcsetFilterAndEscaper(_args:haxe.Rest<AnyInterface>):GoString {
        var _args = new Slice<AnyInterface>(..._args);
        var __tmp__ = _stringify(..._args.toArray()), _s:GoString = __tmp__._0, _t:T_contentType = __tmp__._1;
        if (_t.__t__ == _contentTypeSrcset.__t__) {
            return _s;
        } else if (_t.__t__ == _contentTypeURL.__t__) {
            var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
            if (_processURLOnto(_s, true, Go.pointer(_b))) {
                _s = _b.toString();
            };
            return stdgo.strings.Strings.replaceAll(_s, ",", "%2c");
        };
        var _b:stdgo.bytes.Bytes.Buffer = new stdgo.bytes.Bytes.Buffer();
        var _written:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_s[_i] == ((",".code : GoRune))) {
                    _filterSrcsetElement(_s, _written, _i, Go.pointer(_b));
                    _b.writeString(",");
                    _written = _i + ((1 : GoInt));
                };
            });
        };
        _filterSrcsetElement(_s, _written, _s.length, Go.pointer(_b));
        return _b.toString();
    }
/**
    // isHTMLSpace is true iff c is a whitespace character per
    // https://infra.spec.whatwg.org/#ascii-whitespace
**/
function _isHTMLSpace(_c:GoByte):Bool {
        return (_c <= ((32 : GoUInt8))) && ((0 : GoUInt8)) != (_htmlSpaceAndASCIIAlnumBytes[(_c >> ((3 : GoUnTypedInt)))] & ((((1 : GoUInt8)) << (((_c & ((7 : GoUInt8))) : GoUInt)))));
    }
function _isHTMLSpaceOrASCIIAlnum(_c:GoByte):Bool {
        return (_c < ((128 : GoUInt8))) && ((0 : GoUInt8)) != (_htmlSpaceAndASCIIAlnumBytes[(_c >> ((3 : GoUnTypedInt)))] & ((((1 : GoUInt8)) << (((_c & ((7 : GoUInt8))) : GoUInt)))));
    }
function _filterSrcsetElement(_s:GoString, _left:GoInt, _right:GoInt, _b:Pointer<stdgo.bytes.Bytes.Buffer>):Void {
        var _start:GoInt = _left;
        while (_start < _right && _isHTMLSpace(_s[_start])) {
            _start++;
        };
        var _end:GoInt = _right;
        {
            var _i:GoInt = _start;
            Go.cfor(_i < _right, _i++, {
                if (_isHTMLSpace(_s[_i])) {
                    _end = _i;
                    break;
                };
            });
        };
        {
            var _url:GoString = _s.__slice__(_start, _end);
            if (_isSafeURL(_url)) {
                var _metadataOk:Bool = true;
                {
                    var _i:GoInt = _end;
                    Go.cfor(_i < _right, _i++, {
                        if (!_isHTMLSpaceOrASCIIAlnum(_s[_i])) {
                            _metadataOk = false;
                            break;
                        };
                    });
                };
                if (_metadataOk) {
                    _b.value.writeString(_s.__slice__(_left, _start));
                    _processURLOnto(_url, true, _b);
                    _b.value.writeString(_s.__slice__(_end, _right));
                    return;
                };
            };
        };
        _b.value.writeString("#");
        _b.value.writeString(_filterFailsafe);
    }
class T_context_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
    public function _eq(__tmp__, _d:T_context):Bool return __tmp__._eq(_d);
    public function _mangle(__tmp__, _templateName:GoString):GoString return __tmp__._mangle(_templateName);
}
class T_state_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_delim_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_urlPart_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_jsCtx_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_element_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_attr_extension_fields {
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class Error_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_escaper_extension_fields {
    public function _escape(__tmp__, _c:T_context, _n:stdgo.text.template.parse.Parse.Node):T_context return __tmp__._escape(_c, _n);
    public function _escapeAction(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ActionNode>):T_context return __tmp__._escapeAction(_c, _n);
    public function _escapeBranch(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.BranchNode>, _nodeName:GoString):T_context return __tmp__._escapeBranch(_c, _n, _nodeName);
    public function _escapeList(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ListNode>):T_context return __tmp__._escapeList(_c, _n);
    public function _escapeListConditionally(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.ListNode>, _filter:(Pointer<T_escaper>, T_context) -> Bool):{ var _0 : T_context; var _1 : Bool; } return __tmp__._escapeListConditionally(_c, _n, _filter);
    public function _escapeTemplate(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.TemplateNode>):T_context return __tmp__._escapeTemplate(_c, _n);
    public function _escapeTree(__tmp__, _c:T_context, _node:stdgo.text.template.parse.Parse.Node, _name:GoString, _line:GoInt):{ var _0 : T_context; var _1 : GoString; } return __tmp__._escapeTree(_c, _node, _name, _line);
    public function _computeOutCtx(__tmp__, _c:T_context, _t:Pointer<stdgo.text.template.Template.Template>):T_context return __tmp__._computeOutCtx(_c, _t);
    public function _escapeTemplateBody(__tmp__, _c:T_context, _t:Pointer<stdgo.text.template.Template.Template>):{ var _0 : T_context; var _1 : Bool; } return __tmp__._escapeTemplateBody(_c, _t);
    public function _escapeText(__tmp__, _c:T_context, _n:Pointer<stdgo.text.template.parse.Parse.TextNode>):T_context return __tmp__._escapeText(_c, _n);
    public function _editActionNode(__tmp__, _n:Pointer<stdgo.text.template.parse.Parse.ActionNode>, _cmds:Slice<GoString>):Void __tmp__._editActionNode(_n, _cmds);
    public function _editTemplateNode(__tmp__, _n:Pointer<stdgo.text.template.parse.Parse.TemplateNode>, _callee:GoString):Void __tmp__._editTemplateNode(_n, _callee);
    public function _editTextNode(__tmp__, _n:Pointer<stdgo.text.template.parse.Parse.TextNode>, _text:Slice<GoByte>):Void __tmp__._editTextNode(_n, _text);
    public function _commit(__tmp__):Void __tmp__._commit();
    public function _template(__tmp__, _name:GoString):Pointer<stdgo.text.template.Template.Template> return __tmp__._template(_name);
    public function _arbitraryTemplate(__tmp__):Pointer<Template> return __tmp__._arbitraryTemplate();
}
class Template_extension_fields {
    public function templates(__tmp__):Slice<Pointer<Template>> return __tmp__.templates();
    public function option(__tmp__, _opt:haxe.Rest<GoString>):Pointer<Template> return __tmp__.option(_opt);
    public function _checkCanParse(__tmp__):Error return __tmp__._checkCanParse();
    public function _escape(__tmp__):Error return __tmp__._escape();
    public function execute(__tmp__, _wr:stdgo.io.Io.Writer, _data:AnyInterface):Error return __tmp__.execute(_wr, _data);
    public function executeTemplate(__tmp__, _wr:stdgo.io.Io.Writer, _name:GoString, _data:AnyInterface):Error return __tmp__.executeTemplate(_wr, _name, _data);
    public function _lookupAndEscapeTemplate(__tmp__, _name:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__._lookupAndEscapeTemplate(_name);
    public function definedTemplates(__tmp__):GoString return __tmp__.definedTemplates();
    public function parse(__tmp__, _text:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.parse(_text);
    public function addParseTree(__tmp__, _name:GoString, _tree:Pointer<stdgo.text.template.parse.Parse.Tree>):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.addParseTree(_name, _tree);
    public function clone(__tmp__):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.clone();
    public function new_(__tmp__, _name:GoString):Pointer<Template> return __tmp__.new_(_name);
    public function _new(__tmp__, _name:GoString):Pointer<Template> return __tmp__._new(_name);
    public function name(__tmp__):GoString return __tmp__.name();
    public function funcs(__tmp__, _funcMap:FuncMap):Pointer<Template> return __tmp__.funcs(_funcMap);
    public function delims(__tmp__, _left:GoString, _right:GoString):Pointer<Template> return __tmp__.delims(_left, _right);
    public function lookup(__tmp__, _name:GoString):Pointer<Template> return __tmp__.lookup(_name);
    public function parseFiles(__tmp__, _filenames:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.parseFiles(_filenames);
    public function parseGlob(__tmp__, _pattern:GoString):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.parseGlob(_pattern);
    public function parseFS(__tmp__, _fs:stdgo.io.fs.Fs.FS, _patterns:haxe.Rest<GoString>):{ var _0 : Pointer<Template>; var _1 : Error; } return __tmp__.parseFS(_fs, _patterns);
}
