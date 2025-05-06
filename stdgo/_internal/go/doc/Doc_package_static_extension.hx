package stdgo._internal.go.doc;
@:keep @:allow(stdgo._internal.go.doc.Doc.Package_asInterface) class Package_static_extension {
    @:keep
    @:tdfield
    static public function synopsis( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _text:stdgo.GoString):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        _text = stdgo._internal.go.doc.Doc__firstsentence._firstSentence(_text?.__copy__())?.__copy__();
        var _lower = (stdgo._internal.strings.Strings_tolower.toLower(_text?.__copy__())?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L62"
        for (__0 => _prefix in stdgo._internal.go.doc.Doc_illegalprefixes.illegalPrefixes) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L63"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lower?.__copy__(), _prefix?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L64"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        var _pr = _p.printer();
        (@:checkr _pr ?? throw "null pointer dereference").textWidth = (-1 : stdgo.GoInt);
        var _d = _p.parser().parse(_text?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L70"
        if (((@:checkr _d ?? throw "null pointer dereference").content.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L71"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L73"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _d ?? throw "null pointer dereference").content[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>), _1 : false };
            }, __1 = __tmp__._0, _ok = __tmp__._1;
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L74"
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
        };
        (@:checkr _d ?? throw "null pointer dereference").content = ((@:checkr _d ?? throw "null pointer dereference").content.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_block.Block>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/synopsis.go#L77"
        return stdgo._internal.strings.Strings_trimspace.trimSpace((_pr.text(_d) : stdgo.GoString)?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function filter( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _f:stdgo._internal.go.doc.Doc_filter.Filter):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        (@:checkr _p ?? throw "null pointer dereference").consts = stdgo._internal.go.doc.Doc__filtervalues._filterValues((@:checkr _p ?? throw "null pointer dereference").consts, _f);
        (@:checkr _p ?? throw "null pointer dereference").vars = stdgo._internal.go.doc.Doc__filtervalues._filterValues((@:checkr _p ?? throw "null pointer dereference").vars, _f);
        (@:checkr _p ?? throw "null pointer dereference").types = stdgo._internal.go.doc.Doc__filtertypes._filterTypes((@:checkr _p ?? throw "null pointer dereference").types, _f);
        (@:checkr _p ?? throw "null pointer dereference").funcs = stdgo._internal.go.doc.Doc__filterfuncs._filterFuncs((@:checkr _p ?? throw "null pointer dereference").funcs, _f);
        (@:checkr _p ?? throw "null pointer dereference").doc = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function text( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L353"
        return _p.printer().text(_p.parser().parse(_text?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function markdown( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L342"
        return _p.printer().markdown(_p.parser().parse(_text?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function hTML( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _text:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L333"
        return _p.printer().hTML(_p.parser().parse(_text?.__copy__()));
    }
    @:keep
    @:tdfield
    static public function printer( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L324"
        return (stdgo.Go.setRef((new stdgo._internal.go.doc.comment.Comment_printer.Printer() : stdgo._internal.go.doc.comment.Comment_printer.Printer)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>);
    }
    @:keep
    @:tdfield
    static public function parser( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L311"
        return (stdgo.Go.setRef(({ lookupPackage : _p._lookupPackage, lookupSym : _p._lookupSym } : stdgo._internal.go.doc.comment.Comment_parser.Parser)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>);
    }
    @:keep
    @:tdfield
    static public function _lookupPackage( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _name:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        var _importPath = ("" : stdgo.GoString), _ok = false;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L294"
        {
            var __tmp__ = ((@:checkr _p ?? throw "null pointer dereference")._importByName != null && (@:checkr _p ?? throw "null pointer dereference")._importByName.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _p ?? throw "null pointer dereference")._importByName[_name?.__copy__()], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _path:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L295"
                if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L296"
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _importPath = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L298"
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : _path?.__copy__(), _1 : true };
                    _importPath = __tmp__._0;
                    _ok = __tmp__._1;
                    __tmp__;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L300"
        if ((@:checkr _p ?? throw "null pointer dereference").name == (_name)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L301"
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : true };
                _importPath = __tmp__._0;
                _ok = __tmp__._1;
                __tmp__;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L303"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
            _importPath = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _lookupSym( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _recv:stdgo.GoString, _name:stdgo.GoString):Bool {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L280"
        if (_recv != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L281"
            return ((@:checkr _p ?? throw "null pointer dereference")._syms[((_recv + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _name?.__copy__() : stdgo.GoString)] ?? false);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L283"
        return ((@:checkr _p ?? throw "null pointer dereference")._syms[_name] ?? false);
    }
    @:keep
    @:tdfield
    static public function _collectFuncs( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _funcs:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L174"
        for (__0 => _f in _funcs) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L175"
            if ((@:checkr _f ?? throw "null pointer dereference").recv != ((stdgo.Go.str() : stdgo.GoString))) {
                var _r = (stdgo._internal.strings.Strings_trimprefix.trimPrefix((@:checkr _f ?? throw "null pointer dereference").recv?.__copy__(), ("*" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L177"
                {
                    var _i = (stdgo._internal.strings.Strings_indexbyte.indexByte(_r?.__copy__(), (91 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        _r = (_r.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                    };
                };
                (@:checkr _p ?? throw "null pointer dereference")._syms[((_r + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _f ?? throw "null pointer dereference").name?.__copy__() : stdgo.GoString)] = true;
            } else {
                (@:checkr _p ?? throw "null pointer dereference")._syms[(@:checkr _f ?? throw "null pointer dereference").name] = true;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _collectTypes( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _types:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_type_.Type_>>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L160"
        for (__0 => _t in _types) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L161"
            if (((@:checkr _p ?? throw "null pointer dereference")._syms[(@:checkr _t ?? throw "null pointer dereference").name] ?? false)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L163"
                continue;
            };
            (@:checkr _p ?? throw "null pointer dereference")._syms[(@:checkr _t ?? throw "null pointer dereference").name] = true;
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L166"
            _p._collectValues((@:checkr _t ?? throw "null pointer dereference").consts);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L167"
            _p._collectValues((@:checkr _t ?? throw "null pointer dereference").vars);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L168"
            _p._collectFuncs((@:checkr _t ?? throw "null pointer dereference").funcs);
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L169"
            _p._collectFuncs((@:checkr _t ?? throw "null pointer dereference").methods);
        };
    }
    @:keep
    @:tdfield
    static public function _collectValues( _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package>, _values:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.Doc_package.Package> = _p;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L152"
        for (__0 => _v in _values) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/doc.go#L153"
            for (__1 => _name in (@:checkr _v ?? throw "null pointer dereference").names) {
                (@:checkr _p ?? throw "null pointer dereference")._syms[_name] = true;
            };
        };
    }
}
