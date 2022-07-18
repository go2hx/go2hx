package;

import sys.io.Process;

typedef ProcessData = {proc:Process, data:Dynamic, runtimeBool:Bool, command:String, stamp:Float};

class ProcessPool {
	var pool:Array<ProcessData> = [];
	var queue:Array<{command:String, data:Dynamic, runtimeBool:Bool}> = [];
	var count = 0;

	public var complete:(code:Int, proc:Process, data:Dynamic, command:String, runtimeBool:Bool) -> Void = null;

	public function new(count) {
		this.count = count;
	}

	public function run(command:String, data:Dynamic, runtimeBool:Bool) {
		queue.push({command: command, data: data, runtimeBool: runtimeBool});
		get();
	}

	private function get() {
		if (count < pool.length || queue.length == 0)
			return;
		final obj = queue.pop();
		pool.push({
			proc: new Process(obj.command),
			data: obj.data,
			runtimeBool: obj.runtimeBool,
			command: obj.command,
			stamp: haxe.Timer.stamp(),
		});
	}

	var removal = [];

	public function update() {
		if (pool.length == 0)
			return;
		removal = [];
		for (i in 0...pool.length) {
			var code = pool[i].proc.exitCode(false);
			if (code == null) {
				final stamp = haxe.Timer.stamp() - pool[i].stamp;
				if (stamp > 60) {
					code = -1;
					pool[i].proc.kill();
				} else {
					continue;
				}
			}
			complete(code, pool[i].proc, pool[i].data, pool[i].command, pool[i].runtimeBool);
			removal.push(pool[i]);
		}
		for (obj in removal) {
			pool.remove(obj);
			obj.proc.close();
			get();
		}
	}
}
