package typer;

import haxe.macro.Expr;
import haxe.io.Path;
import typer.Typer;
import typer.Package;
import shared.Util;


function typeFile(file:GoAst.FileType, module:HaxeAst.Module, recvFunctions:Array<RecvFunction>, pkg:Intermediate.Package, info:Info):HaxeAst.HaxeFileType {
    file.location = Path.normalize(file.location);
    var data:HaxeAst.HaxeFileType = {
        name: file.path,
        imports: [],
        defs: [],
        location: file.location,
        isMain: module.isMain,
    };
    // info = new Info(info.global);
    info.locals.clear();
    info.localUnderlyingNames.clear();
    info.data = data;
    final pkgDoc = getDocComment(file);
    var declFuncs:Array<GoAst.FuncDecl> = [];
    var declGens:Array<GoAst.GenDecl> = [];
    for (decl in file.decls) {
        switch decl.id {
            case "GenDecl":
                declGens.push(decl);
            case "FuncDecl":
                var decl:GoAst.FuncDecl = decl;
                if (decl.name.name != "_")
                    declFuncs.push(decl);
            default:
        }
    }
    for (gen in declGens) {
        for (spec in gen.specs) {
            if (spec == null)
                continue;
            switch spec.id {
                case "ImportSpec":
                    typeImport(spec, info);
                case "TypeSpec":
                    final spec:GoAst.TypeSpec = spec;
                    if (spec.type.id == "InterfaceType") { // priority
                        if (spec.name.name != "_")
                            info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
                    }
            }
        }
    }
    for (gen in declGens) {
        for (spec in gen.specs) {
            if (spec == null)
                continue;
            switch spec.id {
                case "TypeSpec":
                    final spec:GoAst.TypeSpec = spec;
                    if (spec.type.id == "StructType") { // priority
                        if (spec.name.name != "_") {
                            // trace(spec.name.name);
                            if (spec.name.name.indexOf(":") != -1) {
                                final index = spec.name.name.indexOf(":");
                                final key = spec.name.name.substr(0, index);
                                // trace(key);
                                spec.name.name = spec.name.name.substr(index + 1);
                                // need to push the type in order to do a replace later at the decleration within a function body
                                info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
                                if (!info.global.localSpecs.exists(key)) {
                                    info.global.localSpecs[key] = [];
                                }
                                // trace(key, spec.name.name);
                                info.global.localSpecs[key].push(spec);
                                gen.specs.remove(spec);
                            } else {
                                info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
                            }
                        }
                    }
            }
        }
    }
    var typeSpecNames:Array<String> = [];
    for (gen in declGens) {
        for (spec in gen.specs) { // 2nd pass
            if (spec == null)
                continue;
            if (spec.id == "TypeSpec" && spec.type.id != "InterfaceType" && spec.type.id != "StructType") { // all other specs
                if (spec.name.name != "_" && typeSpecNames.indexOf(spec.name.name) == -1) {
                    typeSpecNames.push(spec.name.name);
                    info.data.defs.push(typer.specs.Spec.typeSpec(spec, info, gen.tok == FUNC));
                }
            }
        }
    }
    var values = [];
    // trace(declGens.length);
    for (gen in declGens) {
        // variables after so that all types can be referenced by a value and have it exist.
        info.lastValue = null;
        info.lastType = null;
        final constant = gen.tok == CONST;
        for (spec in gen.specs) {
            if (spec == null)
                continue;
            switch spec.id {
                case "ValueSpec":
                    final spec:GoAst.ValueSpec = spec;
                    values = values.concat(typer.specs.Value.typeValue(spec, info, pkg, constant));
                default:
            }
        }
    }

    var valuesSorted = [];
    for (name in pkg.varOrder) {
        for (value in values) {
            if (value.name == name) {
                if (value.pos != null) {
                    for (value2 in values.copy()) {
                        if (value2.pos != null && value2.pos.min == value.pos.min) {
                            values.remove(value2);
                            valuesSorted.push(value2);
                        }
                    }
                }
                values.remove(value);
                if (!valuesSorted.contains(value))
                    valuesSorted.push(value);
                break;
            }
        }
    }
    if (pkg.varOrder.length > 0) {
        final vars:Array<Var> = [];
        for (i in 0...pkg.varOrder.length) {
            final o = pkg.varOrder[i];
            vars.push({name: "__tmp__" + i, expr: macro $i{splitDepFullPathName(o, info)}});
        }
        
        info.global.initBlock.push(toExpr(EVars(vars)));
    }
    if (values.length > 0) {
        // trace("unsorted values left: " + values.length);
        valuesSorted = values.concat(valuesSorted);
    }
    data.defs = valuesSorted.concat(data.defs);

    for (key => specs in info.global.localSpecs) {
        for (spec in specs) {
            final spec = typer.specs.Spec.typeSpec(spec, info, true);
            for (i in 0...info.data.defs.length) {
                if (info.data.defs[i].name == spec.name) {
                    info.data.defs[i] = spec;
                    break;
                }
            }
        }
    }

    for (decl in declFuncs) { // parse function bodies last
        if (decl.recv != null && decl.recv.list.length > 0) {
            recvFunctions.push({decl: decl, path: file.path});
            continue;
        }
        var func = typer.decls.Function.typeFunction(decl, info);
        if (func != null)
            data.defs.push(func);
    }

    // patch system to add functions
    for (key => expr in codegen.Patch.addFuncs) {
        final index = key.indexOf(":");
        final path = key.substr(0, index);
        if (path == info.global.module.path) {
            final funcName = key.substr(index + 1);
            if (funcName == "_init") {
                switch expr.expr {
                    case EBlock(exprs):
                        info.global.initBlock = info.global.initBlock.concat(exprs);
                    default:
                        info.global.initBlock.push(expr);
                }
                continue;
            }
            data.defs.push({
                name: funcName,
                pos: null,
                fields: [],
                pack: [],
                kind: TDField(FFun({args: [], expr: expr}), []),
            });
            codegen.Patch.addFuncs.remove(key);
        }
    }
    for (key => def in codegen.Patch.addTypeDefs) {
        final index = key.indexOf(":");
        final path = key.substr(0, index);
        if (path == info.global.module.path) {
            final defName = key.substr(index + 1);
            data.defs.push(def);
            codegen.Patch.addTypeDefs.remove(key);
        }
    }

    // init system
    if (info.global.initBlock.length > 0) {
        // info.global.initBlock.unshift(macro trace(stdgo._internal.internal.type.Type.names));
        var block = toExpr(EBlock(info.global.initBlock));
        final pathString = makeString(info.global.path);
        if (info.global.varTraceBool) {
            block = macro {
                trace("start init func: " + $pathString);
                $block;
                trace("end init func: " + $pathString);
            }
        }
        block = mapReturnToThrow(block);
        // trace(module.path,module.name);
        data.defs.push({
            name: "__init_go2hx__",
            pos: null,
            pack: [],
            fields: [],
            meta: [{name: ":keep", pos: null}],
            kind: TDField(FVar(null, macro {
                try
                    $block
                catch (__exception__)
                    if (__exception__.message != "__return__")
                        throw __exception__;
                true;
            })),
        });
    }

    if (pkgDoc != "")
        data.defs.unshift({
            name: "__go2hxdoc__package",
            pack: [],
            pos: null,
            fields: [],
            doc: pkgDoc,
            kind: TDField(FVar(TPath({name: "Bool", pack: []})), [APrivate]),
        });
    return data;
}