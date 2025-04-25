package typer;

import haxe.macro.Expr as MacroExpr;

function typeAST(data:GoAst.DataType, instance:Compiler.CompilerInstanceData):Array<HaxeAst.Module> {
	var list:Array<HaxeAst.Module> = [];
	final hashMap:Map<UInt, Dynamic> = [];
	for (obj in data.typeList)
		hashMap[obj.hash] = obj;
	// module system
	for (pkg in data.pkgs) {
		if (pkg.files == null)
			continue;
		list.push(Package.typePackage(pkg, instance, hashMap));
	}
	return list;
}

@:structInit
class FieldType {
	public var name:String;
	public var type:Ref<GoType>;
	public var tag:String;
	public var embedded:Bool;
	public var optional:Bool;

	public function new(name, type, tag, embedded, optional) {
		this.name = name;
		this.type = type;
		this.tag = tag;
		this.embedded = embedded;
		this.optional = optional;
	}

	public function toString():String {
		return '$name opt: $optional';
	}
}

private typedef Ref<T> = {
	function get():T;
}

class Global {
	public var localSpecs:Map<String, Array<GoAst.Spec>> = [];
	public var gotoSystem:Bool = false;
	public var recoverBool:Bool = false;
	public var deferBool:Bool = false;
	public var debugBool:Bool = false;
	public var varTraceBool:Bool = false;
	public var funcTraceBool:Bool = false;
	public var stackBool:Bool = false;
	public var initBlock:Array<MacroExpr> = [];
	public var path:String = "";
	public var filePath:String = "";
	public var module:HaxeAst.Module = null;
	public var noCommentsBool:Bool = false;
	public var renameClasses:Map<String, String> = [];
	public var externBool:Bool = false;
	public var root:String = "";
	public var hashMap:Map<UInt, Dynamic> = [];

	public inline function new() {}

	public function copy():Global {
		var g = new Global();
		g.localSpecs = localSpecs;
		g.initBlock = initBlock.copy();
		g.noCommentsBool = noCommentsBool;
		g.renameClasses = renameClasses;
		g.path = path;
		g.module = module;
		g.filePath = filePath;
		g.varTraceBool = varTraceBool;
		g.debugBool = debugBool;
		g.funcTraceBool = funcTraceBool;
		g.stackBool = stackBool;
		g.root = root;
		g.hashMap = hashMap;
		return g;
	}
}

class Info {
	public var blankCounter:Int = 0;
	public var restricted:Array<String> = [];
	public var thisName:String = "";
	public var funcName:String = "";
	public var returnNames:Array<String> = [];
	public var returnType:ComplexType = null;
	public var returnNamed:Bool;
	public var printGoCode:Bool = false;
	public var returnTypes:Array<GoType> = [];
	public var returnComplexTypes:Array<ComplexType> = [];
	public var returnInterfaceBool:Array<Bool> = [];
	public var className:String = "";
	public var lastValue:GoAst.Expr = null;
	public var lastType:GoType = null;
	public var data:HaxeAst.HaxeFileType;
	public var switchTag:MacroExpr = null;
	public var switchIndex:Int = 0;
	public var switchTagType:GoType = null;
	public var localIdents:Array<String> = [];

	public var renameIdents:Map<String, String> = []; // identifiers
	public var classNames:Map<String, String> = []; // class names named types
	public var renameClasses:Map<String, String> = []; // class names i.e TPath

	public var locals:Map<UInt, GoType> = [];
	public var localUnderlyingNames:Map<String, GoType> = [];

	public var global = new Global();

	public function new(?global) {
		if (global != null)
			this.global = global;
	}

	public inline function copy() {
		var info = new Info();
		info.blankCounter = blankCounter;
		info.returnTypes = returnTypes.copy();
		info.returnComplexTypes = returnComplexTypes.copy();
		info.returnNames = returnNames.copy();
		info.returnType = returnType;
		info.returnNamed = returnNamed;
		info.funcName = funcName;
		info.className = className;
		info.data = data;
		info.switchIndex = switchIndex;
		info.global = global; // .copy(); // imports, types
		info.renameIdents = renameIdents.copy();
		info.localIdents = localIdents.copy();
		info.classNames = classNames.copy();
		info.renameClasses = renameClasses.copy();
		info.locals = locals.copy();
		info.localUnderlyingNames = localUnderlyingNames.copy();
		return info;
	}

	public function panic():String {
		return "panic: " + global.filePath + ":" + global.path + ":" + global.module.name + ":" + className + ":" + funcName + ":\n";
	}
}

// filepath of export.json also stored here
// @:formatter off

var printer = new codegen.Printer();
