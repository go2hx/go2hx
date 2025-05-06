package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.CommentGroup_asInterface) class CommentGroup_static_extension {
    @:keep
    @:tdfield
    static public function text( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.GoString {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L98"
        if (({
            final value = _g;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L99"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _comments = (new stdgo.Slice<stdgo.GoString>(((@:checkr _g ?? throw "null pointer dereference").list.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L102"
        for (_i => _c in (@:checkr _g ?? throw "null pointer dereference").list) {
            _comments[(_i : stdgo.GoInt)] = (@:checkr _c ?? throw "null pointer dereference").text?.__copy__();
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (10 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L107"
        for (__0 => _c in _comments) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L110"
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c[(1 : stdgo.GoInt)];
                        if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L114"
                            if ((_c.length) == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L116"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L118"
                            if (_c[(0 : stdgo.GoInt)] == ((32 : stdgo.GoUInt8))) {
                                _c = (_c.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L121"
                                break;
                            };
                            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L123"
                            if (stdgo._internal.go.ast.Ast__isdirective._isDirective(_c?.__copy__())) {
                                //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L125"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            break;
                        } else if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _c = (_c.__slice__((2 : stdgo.GoInt), ((_c.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            var _cl = stdgo._internal.strings.Strings_split.split(_c?.__copy__(), ("\n" : stdgo.GoString));
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L136"
            for (__1 => _l in _cl) {
                _lines = (_lines.__append__(stdgo._internal.go.ast.Ast__striptrailingwhitespace._stripTrailingWhitespace(_l?.__copy__())?.__copy__()) : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L144"
        for (__1 => _line in _lines) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L145"
            if (((_line != (stdgo.Go.str() : stdgo.GoString)) || ((_n > (0 : stdgo.GoInt) : Bool) && _lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) : Bool)) {
                _lines[(_n : stdgo.GoInt)] = _line?.__copy__();
                //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L147"
                _n++;
            };
        };
        _lines = (_lines.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L153"
        if (((_n > (0 : stdgo.GoInt) : Bool) && (_lines[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            _lines = (_lines.__append__((stdgo.Go.str() : stdgo.GoString)?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L157"
        return stdgo._internal.strings.Strings_join.join(_lines, ("\n" : stdgo.GoString))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function end( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L79"
        return (@:checkr _g ?? throw "null pointer dereference").list[(((@:checkr _g ?? throw "null pointer dereference").list.length) - (1 : stdgo.GoInt) : stdgo.GoInt)].end();
    }
    @:keep
    @:tdfield
    static public function pos( _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _g:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = _g;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/ast.go#L78"
        return (@:checkr _g ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)].pos();
    }
}
