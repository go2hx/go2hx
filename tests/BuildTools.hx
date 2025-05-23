
function libTarget(target:String):String {
	return switch target {
		case "cpp", "cs": '-lib hx$target';
		case "jvm", "java": "-lib hxjava";
		default:
			"";
	}
}

function buildTarget(target:String, out:String, ?main:String, ?args:Array<String>):String {
	return switch target {
		case "hl": '--hl $out';
		case "jvm", "cpp", "cs", "js", "lua", "python", "php", "neko": '--$target $out';
		case "interp": if (main != null && args != null) {
				'--run $main ' + args.join(" ");
			} else {
				"--interp";
			}
		default:
			throw "unknown target: " + target;
	}
}

function runTarget(target:String, out:String, args:Array<String>, main:String):String {
	final index = main.lastIndexOf(".");
	if (index != -1)
		main = main.substr(index + 1);
	var s = switch target {
		case "interp":
			"";
		case "cpp", "cs":
			"./" + out + "/" + main;
		case "jvm":
			'java -jar $out';
		case "python":
			if (Sys.systemName() == "Mac") {
				'python3 $out';
			} else {
				'python $out';
			}
		case "hl", "neko", "lua", "php":
			'$target $out';
		case "js":
			// --stack-size set because bytes.growSize Maximum call stack size exceeded
			'node --stack-size=65500 $out';
		default:
			throw "unknown target: " + target;
	};
	if (args != null && args.length > 0)
		s += " " + args.join(" ");
	return s;
}

function targetLibs(target:String):String {
	return switch target {
		case "jvm": "-lib hxjava";
		case "cs": "-lib hxcs";
		case "cpp": "-lib hxcpp";
		case "js": "-lib hxnodejs";
		default:
			"";
	}
}