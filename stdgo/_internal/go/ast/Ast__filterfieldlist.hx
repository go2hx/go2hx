package stdgo._internal.go.ast;
function _filterFieldList(_fields:stdgo.Ref<stdgo._internal.go.ast.Ast_fieldlist.FieldList>, _filter:stdgo._internal.go.ast.Ast_filter.Filter, _export:Bool):Bool {
        var _removedFields = false;
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L75"
        if (({
            final value = _fields;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L76"
            return _removedFields = false;
        };
        var _list = (@:checkr _fields ?? throw "null pointer dereference").list;
        var _j = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L80"
        for (__0 => _f in _list) {
            var _keepField = (false : Bool);
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L82"
            if (((@:checkr _f ?? throw "null pointer dereference").names.length) == ((0 : stdgo.GoInt))) {
                var _name = stdgo._internal.go.ast.Ast__fieldname._fieldName((@:checkr _f ?? throw "null pointer dereference").type);
                _keepField = (({
                    final value = _name;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && _filter((@:checkr _name ?? throw "null pointer dereference").name?.__copy__()) : Bool);
            } else {
                var _n = ((@:checkr _f ?? throw "null pointer dereference").names.length : stdgo.GoInt);
                (@:checkr _f ?? throw "null pointer dereference").names = stdgo._internal.go.ast.Ast__filteridentlist._filterIdentList((@:checkr _f ?? throw "null pointer dereference").names, _filter);
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L89"
                if ((((@:checkr _f ?? throw "null pointer dereference").names.length) < _n : Bool)) {
                    _removedFields = true;
                };
                _keepField = (((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L94"
            if (_keepField) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L95"
                if (_export) {
                    //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L96"
                    stdgo._internal.go.ast.Ast__filtertype._filterType((@:checkr _f ?? throw "null pointer dereference").type, _filter, _export);
                };
                _list[(_j : stdgo.GoInt)] = _f;
                //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L99"
                _j++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L102"
        if ((_j < (_list.length) : Bool)) {
            _removedFields = true;
        };
        (@:checkr _fields ?? throw "null pointer dereference").list = (_list.__slice__((0 : stdgo.GoInt), _j) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>);
        //"file:///home/runner/.go/go1.21.3/src/go/ast/filter.go#L106"
        return _removedFields;
    }
