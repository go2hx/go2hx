package stdgo._internal.go.doc;
function _sortedValues(_m:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>, _tok:stdgo._internal.go.token.Token_token.Token):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>> {
        var _list = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>((_m.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        var _i = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L858"
        for (__0 => _val in _m) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L859"
            if ((@:checkr (@:checkr _val ?? throw "null pointer dereference").decl ?? throw "null pointer dereference").tok == (_tok)) {
                _list[(_i : stdgo.GoInt)] = _val;
                //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L861"
                _i++;
            };
        };
        _list = (_list.__slice__((0 : stdgo.GoInt), _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_value.Value>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L866"
        stdgo._internal.go.doc.Doc__sortby._sortBy(function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L868"
            {
                var __0 = (stdgo._internal.go.doc.Doc__sortingname._sortingName((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").decl)?.__copy__() : stdgo.GoString), __1 = (stdgo._internal.go.doc.Doc__sortingname._sortingName((@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").decl)?.__copy__() : stdgo.GoString);
var _nj = __1, _ni = __0;
                if (_ni != (_nj)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L869"
                    return (_ni < _nj : Bool);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L871"
            return ((@:checkr _list[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._order < (@:checkr _list[(_j : stdgo.GoInt)] ?? throw "null pointer dereference")._order : Bool);
        }, function(_i:stdgo.GoInt, _j:stdgo.GoInt):Void {
            {
                final __tmp__0 = _list[(_j : stdgo.GoInt)];
                final __tmp__1 = _list[(_i : stdgo.GoInt)];
                final __tmp__2 = _list;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = _list;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
        }, (_list.length));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/reader.go#L877"
        return _list;
    }
