package stdgo._internal.go.types;
function _hasBreak(_s:stdgo._internal.go.ast.Ast_stmt.Stmt, _label:stdgo.GoString, _implicit:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L111"
        {
            final __type__ = _s;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_badstmt.BadStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_declstmt.DeclStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_emptystmt.EmptyStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_exprstmt.ExprStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_sendstmt.SendStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_incdecstmt.IncDecStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_assignstmt.AssignStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_gostmt.GoStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>)) || stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>))) {
                var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_labeledstmt.LabeledStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L121"
                return stdgo._internal.go.types.Types__hasbreak._hasBreak((@:checkr _s ?? throw "null pointer dereference").stmt, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_branchstmt.BranchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L124"
                if ((@:checkr _s ?? throw "null pointer dereference").tok == ((61 : stdgo._internal.go.token.Token_token.Token))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L125"
                    if (({
                        final value = (@:checkr _s ?? throw "null pointer dereference").label;
                        (value == null || (value : Dynamic).__nil__);
                    })) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L126"
                        return _implicit;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L128"
                    if ((@:checkr (@:checkr _s ?? throw "null pointer dereference").label ?? throw "null pointer dereference").name == (_label)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L129"
                        return true;
                    };
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L134"
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").list, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ifstmt.IfStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L137"
                if ((stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), _implicit) || ((@:checkr _s ?? throw "null pointer dereference").else_ != null && stdgo._internal.go.types.Types__hasbreak._hasBreak((@:checkr _s ?? throw "null pointer dereference").else_, _label?.__copy__(), _implicit) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L139"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_caseclause.CaseClause>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L143"
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").body, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_switchstmt.SwitchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L146"
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L147"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_typeswitchstmt.TypeSwitchStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L151"
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L152"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commclause.CommClause>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L156"
                return stdgo._internal.go.types.Types__hasbreaklist._hasBreakList((@:checkr _s ?? throw "null pointer dereference").body, _label?.__copy__(), _implicit);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_selectstmt.SelectStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L159"
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L160"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_forstmt.ForStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L164"
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L165"
                    return true;
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>))) {
                var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_rangestmt.RangeStmt>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L169"
                if (((_label != (stdgo.Go.str() : stdgo.GoString)) && stdgo._internal.go.types.Types__hasbreak._hasBreak(stdgo.Go.asInterface((@:checkr _s ?? throw "null pointer dereference").body), _label?.__copy__(), false) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L170"
                    return true;
                };
            } else {
                var _s:stdgo._internal.go.ast.Ast_stmt.Stmt = __type__ == null ? (null : stdgo._internal.go.ast.Ast_stmt.Stmt) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L113"
                stdgo._internal.go.types.Types__unreachable._unreachable();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L174"
        return false;
    }
