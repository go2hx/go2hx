// ! -lib hxnodejs
package;

import Gen.create;
import Typer.DataType;
import haxe.Json;
import haxe.Resource;
import haxe.io.Bytes;
import haxe.io.Path;
import hl.uv.Loop;
import hl.uv.Stream;
import hl.uv.Tcp;
import stdgo.StdGoTypes;
import sys.FileSystem;
import sys.io.File;
import sys.io.Process;

final cwd = Sys.getCwd();
var exportBool:Bool = false;
var target:String = "";
var targetFolder:Bool = false;
final loop = hl.uv.Loop.getDefault();
final server = new Tcp(loop);
var clients:Array<Client> = [];
var processes:Array<Process> = [];
var onComplete:(modules:Array<Typer.Module>, data:Dynamic) -> Void = null;
var mainThread = sys.thread.Thread.current();

@:structInit
class Client {
	public var stream:Stream;
	public var runnable:Bool = true; // start out as true
	public var data:Dynamic = null;
	public var id:Int = 0;

	public function new(stream, id) {
		this.stream = stream;
		this.id = id;
	}
}

function main() {
	run(Sys.args());
}

function run(args:Array<String>) {
	// var stamp = haxe.Timer.stamp();
	setup(0, 1, () -> {
		onComplete = (modules, data) -> {
			// Sys.println("time: " + (haxe.Timer.stamp() - stamp));
			close();
		};
		if (args.length <= 1) {
			Repl.init();
		} else {
			compile(args);
		}
	});
	while (true)
		update();
}

function update() {
	loop.run(NoWait);
	mainThread.events.progress();
	Sys.sleep(0.06); // wait
}

function close() {
	#if debug
	processes[0].kill();
	try {
		while (true)
			Sys.println(processes[0].stdout.readLine());
	} catch (_) {}
	#end
	for (process in processes)
		process.close();
	for (client in clients) {
		client.stream.write(Bytes.ofString("exit"));
		client.stream.close();
	}
	server.close();
	Sys.exit(0);
}

function setup(port:Int = 0, processCount:Int = 1, allAccepted:Void->Void = null, outputPath:String = "golibs") {
	if (port == 0)
		port = 6114 + Std.random(200); // random range in case port is still bound from before
	Typer.excludes = Json.parse(File.getContent("./excludes.json")).excludes;
	Typer.stdgoList = Json.parse(File.getContent("./stdgo.json")).stdgo;

	for (i in 0...processCount) {
		processes.push(new sys.io.Process("./go4hx", ['$port'], false));
	}
	Sys.println('listening on port: $port');
	server.bind(new sys.net.Host("127.0.0.1"), port);
	server.noDelay(true);
	var index = 0;
	server.listen(0, () -> {
		final client:Client = {stream: server.accept(), id: index++};
		clients.push(client);
		var pos = 0;
		var buff:Bytes = null;
		function reset() {
			client.runnable = true;
			pos = 0;
			buff = null;
		}
		client.stream.readStart(bytes -> {
			if (buff == null) {
				final len:Int = haxe.Int64.toInt(bytes.getInt64(0));
				buff = Bytes.alloc(len);
				bytes = bytes.sub(8, bytes.length - 8);
			}
			buff.blit(pos, bytes, 0, bytes.length);
			pos += bytes.length;
			if (pos == buff.length) {
				var exportData:DataType = Json.parse(buff.toString());
				var modules = [];
				modules = Typer.main(exportData);
				Sys.setCwd(localPath);
				outputPath = Path.addTrailingSlash(outputPath);
				var libs:Array<String> = [];
				reset();
				for (module in modules) {
					if (global && !module.isMain) {
						Sys.setCwd(cwd);
						var name = module.name;
						var libPath = "libs/" + name + "/";
						create(libPath, module);
						Sys.command('haxelib dev $name $libPath');
						if (libs.indexOf(name) == -1)
							libs.push(name);
					} else {
						Gen.create(outputPath, module);
					}
				}
				onComplete(modules, client.data);
			}
		});
		if (index == processCount && allAccepted != null)
			allAccepted();
	});
}

var global = false;
var printGoCode = false;
var localPath = "";
var addConnect = false;
var addOutput = false;
var helpBool:Bool = false;

function compile(args:Array<String>, data:Dynamic = null):Bool {
	if (localPath == "")
		localPath = args[args.length - 1];

	var httpsString = "https://";
	for (i in 0...args.length - 1) {
		var path = args[i];
		if (StringTools.startsWith(path, httpsString)) {
			path = path.substr(httpsString.length);
			args[i] = path;
		}
		if (Path.extension(path) == "go" || path.charAt(0) == "." || path.indexOf("/") == -1)
			continue;
		var command = 'go get $path';
		Sys.command(command);
	}
	return write(args, data);
}

function write(args:Array<String>, data:Dynamic):Bool {
	for (client in clients) {
		if (!client.runnable)
			continue;
		client.data = data;
		client.stream.write(Bytes.ofString(args.join(" ")));
		client.runnable = false;
		return true;
	}
	return false;
}
