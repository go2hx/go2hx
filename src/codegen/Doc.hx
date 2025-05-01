package codegen;

import typer.Typer.Info;
import shared.Util;
import sys.io.File;

function getDocComment(doc:{doc:typer.GoAst.CommentGroup}, ?comment:{comment:typer.GoAst.CommentGroup}):String {
	var list:Array<String> = [];
	if (doc.doc != null && doc.doc.list != null) {
		var source = doc.doc.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	if (comment != null && comment.comment != null && comment.comment.list != null) {
		var source = comment.comment.list.join("\n");
		source = sanatizeComment(source);
		list.push(source);
	}
	return list.join("\n\n");
}

function getSource(value:{pos:Int, end:Int}, info:Info):String {
	if (!info.printGoCode || value.pos == value.end)
		return "";
	var source:String = "";
	try {
		source = File.getContent(info.data.location);
	} catch (e) {
		trace("error: " + e + " data: " + info.data.location);
		return "";
	}
	source = source.substring(value.pos, value.end);
	source = "\n" + source;
	source = sanatizeComment(source);
	return source;
}

function sanatizeComment(source:String):String {
	// sanatize comments
	if (source == "")
		return source;
	source = StringTools.replace(source, "/*", "");
	source = StringTools.replace(source, "*/", "");
	var lines = normalizeCLRF(source).split("\n");
	for (i in 0...lines.length) {
		if (lines[i].substr(0, 3) == "// ")
			lines[i] = lines[i].substr(3);
		if (lines[i].substr(0, 2) == "//")
			lines[i] = lines[i].substr(2);
	}
	lines = lines.map(line -> '* $line');
	return lines.join("\n");
}
