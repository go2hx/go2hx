package stdgo._internal.internal;

import haxe.macro.Context;
import haxe.macro.Compiler;

#if macro
var outputMap:Map<String, String> = [];
var output:String = "";

function isVald(pack:Array<String>, name:String):Bool {
	if (pack.length > 0) {
		switch pack[0] {
			case "haxe", "stdgo", "hl", "eval", "js", "java", "cpp", "cs", "python", "lua", "sys":
				return false; // don't include haxe std classes for generation
		}
	}
	switch name {
		case "String", "Reflect", "Std", "Math", "EReg", "EnumValue_Impl_", "IntIterator", "ArrayAccess", "StringBuf", "StringTools", "Sys", "Type",
			"Any_Impl_", "Array", "Date", "Lambda", "SysError", "Info", "Global", "Typer_Fields_", "UInt_Impl_", "Printer":
			return false;
	}
	return true;
}

function build() {
	trace("Generating Go externs");
	Context.onGenerate(types -> {
		for (type in types) {
			var modulePath:String = ""; // module path
			output = "";
			switch type {
				case TInst(t, params):
					var t = t.get();
					if (!isVald(t.pack, t.name))
						continue;
					modulePath = t.module;
					switch t.kind {
						case KModuleFields(module):
							var fields = t.statics.get(); // static variables and functions
							for (field in fields) {
								switch field.kind {
									case FMethod(k): // function
										switch k {
											case MethNormal, MethInline:
												printFunc(field);
											default:
										}
									case FVar(read, write): // var or const
										printVar(field);
									default:
								}
							}
						case KNormal: // interface or class
							if (t.isInterface) {
								printInterface(t);
							} else {
								printStruct(t);
							}
						default:
					}
				case TType(t, params): // typedef
					var t = t.get();
					if (!isVald(t.pack, t.name))
						continue;
					modulePath = t.module;
				default:
					continue;
			}
			// print out
			if (!outputMap.exists(modulePath))
				outputMap[modulePath] = "";
			outputMap[modulePath] += output;
		}
		create();
	});
}

function create() {
	var output = Compiler.getOutput();
	if (output == "")
		output = ".";
	for (modulePath in outputMap.keys()) {
		var content = outputMap[modulePath];
		var path = StringTools.replace(modulePath, ".", "/");
		var index = path.lastIndexOf("/") + 1;
		var name = path.substr(index) + ".hx";
		path = path.substr(0, index);
		if (!sys.FileSystem.exists(path))
			sys.FileSystem.createDirectory(path);
		trace("output: " + output + " path: " + path + " name: " + name + " content: " + content);
		sys.io.File.saveContent(output + "/" + path + name, content);
	}
}

function printInterface(t:haxe.macro.Type.ClassType) {}

function printStruct(t:haxe.macro.Type.ClassType) {
	var content = "type " + t.name + " struct {\n";
	var interfaces = t.interfaces;
	var fields = t.fields.get();
	for (field in fields) {}
	content += "}\n";
	output += content;
}

function printVar(t:haxe.macro.Type.ClassField) {}
function printFunc(t:haxe.macro.Type.ClassField) {}
#end
