package typer;

import typer.Typer;
import haxe.io.Path;
import haxe.macro.Expr;
import shared.Util;

/**
 * Intermediate Package form
 */
 typedef IntermediatePackageType = {
	name:String,
	path:String,
	isMain:Bool,
	info:Info,
	files:Array<GoAst.FileType>,
	varOrder:Array<String>,
	declFuncs:Array<GoAst.FuncDecl>,
	declGens:Array<GoAst.GenDecl>,
}

function typePackage(pkg:GoAst.PackageType, instance:Compiler.CompilerInstanceData, hashMap:Map<UInt, Dynamic>):HaxeAst.Module {
    final pkg = typePackageAnalyze(pkg, instance, hashMap);
    return typePackageEmit(pkg);
}

function typePackageEmit(pkg:typer.Package.IntermediatePackageType):HaxeAst.Module {
    final module:HaxeAst.Module = {
        path: pkg.path,
        files: [],
        isMain: pkg.isMain,
        name: pkg.name,
    };
    final info = pkg.info;
    info.global.module = module;
    var recvFunctions:Array<RecvFunction> = [];

    // 2nd pass main typing
    for (file in pkg.files) { 
        if (file.decls == null)
            continue;
        final data = File.typeFile(file, module, recvFunctions, pkg, info);
        // add file to module
        module.files.push(data);
    }
    // process recv functions check against all TypeSpecs
    for (file in module.files) {
        final defs = file.defs.copy();
        for (def in defs) {
            if (def.name == "__go2hxdoc__package")
                continue;
            if (StringTools.endsWith(def.name, "_asinterface")
                || StringTools.endsWith(def.name, "_asInterface")
                || StringTools.endsWith(def.name, "_static_extension"))
                continue;
            var local:Array<{func:GoAst.FuncDecl, sel:String, recvName:String}> = [];
            final names:Array<{name:String, sel:String, recvName:String}> = [{name: def.name, sel: "", recvName: ""}];
            final methods:Array<Field> = [];
            for (recv in recvFunctions) {
                if (file.isMain && file.name != recv.path)
                    continue;
                final recvName = typer.decls.Function.getRecvName(recv.decl.recv.list[0].type, info);
                // trace(recvName, names);
                for (name in names) {
                    if (recvName == name.name) {
                        local.push({func: recv.decl, sel: name.sel, recvName: recvName});
                    }
                }
            }
            var restrictedNames = [for (func in local)typer.exprs.Ident.nameIdent(func.func.name.name, false, false, info)]; // restrict function names
            var isNamed = false;
            if (def != null && def.meta != null && def.meta[0] != null && def.meta[0].name == ":named")
                isNamed = true;
            // remove duplicated names
            for (i in 0...local.length) {
                if (local[i] == null || local[i].func.recv != null)
                    continue;
                for (j in 0...local.length) {
                    if (i == j)
                        continue;
                    if (local[j] == null || local[j].func.recv != null)
                        continue;
                    final name = local[i].func.name.name;
                    final name2 = local[j].func.name.name;
                    if (name == name2) {
                        local.remove(local[i]);
                        break;
                    }
                }
            }

            switch def.kind {
                case TDField(_, _):
                    continue; // skip if var or function for wrapper
                default:
            }
            final ct:ComplexType = TPath({
                name: splitDepFullPathName(def.name + "Pointer", info),
                pack: [],
                params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []}))),
            });
            // trace(new haxe.macro.Printer().printComplexType(ct));
            var embedded = false;
            for (field in def.fields) {
                if (field.meta != null) {
                    for (meta in field.meta) {
                        if (meta.name == ":embedded") {
                            embedded = true;
                            break;
                        }
                    }
                    if (embedded)
                        break;
                }
            }
            var isInterface = false;
            if (def.meta != null) {
                for (meta in def.meta) {
                    if (meta.name == ":interface")
                        isInterface = true;
                }
            }
            if (isInterface)
                continue;
            final staticExtensionName = def.name + "_static_extension";
            final wrapperName = def.name + "_asInterface";
            final fieldWrapper = [info.global.filePath, wrapperName];
            final globalPath = getGlobalPath(info);
            if (globalPath != "")
                fieldWrapper.unshift(globalPath);
            final staticExtension:TypeDefinition = {
                name: staticExtensionName,
                pos: null,
                pack: [],
                kind: TDClass(),
                fields: [],
                isExtern: true,
                meta: [
                    {name: ":keep", pos: null},
                    {name: ":allow", pos: null, params: [toExpr(EConst(CIdent(fieldWrapper.join("."))))]}
                ],
            };
            // asInterface
            final wrapper = HaxeAst.createWrapper(wrapperName, ct);
            wrapper.isExtern = true;
            wrapper.params = def.params;
            if (!HaxeAst.alreadyExistsTypeDef(wrapper, info))
                file.defs.push(wrapper);
            // type alias pointer
            final aliasPointerName = def.name + "Pointer";
            final aliasPointer:TypeDefinition = {
                name: aliasPointerName,
                pos: null,
                pack: [],
                kind: TDAlias(TPath({
                    name: "Pointer",
                    pack: ["stdgo"],
                    params: [
                        TPType(TPath({
                            pack: [],
                            name: splitDepFullPathName(def.name, info),
                            params: def.params?.map(param -> TPType(TPath({name: param.name, pack: []})))
                        }))
                    ]
                })),
                params: def.params,
                fields: [],
                isExtern: true,
                meta: [{name: ":keep", pos: null}, {name: ":follow", pos: null},],
            };
            if (!HaxeAst.alreadyExistsTypeDef(aliasPointer, info))
                info.data.defs.push(aliasPointer);
            // files check against all TypeSpecs
            if (def.meta != null) { // prevents adding @:using or other metadata to codegen.Patch.replace types
                def.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
            }
            aliasPointer.meta.push({name: ":using", params: [macro $i{splitDepFullPathName(staticExtensionName, info)}], pos: null});
            if (!HaxeAst.alreadyExistsTypeDef(staticExtension, info))
                file.defs.push(staticExtension);
            var embedded = false;
            for (field in def.fields) { // embedded
                if (field.meta != null) {
                    embedded = false;
                    for (meta in field.meta) {
                        if (meta.name == ":embedded") {
                            embedded = true;
                            break;
                        }
                    }
                    if (embedded) { // embedded method already exists create it for staticExtension
                        switch field.kind {
                            case FProp(_, _, TFunction(args, ret), _):
                                throw "use this prop";
                                final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
                                final fun:haxe.macro.Expr.Function = {args: []};
                                fun.args = [
                                    for (i in 0...args.length)
                                        ({
                                            name:'_$i', type:args[i]
                                        } : haxe.macro.Expr.FunctionArg)
                                ];
                                fun.args.unshift({
                                    name: "__self__",
                                    type: t,
                                    meta: [],
                                });
                                fun.ret = ret;
                                // final expr = {expr: fun.expr.expr, pos: null};
                                final fieldName = field.name;
                                final args = fun.args.slice(1).map(a -> macro $i{a.name});
                                switch fun.args[fun.args.length - 1].type {
                                    case TPath(p):
                                        if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[
                                            for (i in $e{
                                                args[args.length - 1]
                                            })
                                                i
                                        ];
                                    default:
                                }
                                fun.expr = macro @:_5 __self__.$fieldName($a{args});
                                if (!HaxeAst.isVoid(ret))
                                    fun.expr = macro return ${fun.expr};
                                if (field.meta == null)
                                    field.meta = [];
                                field.meta.push({name: ":embeddeddeffieldsfprop", pos: null});
                                // embedded named
                                HaxeAst.addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
                                    true, def.params != null
                                    && def.params.length > 0);
                            // fun.args = fun.args.slice(1);
                            // fun.expr = expr;
                            case FFun(fun):
                                final t = TPath({name: splitDepFullPathName(def.name, info), pack: []});
                                if (field.meta == null)
                                    field.meta = [];
                                field.meta.push({name: ":embeddededffieldsffun", pos: null});
                                final expr = {expr: fun.expr.expr, pos: null};
                                final fieldName = field.name.substr("_get".length);
                                final fun:haxe.macro.Expr.Function = {
                                    ret: fun.ret,
                                    args: fun.args,
                                    params: fun.params,
                                    expr: fun.expr,
                                }
                                switch fun.ret {
                                    case TFunction(args, ret):
                                        fun.args = [
                                            for (i in 0...args.length)
                                                ({
                                                    name:'_$i', type:args[i]
                                                } : haxe.macro.Expr.FunctionArg)
                                        ];
                                        fun.ret = ret;
                                    default:
                                        throw "fun.ret must be TFunction: " + fun.ret;
                                }
                                fun.args.unshift({
                                    name: "__self__",
                                    type: t,
                                    meta: [],
                                });
                                final args = fun.args.slice(1).map(a -> macro $i{a.name});
                                switch fun.args[fun.args.length - 1].type {
                                    case TPath(p):
                                        if (p.name == "Rest" && p.pack.length == 1 && p.pack[0] == "haxe") args[args.length - 1] = macro...[
                                            for (i in $e{
                                                args[args.length - 1]
                                            })
                                                i
                                        ];
                                    default:
                                }
                                fun.expr = macro @:_5 __self__.$fieldName($a{args});
                                switch expr.expr {
                                    case EReturn(_):
                                        fun.expr = macro return ${fun.expr};
                                    default:
                                }
                                // embedded named
                                HaxeAst.addLocalMethod(fieldName, field.pos, field.meta, field.doc, field.access, fun, staticExtension, wrapper,
                                    true, def.params != null
                                    && def.params.length > 0);
                                fun.args = fun.args.slice(1);
                                fun.expr = expr;
                            default:
                        }
                    }
                }
            }
            final funcs = [
                for (decl in local) {
                    var func = typer.decls.Function.typeFunction(decl.func, info, restrictedNames, isNamed, decl.sel, decl.recvName);
                    func;
                }
            ];
            for (func in funcs) {
                switch func.kind {
                    case TDField(kind, access):
                        switch kind {
                            case FFun(fun):
                                final patchName = info.global.module.path + "." + def.name + ":" + func.name;
                                /*final patch = codegen.Patch.list[patchName];
                                    if (patch != null) {
                                        fun.expr = patch;
                                        codegen.Patch.list.remove(patchName);
                                }*/
                                func.meta.push({name: ":tdfield", pos: null});
                                if (codegen.Patch.funcInline.indexOf(patchName) != -1 && access.indexOf(AInline) == -1)
                                    access.push(AInline);
                                // recv func named
                                HaxeAst.addLocalMethod(func.name, func.pos, func.meta, func.doc, access, fun, staticExtension, wrapper,
                                    true, def.params != null && def.params.length > 0);
                            default:
                        }
                    default:
                }
            }
        }
    }
    return module;
}

function setExtern(instance, pkg:GoAst.PackageType) {
    instance.externBool = false;
    if (stdgoList.indexOf(pkg.path) != -1) {
        if (externs.indexOf(pkg.path) != -1)
            instance.externBool = true;
    }
}


function typePackageAnalyze(pkg:GoAst.PackageType, instance:Compiler.CompilerInstanceData, hashMap:Map<UInt, Dynamic>):IntermediatePackageType {
    setExtern(instance, pkg);
    pkg.path = normalizePath(pkg.path);
    pkg.path = toHaxePath(pkg.path);

    final info = new Info();
    info.global.initBlock = [];
    info.printGoCode = instance.printGoCode;
    info.global.path = pkg.path;
    info.global.externBool = instance.externBool;
    info.global.debugBool = instance.debugBool;
    info.global.varTraceBool = instance.varTraceBool;
    info.global.funcTraceBool = instance.stackBool;
    info.global.stackBool = instance.stackBool;
    info.global.noCommentsBool = instance.noCommentsBool;
    //info.global.module = module;
    info.global.root = instance.root;

    info.global.hashMap = hashMap;
    final irPkg:IntermediatePackageType = {
        info: info,
        varOrder: [],
        declGens: [],
        declFuncs: [],
        path: pkg.path,
        name: pkg.name,
        files: pkg.files,
        isMain: pkg.name == "main",
    };
    

    if (pkg.order != null) {
        irPkg.varOrder = [];
        for (s in pkg.order) {
            if (s == "_")
                continue;
            irPkg.varOrder.push(formatHaxeFieldName(s,info));
        }
    } else {
        irPkg.varOrder = [];
    }

    for (file in pkg.files) {
        if (file.decls == null)
            continue;
        if (irPkg.isMain) {
            if (StringTools.endsWith(file.path, ".go"))
                file.path = file.path.substr(0, file.path.length - 3);
            file.path = importClassName(normalizePath(file.path)); // file naming
        } else {
            file.path = importClassName(normalizePath(pkg.path.substr(pkg.path.lastIndexOf(".") + 1)));
        }

        info.global.filePath = file.path;


        for (decl in file.decls) {
            switch decl.id {
                case "GenDecl":
                    irPkg.declGens.push(decl);
                case "FuncDecl":
                    var decl:GoAst.FuncDecl = decl;
                    irPkg.declFuncs.push(decl);
                default:
            }
        }
        for (decl in irPkg.declFuncs) {
            if (decl.recv == null || decl.recv.list == null || decl.recv.list.length == 0) {
                final name =typer.exprs.Ident.nameIdent(decl.name.name, false, true, info); // overwrite name
                info.localIdents.remove(name);
            }
        }
    }
    return irPkg;
}

typedef RecvFunction = {decl:GoAst.FuncDecl, path:String};